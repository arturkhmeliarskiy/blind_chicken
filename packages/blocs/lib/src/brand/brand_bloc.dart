import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';

part 'brand_bloc.freezed.dart';
part 'brand_event.dart';
part 'brand_state.dart';

class BrandBloc extends Bloc<BrandEvent, BrandState> {
  final ConstatntsInfo _constatntsInfo;
  Map<String, List<String>> listKeyBrands = {};

  BrandBloc(
    this._constatntsInfo,
  ) : super(const BrandState.init()) {
    on<BrandEvent>(
      (event, emit) => event.map<Future<void>>(
        preloadData: (event) => _init(event, emit),
        switchTypePeople: (event) => _switchTypePeople(event, emit),
        search: (event) => _search(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitBrandEvent event,
    Emitter<BrandState> emit,
  ) async {
    List<String> listTypePeople = [
      'Все',
      'Женщинам',
      'Мужчинам',
      'Детям',
    ];
    List<String> allBrands = [];

    allBrands = [
      ..._constatntsInfo.brandsWoman,
      ..._constatntsInfo.brandsMan,
      ..._constatntsInfo.brandsChilren,
    ];
    List<CountBrand> listCountBrand = [];
    Map<String, List<String>> listBrands = {};

    allBrands.sort();
    allBrands = allBrands.toSet().toList();
    for (int i = 0; i < _constatntsInfo.listAlphabetAndNumber.length; i++) {
      final brands = _getListBrand(_constatntsInfo.listAlphabetAndNumber[i], allBrands);
      if (brands.isNotEmpty) {
        listBrands[_constatntsInfo.listAlphabetAndNumber[i]] = brands;
        final calculatePosition = _getCalculatePosition(_constatntsInfo.listAlphabetAndNumber[i]);
        listCountBrand.add(calculatePosition);
      }
    }

    emit(
      BrandState.preloadDataCompleted(
        listTypePeople: listTypePeople,
        allBrands: allBrands,
        listAlphabetAndNumber: _constatntsInfo.listAlphabetAndNumber,
        listCountBrand: listCountBrand,
        listBrands: listBrands,
        defaultListBrands: listBrands,
        selectedTypePeople: '',
      ),
    );
  }

  Future<void> _switchTypePeople(
    SwitchTypePeopleBrandEvent event,
    Emitter<BrandState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      List<String> listTypePeople = [];
      List<String> listAlphabetAndNumber = [];
      List<CountBrand> listCountBrand = [];
      Map<String, List<String>> listBrands = {};
      String selectedTypePeople = '';

      switch (event.selectTypePeople) {
        case 'Все':
          listTypePeople = [
            'Женщинам',
            'Мужчинам',
            'Детям',
          ];
          selectedTypePeople = '';
          List<String> allBrands = [
            ..._constatntsInfo.brandsWoman,
            ..._constatntsInfo.brandsMan,
            ..._constatntsInfo.brandsChilren,
          ];
          allBrands = allBrands.toSet().toList();
          for (int i = 0; i < _constatntsInfo.listAlphabetAndNumber.length; i++) {
            final brands = _getListBrand(_constatntsInfo.listAlphabetAndNumber[i], allBrands);
            if (brands.isNotEmpty) {
              listAlphabetAndNumber.add(_constatntsInfo.listAlphabetAndNumber[i]);
              listBrands[_constatntsInfo.listAlphabetAndNumber[i]] = brands;
              final calculatePosition =
                  _getCalculatePosition(_constatntsInfo.listAlphabetAndNumber[i]);
              listCountBrand.add(calculatePosition);
            }
          }

        case 'Женщинам':
          listTypePeople = [
            'Все',
            'Мужчинам',
            'Детям',
          ];
          selectedTypePeople = 'Женщинам';
          for (int i = 0; i < _constatntsInfo.listAlphabetAndNumber.length; i++) {
            final brands = _getListBrand(
                _constatntsInfo.listAlphabetAndNumber[i], _constatntsInfo.brandsWoman);
            if (brands.isNotEmpty) {
              listAlphabetAndNumber.add(_constatntsInfo.listAlphabetAndNumber[i]);
              listBrands[_constatntsInfo.listAlphabetAndNumber[i]] = brands;
              final calculatePosition = _getCalculatePosition(
                _constatntsInfo.listAlphabetAndNumber[i],
              );
              listCountBrand.add(calculatePosition);
            }
          }

        case 'Мужчинам':
          listTypePeople = [
            'Все',
            'Женщинам',
            'Детям',
          ];
          selectedTypePeople = 'Мужчинам';
          for (int i = 0; i < _constatntsInfo.listAlphabetAndNumber.length; i++) {
            final brands = _getListBrand(
              _constatntsInfo.listAlphabetAndNumber[i],
              _constatntsInfo.brandsMan,
            );
            if (brands.isNotEmpty) {
              listAlphabetAndNumber.add(_constatntsInfo.listAlphabetAndNumber[i]);
              listBrands[_constatntsInfo.listAlphabetAndNumber[i]] = brands;
              final calculatePosition = _getCalculatePosition(
                _constatntsInfo.listAlphabetAndNumber[i],
              );
              listCountBrand.add(calculatePosition);
            }
          }

        case 'Детям':
          listTypePeople = [
            'Все',
            'Женщинам',
            'Мужчинам',
          ];
          selectedTypePeople = 'Детям';
          for (int i = 0; i < _constatntsInfo.listAlphabetAndNumber.length; i++) {
            final brands = _getListBrand(
              _constatntsInfo.listAlphabetAndNumber[i],
              _constatntsInfo.brandsChilren,
            );
            if (brands.isNotEmpty) {
              listAlphabetAndNumber.add(_constatntsInfo.listAlphabetAndNumber[i]);
              listBrands[_constatntsInfo.listAlphabetAndNumber[i]] = brands;
              final calculatePosition = _getCalculatePosition(
                _constatntsInfo.listAlphabetAndNumber[i],
              );
              listCountBrand.add(calculatePosition);
            }
          }
      }

      emit(
        initState.copyWith(
          listTypePeople: listTypePeople,
          listAlphabetAndNumber: listAlphabetAndNumber,
          listCountBrand: listCountBrand,
          listBrands: listBrands,
          defaultListBrands: listBrands,
          selectedTypePeople: selectedTypePeople,
        ),
      );
    });
  }

  Future<void> _search(
    SearchBrandEvent event,
    Emitter<BrandState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      List<String> listAlphabetAndNumber = [];
      List<CountBrand> listCountBrand = [];
      Map<String, List<String>> listBrands = {};

      if (event.query.isNotEmpty) {
        for (int i = 0; i < initState.defaultListBrands.keys.length; i++) {
          try {
            int typeValue = int.parse(event.query[0]);
            if (typeValue.runtimeType == int) {
              final info = listKeyBrands[listKeyBrands.keys.toList()[i]] ?? [];
              for (int j = 0; j < info.length; j++) {
                if (info[j].toLowerCase().contains(event.query.toLowerCase())) {
                  List<String> brands = (listBrands[listKeyBrands.keys.toList()[i]] ?? []).toList();
                  listBrands[listKeyBrands.keys.toList()[i]] = brands..add(info[j]);
                  if (!listAlphabetAndNumber.contains(listKeyBrands.keys.toList()[i])) {
                    listAlphabetAndNumber.add(listKeyBrands.keys.toList()[i]);
                  }
                }
              }
            }
          } catch (ex) {
            final info = listKeyBrands[listKeyBrands.keys.toList()[i]] ?? [];
            for (int j = 0; j < info.length; j++) {
              if (info[j].toLowerCase().contains(event.query.toLowerCase())) {
                List<String> brands = (listBrands[listKeyBrands.keys.toList()[i]] ?? []).toList();
                listBrands[listKeyBrands.keys.toList()[i]] = brands..add(info[j]);
                if (!listAlphabetAndNumber.contains(listKeyBrands.keys.toList()[i])) {
                  listAlphabetAndNumber.add(listKeyBrands.keys.toList()[i]);
                }
              }
            }
          }
        }
      } else {
        listBrands = initState.defaultListBrands;
        listAlphabetAndNumber = _constatntsInfo.listAlphabetAndNumber;
      }

      for (int i = 0; i < listAlphabetAndNumber.length; i++) {
        final calculatePosition =
            _checkCalculatePosition(_constatntsInfo.listAlphabetAndNumber[i], listBrands);
        listCountBrand.add(calculatePosition);
      }

      emit(
        initState.copyWith(
          listAlphabetAndNumber: listAlphabetAndNumber,
          listCountBrand: listCountBrand,
          listBrands: listBrands,
        ),
      );
    });
  }

  List<String> _getListBrand(
    String value,
    List<String> allBrands,
  ) {
    List<String> result = [];

    for (int i = 0; i < allBrands.length; i++) {
      try {
        int numericValue = int.parse(allBrands[i][0]);
        int typeValue = int.parse(value[0]);
        if (numericValue.runtimeType == int && typeValue.runtimeType == int) {
          result.add(allBrands[i]);
        }
      } catch (ex) {
        if (allBrands[i][0] == value) {
          result.add(allBrands[i]);
        }
      }
    }

    listKeyBrands[value] = result;
    return result;
  }

  CountBrand _getCalculatePosition(
    String value,
  ) {
    double countAlphabet = 0;
    double countBrands = 0;
    for (int i = 0; i < listKeyBrands.keys.length; i++) {
      if (listKeyBrands.keys.toList()[i] != value) {
        final info = listKeyBrands[listKeyBrands.keys.toList()[i]];
        countBrands = countBrands + (info?.length ?? 0);
        countAlphabet++;
      } else {
        return CountBrand(
          countAlphabet: countAlphabet,
          countBrands: countBrands,
        );
      }
    }

    return CountBrand(
      countAlphabet: countAlphabet,
      countBrands: countBrands,
    );
  }

  CountBrand _checkCalculatePosition(
    String value,
    Map<String, List<String>> listBrands,
  ) {
    double countAlphabet = 0;
    double countBrands = 0;
    for (int i = 0; i < listBrands.keys.length; i++) {
      if (listBrands.keys.toList()[i] != value) {
        final info = listBrands[listBrands.keys.toList()[i]];
        countBrands = countBrands + (info?.length ?? 0);
        countAlphabet++;
      } else {
        return CountBrand(
          countAlphabet: countAlphabet,
          countBrands: countBrands,
        );
      }
    }

    return CountBrand(
      countAlphabet: countAlphabet,
      countBrands: countBrands,
    );
  }
}
