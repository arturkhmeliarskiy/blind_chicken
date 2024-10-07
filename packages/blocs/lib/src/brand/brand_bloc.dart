import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'brand_bloc.freezed.dart';
part 'brand_event.dart';
part 'brand_state.dart';

class BrandBloc extends Bloc<BrandEvent, BrandState> {
  final CatalogRepository _catalogRepository;

  BrandBloc(
    this._catalogRepository,
  ) : super(const BrandState.init()) {
    on<BrandEvent>(
      (event, emit) => event.map<Future<void>>(
        getBrands: (event) => _getBrands(event, emit),
        search: (event) => _search(event, emit),
        goBackBrandInfo: (event) => _goBackBrandInfo(event, emit),
        switchGenderBrands: (event) => _switchGenderBrands(event, emit),
      ),
    );
  }

  Future<void> _getBrands(
    GetBrandsBrandEvent event,
    Emitter<BrandState> emit,
  ) async {
    List<int> listBrandsPath = [];
    List<String> listTypePeople = [
      'Все',
      'Женщинам',
      'Мужчинам',
      'Детям',
    ];
    List<BrandDataModel> listBrands = [];
    List<BrandItemDataModel> allBrands = [];
    String selectedTypePeople = '';
    BrandsDataModel? brandsInfo;

    List<CountBrand> listCountBrand = [];

    emit(const BrandState.load());

    listBrandsPath.add(event.selectTypePeople ?? 0);

    switch (event.selectTypePeople) {
      case 0:
        listTypePeople = [
          'Женщинам',
          'Мужчинам',
          'Детям',
        ];
        selectedTypePeople = '';
        brandsInfo = await _catalogRepository.getBrands(
          gender: 0,
        );
        listBrands = brandsInfo.brands;
        for (int i = 0; i < listBrands.length; i++) {
          final calculatePosition = _getCalculatePosition(brandsInfo.brands, listBrands[i].title);
          listCountBrand.add(calculatePosition);
        }

      case 1:
        listTypePeople = [
          'Все',
          'Мужчинам',
          'Детям',
        ];
        selectedTypePeople = 'Женщинам';
        brandsInfo = await _catalogRepository.getBrands(
          gender: 1,
        );
        listBrands = brandsInfo.brands;

        for (int i = 0; i < listBrands.length; i++) {
          final calculatePosition = _getCalculatePosition(brandsInfo.brands, listBrands[i].title);
          listCountBrand.add(calculatePosition);
        }

      case 2:
        listTypePeople = [
          'Все',
          'Женщинам',
          'Детям',
        ];
        selectedTypePeople = 'Мужчинам';
        brandsInfo = await _catalogRepository.getBrands(
          gender: 2,
        );
        listBrands = brandsInfo.brands;

        for (int i = 0; i < listBrands.length; i++) {
          final calculatePosition = _getCalculatePosition(brandsInfo.brands, listBrands[i].title);
          listCountBrand.add(calculatePosition);
        }

      case 3:
        listTypePeople = [
          'Все',
          'Женщинам',
          'Мужчинам',
        ];
        selectedTypePeople = 'Детям';
        brandsInfo = await _catalogRepository.getBrands(
          gender: 3,
        );
        listBrands = brandsInfo.brands;

        for (int i = 0; i < listBrands.length; i++) {
          final calculatePosition = _getCalculatePosition(brandsInfo.brands, listBrands[i].title);
          listCountBrand.add(calculatePosition);
        }
    }

    for (int i = 0; i < listBrands.length; i++) {
      allBrands.addAll(listBrands[i].value);
    }

    if (brandsInfo?.errorMessage.isNotEmpty ?? false) {
      emit(BrandState.error(errorMessage: brandsInfo?.errorMessage ?? ''));
    } else {
      emit(
        BrandState.preloadDataCompleted(
          listTypePeople: listTypePeople,
          allBrands: allBrands,
          listCountBrand: listCountBrand,
          listBrands: listBrands,
          defaultListBrands: listBrands,
          selectedTypePeople: selectedTypePeople,
          listBrandsPath: listBrandsPath,
        ),
      );
    }
  }

  Future<void> _search(
    SearchBrandEvent event,
    Emitter<BrandState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      List<CountBrand> listCountBrand = [];
      List<BrandDataModel> listBrands = [];
      List<BrandItemDataModel> allBrands = [];

      if (event.query.isNotEmpty) {
        for (int i = 0; i < initState.defaultListBrands.length; i++) {
          final info = initState.defaultListBrands[i].value;
          final brands = initState.defaultListBrands[i];
          List<BrandItemDataModel> brandsItems = [];
          for (int j = 0; j < info.length; j++) {
            if (info[j].n.toLowerCase().contains(event.query.toLowerCase())) {
              brandsItems.add(info[j]);
            }
          }
          if (brandsItems.isNotEmpty) {
            listBrands.add(
              BrandDataModel(
                title: brands.title,
                value: brandsItems,
              ),
            );
          }
        }
      } else {
        listBrands = initState.defaultListBrands;
      }

      for (int i = 0; i < listBrands.length; i++) {
        final calculatePosition = _getCalculatePosition(listBrands, listBrands[i].title);
        listCountBrand.add(calculatePosition);
      }

      for (int i = 0; i < listBrands.length; i++) {
        allBrands.addAll(listBrands[i].value);
      }

      emit(
        initState.copyWith(
          allBrands: allBrands,
          listCountBrand: listCountBrand,
          listBrands: listBrands,
        ),
      );
    });
  }

  Future<void> _goBackBrandInfo(
    GoBackBrandInfoCategotyBrandEvent event,
    Emitter<BrandState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<int> listBrandsPath = initState.listBrandsPath.toList();

      if (listBrandsPath.isNotEmpty) {
        listBrandsPath.removeLast();
      }

      emit(initState.copyWith(
        listBrandsPath: listBrandsPath,
      ));

      if (listBrandsPath.isNotEmpty) {
        List<String> listTypePeople = [
          'Все',
          'Женщинам',
          'Мужчинам',
          'Детям',
        ];
        List<BrandDataModel> listBrands = [];
        List<BrandItemDataModel> allBrands = [];
        String selectedTypePeople = '';

        List<CountBrand> listCountBrand = [];

        switch (listBrandsPath.last) {
          case 0:
            listTypePeople = [
              'Женщинам',
              'Мужчинам',
              'Детям',
            ];
            selectedTypePeople = '';
            final brandsInfo = await _catalogRepository.getBrands(
              gender: 0,
            );
            listBrands = brandsInfo.brands;
            for (int i = 0; i < listBrands.length; i++) {
              final calculatePosition =
                  _getCalculatePosition(brandsInfo.brands, listBrands[i].title);
              listCountBrand.add(calculatePosition);
            }

          case 1:
            listTypePeople = [
              'Все',
              'Мужчинам',
              'Детям',
            ];
            selectedTypePeople = 'Женщинам';
            final brandsInfo = await _catalogRepository.getBrands(
              gender: 1,
            );
            listBrands = brandsInfo.brands;

            for (int i = 0; i < listBrands.length; i++) {
              final calculatePosition =
                  _getCalculatePosition(brandsInfo.brands, listBrands[i].title);
              listCountBrand.add(calculatePosition);
            }

          case 2:
            listTypePeople = [
              'Все',
              'Женщинам',
              'Детям',
            ];
            selectedTypePeople = 'Мужчинам';
            final brandsInfo = await _catalogRepository.getBrands(
              gender: 2,
            );
            listBrands = brandsInfo.brands;

            for (int i = 0; i < listBrands.length; i++) {
              final calculatePosition =
                  _getCalculatePosition(brandsInfo.brands, listBrands[i].title);
              listCountBrand.add(calculatePosition);
            }

          case 3:
            listTypePeople = [
              'Все',
              'Женщинам',
              'Мужчинам',
            ];
            selectedTypePeople = 'Детям';
            final brandsInfo = await _catalogRepository.getBrands(
              gender: 3,
            );
            listBrands = brandsInfo.brands;

            for (int i = 0; i < listBrands.length; i++) {
              final calculatePosition =
                  _getCalculatePosition(brandsInfo.brands, listBrands[i].title);
              listCountBrand.add(calculatePosition);
            }
        }

        for (int i = 0; i < listBrands.length; i++) {
          allBrands.addAll(listBrands[i].value);
        }

        emit(
          initState.copyWith(
            listTypePeople: listTypePeople,
            allBrands: allBrands,
            listCountBrand: listCountBrand,
            listBrands: listBrands,
            defaultListBrands: listBrands,
            selectedTypePeople: selectedTypePeople,
            listBrandsPath: listBrandsPath,
          ),
        );
      }
    });
  }

  Future<void> _switchGenderBrands(
    SwitchGenderBrandsBrandEvent event,
    Emitter<BrandState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<int> listBrandsPath = initState.listBrandsPath.toList();
      List<String> listTypePeople = [];
      List<BrandDataModel> listBrands = [];
      List<BrandItemDataModel> allBrands = [];
      String selectedTypePeople = '';
      List<CountBrand> listCountBrand = [];

      listBrandsPath.add(event.selectTypePeople);

      switch (event.selectTypePeople) {
        case 0:
          listTypePeople = [
            'Женщинам',
            'Мужчинам',
            'Детям',
          ];
          selectedTypePeople = '';
          final brandsInfo = await _catalogRepository.getBrands(
            gender: 0,
          );
          listBrands = brandsInfo.brands;
          for (int i = 0; i < listBrands.length; i++) {
            final calculatePosition = _getCalculatePosition(brandsInfo.brands, listBrands[i].title);
            listCountBrand.add(calculatePosition);
          }

        case 1:
          listTypePeople = [
            'Все',
            'Мужчинам',
            'Детям',
          ];
          selectedTypePeople = 'Женщинам';
          final brandsInfo = await _catalogRepository.getBrands(
            gender: 1,
          );
          listBrands = brandsInfo.brands;

          for (int i = 0; i < listBrands.length; i++) {
            final calculatePosition = _getCalculatePosition(brandsInfo.brands, listBrands[i].title);
            listCountBrand.add(calculatePosition);
          }

        case 2:
          listTypePeople = [
            'Все',
            'Женщинам',
            'Детям',
          ];
          selectedTypePeople = 'Мужчинам';
          final brandsInfo = await _catalogRepository.getBrands(
            gender: 2,
          );
          listBrands = brandsInfo.brands;

          for (int i = 0; i < listBrands.length; i++) {
            final calculatePosition = _getCalculatePosition(brandsInfo.brands, listBrands[i].title);
            listCountBrand.add(calculatePosition);
          }

        case 3:
          listTypePeople = [
            'Все',
            'Женщинам',
            'Мужчинам',
          ];
          selectedTypePeople = 'Детям';
          final brandsInfo = await _catalogRepository.getBrands(
            gender: 3,
          );
          listBrands = brandsInfo.brands;

          for (int i = 0; i < listBrands.length; i++) {
            final calculatePosition = _getCalculatePosition(brandsInfo.brands, listBrands[i].title);
            listCountBrand.add(calculatePosition);
          }
      }

      for (int i = 0; i < listBrands.length; i++) {
        allBrands.addAll(listBrands[i].value);
      }

      emit(
        initState.copyWith(
          listTypePeople: listTypePeople,
          allBrands: allBrands,
          listCountBrand: listCountBrand,
          listBrands: listBrands,
          defaultListBrands: listBrands,
          selectedTypePeople: selectedTypePeople,
          listBrandsPath: listBrandsPath,
        ),
      );
    });
  }

  CountBrand _getCalculatePosition(
    List<BrandDataModel> brands,
    String value,
  ) {
    double countAlphabet = 0;
    double countBrands = 0;
    for (int i = 0; i < brands.length; i++) {
      if (brands[i].title != value) {
        final info = brands[i].value;
        countBrands = countBrands + info.length;
        countAlphabet++;
      } else {
        return CountBrand(
          countAlphabet: countAlphabet,
          countBrands: countBrands > 2
              ? ConverterService.roundUpAbsolute(countBrands / 2).round().toDouble()
              : countBrands,
        );
      }
    }

    return CountBrand(
      countAlphabet: countAlphabet,
      countBrands: countBrands > 2
          ? ConverterService.roundUpAbsolute(countBrands / 2).round().toDouble()
          : countBrands,
    );
  }
}
