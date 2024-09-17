import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'doctor_appointment_bloc.freezed.dart';
part 'doctor_appointment_event.dart';
part 'doctor_appointment_state.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final BoutiquesRepository _boutiquesRepository;
  final UpdateDataService _updateDataService;
  final SharedPreferencesService _sharedPreferencesService;

  AppointmentBloc(
    this._boutiquesRepository,
    this._updateDataService,
    this._sharedPreferencesService,
  ) : super(const AppointmentState.init()) {
    on<AppointmentEvent>(
      (event, emit) => event.map<Future<void>>(
        preloadData: (event) => _preloadData(event, emit),
        selectBoutique: (event) => _selectBoutique(event, emit),
        selectDateTime: (event) => _selectDateTime(event, emit),
        selectTime: (event) => _selectTime(event, emit),
        createDoctorAppointment: (event) => _createDoctorAppointment(event, emit),
      ),
    );
  }

  Future<void> _preloadData(
    InitAppointmentEvent event,
    Emitter<AppointmentState> emit,
  ) async {
    emit(const AppointmentState.load());
    Map<int, List<DateTime>> time = {};
    int j = 0;
    List<DateTime> dateTime = [];
    DateTime dateTimeNow = DateTime.now();
    final boutiques = await _boutiquesRepository.getBoutiques();
    _updateDataService.boutiques = boutiques.data;

    final sheduleDateTimeInfo =
        boutiques.data.first.sheduleDateTimeInfo[dateTimeNow.weekday - 1] ?? [];

    for (int i = 0; i < sheduleDateTimeInfo.length; i++) {
      if (dateTime.length < 8) {
        dateTime.add(sheduleDateTimeInfo[i]);
        time[j] = dateTime;
      } else {
        j++;
        dateTime = [];
      }
    }
    dateTimeNow = DateTime(
      dateTimeNow.year,
      dateTimeNow.month,
      dateTimeNow.day,
      time[0]?.first.hour ?? 0,
      time[0]?.first.minute ?? 0,
    );

    emit(
      AppointmentState.preloadDataCompleted(
        boutiques: boutiques.data,
        selectBoutique: boutiques.data.first,
        time: time,
        selectDateTime: dateTimeNow,
      ),
    );
  }

  Future<void> _selectBoutique(
    SelectBoutiqueAppointmentEvent event,
    Emitter<AppointmentState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      Map<int, List<DateTime>> time = {};
      int j = 0;
      List<DateTime> dateTime = [];

      final sheduleDateTimeInfo =
          event.selectBoutique.sheduleDateTimeInfo[initState.selectDateTime.weekday - 1] ?? [];

      for (int i = 0; i < sheduleDateTimeInfo.length; i++) {
        if (dateTime.length < 8) {
          dateTime.add(sheduleDateTimeInfo[i]);
          time[j] = dateTime;
        } else {
          j++;
          dateTime = [];
        }
      }
      emit(initState.copyWith(
        selectBoutique: event.selectBoutique,
        time: time,
      ));
    });
  }

  Future<void> _selectDateTime(
    SelectDateTimeAppointmentEvent event,
    Emitter<AppointmentState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      Map<int, List<DateTime>> time = {};
      int j = 0;
      List<DateTime> dateTime = [];

      final sheduleDateTimeInfo =
          initState.selectBoutique.sheduleDateTimeInfo[event.selectDateTime.weekday - 1] ?? [];

      for (int i = 0; i < sheduleDateTimeInfo.length; i++) {
        if (dateTime.length < 8) {
          dateTime.add(sheduleDateTimeInfo[i]);
          time[j] = dateTime;
        } else {
          j++;
          dateTime = [];
        }
      }
      log(event.selectDateTime.toString());

      emit(initState.copyWith(
        selectDateTime: event.selectDateTime,
        time: time,
      ));
    });
  }

  Future<void> _selectTime(
    SelectTimeAppointmentEvent event,
    Emitter<AppointmentState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      DateTime selectDateTime = initState.selectDateTime;
      selectDateTime = DateTime(
        initState.selectDateTime.year,
        initState.selectDateTime.month,
        initState.selectDateTime.day,
        event.selectTime.hour,
        event.selectTime.minute,
      );
      log(selectDateTime.toString());
      emit(initState.copyWith(
        selectDateTime: selectDateTime,
      ));
    });
  }

  Future<void> _createDoctorAppointment(
    CreateDoctorAppointmentAppointmentEvent event,
    Emitter<AppointmentState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;

      if (isAuth) {
        final result = await _boutiquesRepository.createVc(
          uid: initState.selectBoutique.uidStore,
          date: initState.selectDateTime.toString(),
        );

        if (result.r == '1') {
          emit(
            AppointmentState.recordCreatedSuccessfully(
              name: result.name,
              date: result.date,
              time: result.time,
            ),
          );
        }
      } else {
        emit(const AppointmentState.authorization());
      }

      emit(initState.copyWith(
        selectDateTime: initState.selectDateTime,
      ));
    });
  }
}
