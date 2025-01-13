import 'package:blind_chicken/utils/logging.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/repositories/repositories.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

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
    if (state is ErrorAppointmentState) {
      emit(AppointmentState.loadErrorButton());
    } else {
      emit(const AppointmentState.load());
    }

    Map<int, List<DateTime>> time = {};
    int j = 0;
    List<DateTime> dateTime = [];
    DateTime dateTimeNow = DateTime.now();
    final boutiques = await _boutiquesRepository.getBoutiques(optic: 1);
    _updateDataService.boutiques = boutiques.data;

    if (boutiques.errorMessage?.isEmpty ?? false) {
      final sheduleDateTimeInfo =
          boutiques.data.first.sheduleDateTimeInfo[dateTimeNow.weekday - 1] ?? [];

      for (int i = 0; i < sheduleDateTimeInfo.length; i++) {
        if (dateTime.length < 8) {
          if (sheduleDateTimeInfo[i].hour > dateTimeNow.hour) {
            dateTime.add(
              dateTimeNow.copyWith(
                hour: sheduleDateTimeInfo[i].hour,
                minute: sheduleDateTimeInfo[i].minute,
              ),
            );
          } else {
            if (sheduleDateTimeInfo[i].hour == dateTimeNow.hour &&
                sheduleDateTimeInfo[i].minute > dateTimeNow.minute) {
              dateTime.add(
                dateTimeNow.copyWith(
                  hour: sheduleDateTimeInfo[i].hour,
                  minute: sheduleDateTimeInfo[i].minute,
                ),
              );
            }
          }

          time[j] = dateTime;
        } else {
          j++;
          dateTime = [];
        }
      }
      List<DateTime> dateTimeInfo = time[0] ?? [];

      dateTimeNow = DateTime(
        dateTimeNow.year,
        dateTimeNow.month,
        dateTimeNow.day,
        dateTimeInfo.isNotEmpty ? dateTimeInfo.first.hour : 0,
        dateTimeInfo.isNotEmpty ? dateTimeInfo.first.minute : 0,
      );
    }

    if (boutiques.errorMessage?.isNotEmpty ?? false) {
      emit(
        AppointmentState.error(
          errorMessage: MessageInfo.errorMessage,
        ),
      );
    } else {
      emit(
        AppointmentState.preloadDataCompleted(
          boutiques: boutiques.data,
          selectBoutique: boutiques.data.first,
          time: time,
          selectDateTime: dateTimeNow,
        ),
      );
    }
  }

  Future<void> _selectBoutique(
    SelectBoutiqueAppointmentEvent event,
    Emitter<AppointmentState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      Map<int, List<DateTime>> time = {};
      int j = 0;
      List<DateTime> dateTime = [];
      DateTime dateTimeNow = DateTime.now();

      final sheduleDateTimeInfo =
          event.selectBoutique.sheduleDateTimeInfo[initState.selectDateTime.weekday - 1] ?? [];

      for (int i = 0; i < sheduleDateTimeInfo.length; i++) {
        if (dateTime.length < 8) {
          if (sheduleDateTimeInfo[i].month == dateTimeNow.month &&
              sheduleDateTimeInfo[i].day == dateTimeNow.day) {
            if (sheduleDateTimeInfo[i].hour > dateTimeNow.hour) {
              dateTime.add(
                dateTimeNow.copyWith(
                  hour: sheduleDateTimeInfo[i].hour,
                  minute: sheduleDateTimeInfo[i].minute,
                ),
              );
            } else {
              if (sheduleDateTimeInfo[i].hour == dateTimeNow.hour &&
                  sheduleDateTimeInfo[i].minute > dateTimeNow.minute) {
                dateTime.add(
                  dateTimeNow.copyWith(
                    hour: sheduleDateTimeInfo[i].hour,
                    minute: sheduleDateTimeInfo[i].minute,
                  ),
                );
              }
            }
          } else {
            dateTime.add(
              dateTimeNow.copyWith(
                hour: sheduleDateTimeInfo[i].hour,
                minute: sheduleDateTimeInfo[i].minute,
              ),
            );
          }

          time[j] = dateTime;
        } else {
          j++;
          dateTime = [];
        }
      }
      List<DateTime> dateTimeInfo = time[0] ?? [];

      dateTimeNow = DateTime(
        dateTimeNow.year,
        dateTimeNow.month,
        dateTimeNow.day,
        dateTimeInfo.isNotEmpty ? dateTimeInfo.first.hour : 0,
        dateTimeInfo.isNotEmpty ? dateTimeInfo.first.minute : 0,
      );

      emit(initState.copyWith(
        selectBoutique: event.selectBoutique,
        time: time,
        selectDateTime: dateTimeNow,
      ));
    });
  }

  Future<void> _selectDateTime(
    SelectDateTimeAppointmentEvent event,
    Emitter<AppointmentState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      DateTime dateTimeNow = DateTime.now();
      Map<int, List<DateTime>> time = {};
      int j = 0;
      List<DateTime> dateTime = [];

      final sheduleDateTimeInfo =
          initState.selectBoutique.sheduleDateTimeInfo[event.selectDateTime.weekday - 1] ?? [];

      for (int i = 0; i < sheduleDateTimeInfo.length; i++) {
        if (dateTime.length < 8) {
          DateTime sheduleDateTime = sheduleDateTimeInfo[i];
          sheduleDateTime = DateTime(
            event.selectDateTime.year,
            event.selectDateTime.month,
            event.selectDateTime.day,
            sheduleDateTimeInfo[i].hour,
            sheduleDateTimeInfo[i].minute,
          );

          if (sheduleDateTime.month == dateTimeNow.month &&
              sheduleDateTime.day == dateTimeNow.day) {
            if (sheduleDateTime.hour > dateTimeNow.hour) {
              dateTime.add(sheduleDateTime);
            } else {
              if (sheduleDateTime.hour == dateTimeNow.hour &&
                  sheduleDateTime.minute > dateTimeNow.minute) {
                dateTime.add(sheduleDateTime);
              }
            }
          } else {
            dateTime.add(sheduleDateTime);
          }

          time[j] = dateTime;
        } else {
          j++;
          dateTime = [];
        }
      }
      logging(event.selectDateTime.toString(), stackTrace: StackTrace.current);

      List<DateTime> dateTimeInfo = time[0] ?? [];

      dateTimeNow = DateTime(
        event.selectDateTime.year,
        event.selectDateTime.month,
        event.selectDateTime.day,
        dateTimeInfo.isNotEmpty ? dateTimeInfo.first.hour : 0,
        dateTimeInfo.isNotEmpty ? dateTimeInfo.first.minute : 0,
      );

      emit(initState.copyWith(
        selectDateTime: dateTimeNow,
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
      logging(selectDateTime.toString(), stackTrace: StackTrace.current);
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
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
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
        } else {
          emit(initState.copyWith(
            isError: result.errorMessage.isNotEmpty,
            errorMessage: result.errorMessage,
            isLoadErrorButton: false,
          ));
        }
      } else {
        emit(const AppointmentState.authorization());
        emit(initState.copyWith(
          selectDateTime: initState.selectDateTime,
          isLoadErrorButton: false,
        ));
      }
    });
  }
}
