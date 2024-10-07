// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrandEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? selectTypePeople) getBrands,
    required TResult Function(int selectTypePeople) switchGenderBrands,
    required TResult Function(String query) search,
    required TResult Function() goBackBrandInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? selectTypePeople)? getBrands,
    TResult? Function(int selectTypePeople)? switchGenderBrands,
    TResult? Function(String query)? search,
    TResult? Function()? goBackBrandInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? selectTypePeople)? getBrands,
    TResult Function(int selectTypePeople)? switchGenderBrands,
    TResult Function(String query)? search,
    TResult Function()? goBackBrandInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBrandsBrandEvent value) getBrands,
    required TResult Function(SwitchGenderBrandsBrandEvent value)
        switchGenderBrands,
    required TResult Function(SearchBrandEvent value) search,
    required TResult Function(GoBackBrandInfoCategotyBrandEvent value)
        goBackBrandInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBrandsBrandEvent value)? getBrands,
    TResult? Function(SwitchGenderBrandsBrandEvent value)? switchGenderBrands,
    TResult? Function(SearchBrandEvent value)? search,
    TResult? Function(GoBackBrandInfoCategotyBrandEvent value)? goBackBrandInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBrandsBrandEvent value)? getBrands,
    TResult Function(SwitchGenderBrandsBrandEvent value)? switchGenderBrands,
    TResult Function(SearchBrandEvent value)? search,
    TResult Function(GoBackBrandInfoCategotyBrandEvent value)? goBackBrandInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandEventCopyWith<$Res> {
  factory $BrandEventCopyWith(
          BrandEvent value, $Res Function(BrandEvent) then) =
      _$BrandEventCopyWithImpl<$Res, BrandEvent>;
}

/// @nodoc
class _$BrandEventCopyWithImpl<$Res, $Val extends BrandEvent>
    implements $BrandEventCopyWith<$Res> {
  _$BrandEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetBrandsBrandEventImplCopyWith<$Res> {
  factory _$$GetBrandsBrandEventImplCopyWith(_$GetBrandsBrandEventImpl value,
          $Res Function(_$GetBrandsBrandEventImpl) then) =
      __$$GetBrandsBrandEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? selectTypePeople});
}

/// @nodoc
class __$$GetBrandsBrandEventImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$GetBrandsBrandEventImpl>
    implements _$$GetBrandsBrandEventImplCopyWith<$Res> {
  __$$GetBrandsBrandEventImplCopyWithImpl(_$GetBrandsBrandEventImpl _value,
      $Res Function(_$GetBrandsBrandEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectTypePeople = freezed,
  }) {
    return _then(_$GetBrandsBrandEventImpl(
      selectTypePeople: freezed == selectTypePeople
          ? _value.selectTypePeople
          : selectTypePeople // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetBrandsBrandEventImpl implements GetBrandsBrandEvent {
  const _$GetBrandsBrandEventImpl({this.selectTypePeople});

  @override
  final int? selectTypePeople;

  @override
  String toString() {
    return 'BrandEvent.getBrands(selectTypePeople: $selectTypePeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBrandsBrandEventImpl &&
            (identical(other.selectTypePeople, selectTypePeople) ||
                other.selectTypePeople == selectTypePeople));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectTypePeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBrandsBrandEventImplCopyWith<_$GetBrandsBrandEventImpl> get copyWith =>
      __$$GetBrandsBrandEventImplCopyWithImpl<_$GetBrandsBrandEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? selectTypePeople) getBrands,
    required TResult Function(int selectTypePeople) switchGenderBrands,
    required TResult Function(String query) search,
    required TResult Function() goBackBrandInfo,
  }) {
    return getBrands(selectTypePeople);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? selectTypePeople)? getBrands,
    TResult? Function(int selectTypePeople)? switchGenderBrands,
    TResult? Function(String query)? search,
    TResult? Function()? goBackBrandInfo,
  }) {
    return getBrands?.call(selectTypePeople);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? selectTypePeople)? getBrands,
    TResult Function(int selectTypePeople)? switchGenderBrands,
    TResult Function(String query)? search,
    TResult Function()? goBackBrandInfo,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands(selectTypePeople);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBrandsBrandEvent value) getBrands,
    required TResult Function(SwitchGenderBrandsBrandEvent value)
        switchGenderBrands,
    required TResult Function(SearchBrandEvent value) search,
    required TResult Function(GoBackBrandInfoCategotyBrandEvent value)
        goBackBrandInfo,
  }) {
    return getBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBrandsBrandEvent value)? getBrands,
    TResult? Function(SwitchGenderBrandsBrandEvent value)? switchGenderBrands,
    TResult? Function(SearchBrandEvent value)? search,
    TResult? Function(GoBackBrandInfoCategotyBrandEvent value)? goBackBrandInfo,
  }) {
    return getBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBrandsBrandEvent value)? getBrands,
    TResult Function(SwitchGenderBrandsBrandEvent value)? switchGenderBrands,
    TResult Function(SearchBrandEvent value)? search,
    TResult Function(GoBackBrandInfoCategotyBrandEvent value)? goBackBrandInfo,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands(this);
    }
    return orElse();
  }
}

abstract class GetBrandsBrandEvent implements BrandEvent {
  const factory GetBrandsBrandEvent({final int? selectTypePeople}) =
      _$GetBrandsBrandEventImpl;

  int? get selectTypePeople;
  @JsonKey(ignore: true)
  _$$GetBrandsBrandEventImplCopyWith<_$GetBrandsBrandEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchGenderBrandsBrandEventImplCopyWith<$Res> {
  factory _$$SwitchGenderBrandsBrandEventImplCopyWith(
          _$SwitchGenderBrandsBrandEventImpl value,
          $Res Function(_$SwitchGenderBrandsBrandEventImpl) then) =
      __$$SwitchGenderBrandsBrandEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectTypePeople});
}

/// @nodoc
class __$$SwitchGenderBrandsBrandEventImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$SwitchGenderBrandsBrandEventImpl>
    implements _$$SwitchGenderBrandsBrandEventImplCopyWith<$Res> {
  __$$SwitchGenderBrandsBrandEventImplCopyWithImpl(
      _$SwitchGenderBrandsBrandEventImpl _value,
      $Res Function(_$SwitchGenderBrandsBrandEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectTypePeople = null,
  }) {
    return _then(_$SwitchGenderBrandsBrandEventImpl(
      selectTypePeople: null == selectTypePeople
          ? _value.selectTypePeople
          : selectTypePeople // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SwitchGenderBrandsBrandEventImpl
    implements SwitchGenderBrandsBrandEvent {
  const _$SwitchGenderBrandsBrandEventImpl({required this.selectTypePeople});

  @override
  final int selectTypePeople;

  @override
  String toString() {
    return 'BrandEvent.switchGenderBrands(selectTypePeople: $selectTypePeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchGenderBrandsBrandEventImpl &&
            (identical(other.selectTypePeople, selectTypePeople) ||
                other.selectTypePeople == selectTypePeople));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectTypePeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchGenderBrandsBrandEventImplCopyWith<
          _$SwitchGenderBrandsBrandEventImpl>
      get copyWith => __$$SwitchGenderBrandsBrandEventImplCopyWithImpl<
          _$SwitchGenderBrandsBrandEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? selectTypePeople) getBrands,
    required TResult Function(int selectTypePeople) switchGenderBrands,
    required TResult Function(String query) search,
    required TResult Function() goBackBrandInfo,
  }) {
    return switchGenderBrands(selectTypePeople);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? selectTypePeople)? getBrands,
    TResult? Function(int selectTypePeople)? switchGenderBrands,
    TResult? Function(String query)? search,
    TResult? Function()? goBackBrandInfo,
  }) {
    return switchGenderBrands?.call(selectTypePeople);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? selectTypePeople)? getBrands,
    TResult Function(int selectTypePeople)? switchGenderBrands,
    TResult Function(String query)? search,
    TResult Function()? goBackBrandInfo,
    required TResult orElse(),
  }) {
    if (switchGenderBrands != null) {
      return switchGenderBrands(selectTypePeople);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBrandsBrandEvent value) getBrands,
    required TResult Function(SwitchGenderBrandsBrandEvent value)
        switchGenderBrands,
    required TResult Function(SearchBrandEvent value) search,
    required TResult Function(GoBackBrandInfoCategotyBrandEvent value)
        goBackBrandInfo,
  }) {
    return switchGenderBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBrandsBrandEvent value)? getBrands,
    TResult? Function(SwitchGenderBrandsBrandEvent value)? switchGenderBrands,
    TResult? Function(SearchBrandEvent value)? search,
    TResult? Function(GoBackBrandInfoCategotyBrandEvent value)? goBackBrandInfo,
  }) {
    return switchGenderBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBrandsBrandEvent value)? getBrands,
    TResult Function(SwitchGenderBrandsBrandEvent value)? switchGenderBrands,
    TResult Function(SearchBrandEvent value)? search,
    TResult Function(GoBackBrandInfoCategotyBrandEvent value)? goBackBrandInfo,
    required TResult orElse(),
  }) {
    if (switchGenderBrands != null) {
      return switchGenderBrands(this);
    }
    return orElse();
  }
}

abstract class SwitchGenderBrandsBrandEvent implements BrandEvent {
  const factory SwitchGenderBrandsBrandEvent(
          {required final int selectTypePeople}) =
      _$SwitchGenderBrandsBrandEventImpl;

  int get selectTypePeople;
  @JsonKey(ignore: true)
  _$$SwitchGenderBrandsBrandEventImplCopyWith<
          _$SwitchGenderBrandsBrandEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchBrandEventImplCopyWith<$Res> {
  factory _$$SearchBrandEventImplCopyWith(_$SearchBrandEventImpl value,
          $Res Function(_$SearchBrandEventImpl) then) =
      __$$SearchBrandEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchBrandEventImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$SearchBrandEventImpl>
    implements _$$SearchBrandEventImplCopyWith<$Res> {
  __$$SearchBrandEventImplCopyWithImpl(_$SearchBrandEventImpl _value,
      $Res Function(_$SearchBrandEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchBrandEventImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchBrandEventImpl implements SearchBrandEvent {
  const _$SearchBrandEventImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'BrandEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBrandEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBrandEventImplCopyWith<_$SearchBrandEventImpl> get copyWith =>
      __$$SearchBrandEventImplCopyWithImpl<_$SearchBrandEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? selectTypePeople) getBrands,
    required TResult Function(int selectTypePeople) switchGenderBrands,
    required TResult Function(String query) search,
    required TResult Function() goBackBrandInfo,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? selectTypePeople)? getBrands,
    TResult? Function(int selectTypePeople)? switchGenderBrands,
    TResult? Function(String query)? search,
    TResult? Function()? goBackBrandInfo,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? selectTypePeople)? getBrands,
    TResult Function(int selectTypePeople)? switchGenderBrands,
    TResult Function(String query)? search,
    TResult Function()? goBackBrandInfo,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBrandsBrandEvent value) getBrands,
    required TResult Function(SwitchGenderBrandsBrandEvent value)
        switchGenderBrands,
    required TResult Function(SearchBrandEvent value) search,
    required TResult Function(GoBackBrandInfoCategotyBrandEvent value)
        goBackBrandInfo,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBrandsBrandEvent value)? getBrands,
    TResult? Function(SwitchGenderBrandsBrandEvent value)? switchGenderBrands,
    TResult? Function(SearchBrandEvent value)? search,
    TResult? Function(GoBackBrandInfoCategotyBrandEvent value)? goBackBrandInfo,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBrandsBrandEvent value)? getBrands,
    TResult Function(SwitchGenderBrandsBrandEvent value)? switchGenderBrands,
    TResult Function(SearchBrandEvent value)? search,
    TResult Function(GoBackBrandInfoCategotyBrandEvent value)? goBackBrandInfo,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchBrandEvent implements BrandEvent {
  const factory SearchBrandEvent({required final String query}) =
      _$SearchBrandEventImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchBrandEventImplCopyWith<_$SearchBrandEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoBackBrandInfoCategotyBrandEventImplCopyWith<$Res> {
  factory _$$GoBackBrandInfoCategotyBrandEventImplCopyWith(
          _$GoBackBrandInfoCategotyBrandEventImpl value,
          $Res Function(_$GoBackBrandInfoCategotyBrandEventImpl) then) =
      __$$GoBackBrandInfoCategotyBrandEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoBackBrandInfoCategotyBrandEventImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res,
        _$GoBackBrandInfoCategotyBrandEventImpl>
    implements _$$GoBackBrandInfoCategotyBrandEventImplCopyWith<$Res> {
  __$$GoBackBrandInfoCategotyBrandEventImplCopyWithImpl(
      _$GoBackBrandInfoCategotyBrandEventImpl _value,
      $Res Function(_$GoBackBrandInfoCategotyBrandEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoBackBrandInfoCategotyBrandEventImpl
    implements GoBackBrandInfoCategotyBrandEvent {
  const _$GoBackBrandInfoCategotyBrandEventImpl();

  @override
  String toString() {
    return 'BrandEvent.goBackBrandInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoBackBrandInfoCategotyBrandEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? selectTypePeople) getBrands,
    required TResult Function(int selectTypePeople) switchGenderBrands,
    required TResult Function(String query) search,
    required TResult Function() goBackBrandInfo,
  }) {
    return goBackBrandInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? selectTypePeople)? getBrands,
    TResult? Function(int selectTypePeople)? switchGenderBrands,
    TResult? Function(String query)? search,
    TResult? Function()? goBackBrandInfo,
  }) {
    return goBackBrandInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? selectTypePeople)? getBrands,
    TResult Function(int selectTypePeople)? switchGenderBrands,
    TResult Function(String query)? search,
    TResult Function()? goBackBrandInfo,
    required TResult orElse(),
  }) {
    if (goBackBrandInfo != null) {
      return goBackBrandInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBrandsBrandEvent value) getBrands,
    required TResult Function(SwitchGenderBrandsBrandEvent value)
        switchGenderBrands,
    required TResult Function(SearchBrandEvent value) search,
    required TResult Function(GoBackBrandInfoCategotyBrandEvent value)
        goBackBrandInfo,
  }) {
    return goBackBrandInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBrandsBrandEvent value)? getBrands,
    TResult? Function(SwitchGenderBrandsBrandEvent value)? switchGenderBrands,
    TResult? Function(SearchBrandEvent value)? search,
    TResult? Function(GoBackBrandInfoCategotyBrandEvent value)? goBackBrandInfo,
  }) {
    return goBackBrandInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBrandsBrandEvent value)? getBrands,
    TResult Function(SwitchGenderBrandsBrandEvent value)? switchGenderBrands,
    TResult Function(SearchBrandEvent value)? search,
    TResult Function(GoBackBrandInfoCategotyBrandEvent value)? goBackBrandInfo,
    required TResult orElse(),
  }) {
    if (goBackBrandInfo != null) {
      return goBackBrandInfo(this);
    }
    return orElse();
  }
}

abstract class GoBackBrandInfoCategotyBrandEvent implements BrandEvent {
  const factory GoBackBrandInfoCategotyBrandEvent() =
      _$GoBackBrandInfoCategotyBrandEventImpl;
}

/// @nodoc
mixin _$BrandState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? error,
    TResult? Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String errorMessage)? error,
    TResult Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBrandState value) init,
    required TResult Function(LoadingBrandState value) load,
    required TResult Function(ErrorBrandState value) error,
    required TResult Function(PreloadDataCompletedBrandState value)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBrandState value)? init,
    TResult? Function(LoadingBrandState value)? load,
    TResult? Function(ErrorBrandState value)? error,
    TResult? Function(PreloadDataCompletedBrandState value)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBrandState value)? init,
    TResult Function(LoadingBrandState value)? load,
    TResult Function(ErrorBrandState value)? error,
    TResult Function(PreloadDataCompletedBrandState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandStateCopyWith<$Res> {
  factory $BrandStateCopyWith(
          BrandState value, $Res Function(BrandState) then) =
      _$BrandStateCopyWithImpl<$Res, BrandState>;
}

/// @nodoc
class _$BrandStateCopyWithImpl<$Res, $Val extends BrandState>
    implements $BrandStateCopyWith<$Res> {
  _$BrandStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitBrandStateImplCopyWith<$Res> {
  factory _$$InitBrandStateImplCopyWith(_$InitBrandStateImpl value,
          $Res Function(_$InitBrandStateImpl) then) =
      __$$InitBrandStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitBrandStateImplCopyWithImpl<$Res>
    extends _$BrandStateCopyWithImpl<$Res, _$InitBrandStateImpl>
    implements _$$InitBrandStateImplCopyWith<$Res> {
  __$$InitBrandStateImplCopyWithImpl(
      _$InitBrandStateImpl _value, $Res Function(_$InitBrandStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitBrandStateImpl implements InitBrandState {
  const _$InitBrandStateImpl();

  @override
  String toString() {
    return 'BrandState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitBrandStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)
        preloadDataCompleted,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? error,
    TResult? Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)?
        preloadDataCompleted,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String errorMessage)? error,
    TResult Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBrandState value) init,
    required TResult Function(LoadingBrandState value) load,
    required TResult Function(ErrorBrandState value) error,
    required TResult Function(PreloadDataCompletedBrandState value)
        preloadDataCompleted,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBrandState value)? init,
    TResult? Function(LoadingBrandState value)? load,
    TResult? Function(ErrorBrandState value)? error,
    TResult? Function(PreloadDataCompletedBrandState value)?
        preloadDataCompleted,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBrandState value)? init,
    TResult Function(LoadingBrandState value)? load,
    TResult Function(ErrorBrandState value)? error,
    TResult Function(PreloadDataCompletedBrandState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitBrandState implements BrandState {
  const factory InitBrandState() = _$InitBrandStateImpl;
}

/// @nodoc
abstract class _$$LoadingBrandStateImplCopyWith<$Res> {
  factory _$$LoadingBrandStateImplCopyWith(_$LoadingBrandStateImpl value,
          $Res Function(_$LoadingBrandStateImpl) then) =
      __$$LoadingBrandStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingBrandStateImplCopyWithImpl<$Res>
    extends _$BrandStateCopyWithImpl<$Res, _$LoadingBrandStateImpl>
    implements _$$LoadingBrandStateImplCopyWith<$Res> {
  __$$LoadingBrandStateImplCopyWithImpl(_$LoadingBrandStateImpl _value,
      $Res Function(_$LoadingBrandStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingBrandStateImpl implements LoadingBrandState {
  const _$LoadingBrandStateImpl();

  @override
  String toString() {
    return 'BrandState.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingBrandStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)
        preloadDataCompleted,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? error,
    TResult? Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)?
        preloadDataCompleted,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String errorMessage)? error,
    TResult Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBrandState value) init,
    required TResult Function(LoadingBrandState value) load,
    required TResult Function(ErrorBrandState value) error,
    required TResult Function(PreloadDataCompletedBrandState value)
        preloadDataCompleted,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBrandState value)? init,
    TResult? Function(LoadingBrandState value)? load,
    TResult? Function(ErrorBrandState value)? error,
    TResult? Function(PreloadDataCompletedBrandState value)?
        preloadDataCompleted,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBrandState value)? init,
    TResult Function(LoadingBrandState value)? load,
    TResult Function(ErrorBrandState value)? error,
    TResult Function(PreloadDataCompletedBrandState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingBrandState implements BrandState {
  const factory LoadingBrandState() = _$LoadingBrandStateImpl;
}

/// @nodoc
abstract class _$$ErrorBrandStateImplCopyWith<$Res> {
  factory _$$ErrorBrandStateImplCopyWith(_$ErrorBrandStateImpl value,
          $Res Function(_$ErrorBrandStateImpl) then) =
      __$$ErrorBrandStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorBrandStateImplCopyWithImpl<$Res>
    extends _$BrandStateCopyWithImpl<$Res, _$ErrorBrandStateImpl>
    implements _$$ErrorBrandStateImplCopyWith<$Res> {
  __$$ErrorBrandStateImplCopyWithImpl(
      _$ErrorBrandStateImpl _value, $Res Function(_$ErrorBrandStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorBrandStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorBrandStateImpl implements ErrorBrandState {
  const _$ErrorBrandStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'BrandState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorBrandStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorBrandStateImplCopyWith<_$ErrorBrandStateImpl> get copyWith =>
      __$$ErrorBrandStateImplCopyWithImpl<_$ErrorBrandStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)
        preloadDataCompleted,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? error,
    TResult? Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)?
        preloadDataCompleted,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String errorMessage)? error,
    TResult Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBrandState value) init,
    required TResult Function(LoadingBrandState value) load,
    required TResult Function(ErrorBrandState value) error,
    required TResult Function(PreloadDataCompletedBrandState value)
        preloadDataCompleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBrandState value)? init,
    TResult? Function(LoadingBrandState value)? load,
    TResult? Function(ErrorBrandState value)? error,
    TResult? Function(PreloadDataCompletedBrandState value)?
        preloadDataCompleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBrandState value)? init,
    TResult Function(LoadingBrandState value)? load,
    TResult Function(ErrorBrandState value)? error,
    TResult Function(PreloadDataCompletedBrandState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorBrandState implements BrandState {
  const factory ErrorBrandState({required final String errorMessage}) =
      _$ErrorBrandStateImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorBrandStateImplCopyWith<_$ErrorBrandStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreloadDataCompletedBrandStateImplCopyWith<$Res> {
  factory _$$PreloadDataCompletedBrandStateImplCopyWith(
          _$PreloadDataCompletedBrandStateImpl value,
          $Res Function(_$PreloadDataCompletedBrandStateImpl) then) =
      __$$PreloadDataCompletedBrandStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String selectedTypePeople,
      List<String> listTypePeople,
      List<BrandItemDataModel> allBrands,
      List<BrandDataModel> listBrands,
      List<BrandDataModel> defaultListBrands,
      List<CountBrand> listCountBrand,
      List<int> listBrandsPath});
}

/// @nodoc
class __$$PreloadDataCompletedBrandStateImplCopyWithImpl<$Res>
    extends _$BrandStateCopyWithImpl<$Res, _$PreloadDataCompletedBrandStateImpl>
    implements _$$PreloadDataCompletedBrandStateImplCopyWith<$Res> {
  __$$PreloadDataCompletedBrandStateImplCopyWithImpl(
      _$PreloadDataCompletedBrandStateImpl _value,
      $Res Function(_$PreloadDataCompletedBrandStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTypePeople = null,
    Object? listTypePeople = null,
    Object? allBrands = null,
    Object? listBrands = null,
    Object? defaultListBrands = null,
    Object? listCountBrand = null,
    Object? listBrandsPath = null,
  }) {
    return _then(_$PreloadDataCompletedBrandStateImpl(
      selectedTypePeople: null == selectedTypePeople
          ? _value.selectedTypePeople
          : selectedTypePeople // ignore: cast_nullable_to_non_nullable
              as String,
      listTypePeople: null == listTypePeople
          ? _value._listTypePeople
          : listTypePeople // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allBrands: null == allBrands
          ? _value._allBrands
          : allBrands // ignore: cast_nullable_to_non_nullable
              as List<BrandItemDataModel>,
      listBrands: null == listBrands
          ? _value._listBrands
          : listBrands // ignore: cast_nullable_to_non_nullable
              as List<BrandDataModel>,
      defaultListBrands: null == defaultListBrands
          ? _value._defaultListBrands
          : defaultListBrands // ignore: cast_nullable_to_non_nullable
              as List<BrandDataModel>,
      listCountBrand: null == listCountBrand
          ? _value._listCountBrand
          : listCountBrand // ignore: cast_nullable_to_non_nullable
              as List<CountBrand>,
      listBrandsPath: null == listBrandsPath
          ? _value._listBrandsPath
          : listBrandsPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$PreloadDataCompletedBrandStateImpl
    implements PreloadDataCompletedBrandState {
  const _$PreloadDataCompletedBrandStateImpl(
      {required this.selectedTypePeople,
      required final List<String> listTypePeople,
      required final List<BrandItemDataModel> allBrands,
      required final List<BrandDataModel> listBrands,
      required final List<BrandDataModel> defaultListBrands,
      required final List<CountBrand> listCountBrand,
      required final List<int> listBrandsPath})
      : _listTypePeople = listTypePeople,
        _allBrands = allBrands,
        _listBrands = listBrands,
        _defaultListBrands = defaultListBrands,
        _listCountBrand = listCountBrand,
        _listBrandsPath = listBrandsPath;

  @override
  final String selectedTypePeople;
  final List<String> _listTypePeople;
  @override
  List<String> get listTypePeople {
    if (_listTypePeople is EqualUnmodifiableListView) return _listTypePeople;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTypePeople);
  }

  final List<BrandItemDataModel> _allBrands;
  @override
  List<BrandItemDataModel> get allBrands {
    if (_allBrands is EqualUnmodifiableListView) return _allBrands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allBrands);
  }

  final List<BrandDataModel> _listBrands;
  @override
  List<BrandDataModel> get listBrands {
    if (_listBrands is EqualUnmodifiableListView) return _listBrands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listBrands);
  }

  final List<BrandDataModel> _defaultListBrands;
  @override
  List<BrandDataModel> get defaultListBrands {
    if (_defaultListBrands is EqualUnmodifiableListView)
      return _defaultListBrands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultListBrands);
  }

  final List<CountBrand> _listCountBrand;
  @override
  List<CountBrand> get listCountBrand {
    if (_listCountBrand is EqualUnmodifiableListView) return _listCountBrand;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCountBrand);
  }

  final List<int> _listBrandsPath;
  @override
  List<int> get listBrandsPath {
    if (_listBrandsPath is EqualUnmodifiableListView) return _listBrandsPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listBrandsPath);
  }

  @override
  String toString() {
    return 'BrandState.preloadDataCompleted(selectedTypePeople: $selectedTypePeople, listTypePeople: $listTypePeople, allBrands: $allBrands, listBrands: $listBrands, defaultListBrands: $defaultListBrands, listCountBrand: $listCountBrand, listBrandsPath: $listBrandsPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedBrandStateImpl &&
            (identical(other.selectedTypePeople, selectedTypePeople) ||
                other.selectedTypePeople == selectedTypePeople) &&
            const DeepCollectionEquality()
                .equals(other._listTypePeople, _listTypePeople) &&
            const DeepCollectionEquality()
                .equals(other._allBrands, _allBrands) &&
            const DeepCollectionEquality()
                .equals(other._listBrands, _listBrands) &&
            const DeepCollectionEquality()
                .equals(other._defaultListBrands, _defaultListBrands) &&
            const DeepCollectionEquality()
                .equals(other._listCountBrand, _listCountBrand) &&
            const DeepCollectionEquality()
                .equals(other._listBrandsPath, _listBrandsPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedTypePeople,
      const DeepCollectionEquality().hash(_listTypePeople),
      const DeepCollectionEquality().hash(_allBrands),
      const DeepCollectionEquality().hash(_listBrands),
      const DeepCollectionEquality().hash(_defaultListBrands),
      const DeepCollectionEquality().hash(_listCountBrand),
      const DeepCollectionEquality().hash(_listBrandsPath));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataCompletedBrandStateImplCopyWith<
          _$PreloadDataCompletedBrandStateImpl>
      get copyWith => __$$PreloadDataCompletedBrandStateImplCopyWithImpl<
          _$PreloadDataCompletedBrandStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(selectedTypePeople, listTypePeople, allBrands,
        listBrands, defaultListBrands, listCountBrand, listBrandsPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? error,
    TResult? Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(
        selectedTypePeople,
        listTypePeople,
        allBrands,
        listBrands,
        defaultListBrands,
        listCountBrand,
        listBrandsPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String errorMessage)? error,
    TResult Function(
            String selectedTypePeople,
            List<String> listTypePeople,
            List<BrandItemDataModel> allBrands,
            List<BrandDataModel> listBrands,
            List<BrandDataModel> defaultListBrands,
            List<CountBrand> listCountBrand,
            List<int> listBrandsPath)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(selectedTypePeople, listTypePeople, allBrands,
          listBrands, defaultListBrands, listCountBrand, listBrandsPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBrandState value) init,
    required TResult Function(LoadingBrandState value) load,
    required TResult Function(ErrorBrandState value) error,
    required TResult Function(PreloadDataCompletedBrandState value)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBrandState value)? init,
    TResult? Function(LoadingBrandState value)? load,
    TResult? Function(ErrorBrandState value)? error,
    TResult? Function(PreloadDataCompletedBrandState value)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBrandState value)? init,
    TResult Function(LoadingBrandState value)? load,
    TResult Function(ErrorBrandState value)? error,
    TResult Function(PreloadDataCompletedBrandState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(this);
    }
    return orElse();
  }
}

abstract class PreloadDataCompletedBrandState implements BrandState {
  const factory PreloadDataCompletedBrandState(
          {required final String selectedTypePeople,
          required final List<String> listTypePeople,
          required final List<BrandItemDataModel> allBrands,
          required final List<BrandDataModel> listBrands,
          required final List<BrandDataModel> defaultListBrands,
          required final List<CountBrand> listCountBrand,
          required final List<int> listBrandsPath}) =
      _$PreloadDataCompletedBrandStateImpl;

  String get selectedTypePeople;
  List<String> get listTypePeople;
  List<BrandItemDataModel> get allBrands;
  List<BrandDataModel> get listBrands;
  List<BrandDataModel> get defaultListBrands;
  List<CountBrand> get listCountBrand;
  List<int> get listBrandsPath;
  @JsonKey(ignore: true)
  _$$PreloadDataCompletedBrandStateImplCopyWith<
          _$PreloadDataCompletedBrandStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
