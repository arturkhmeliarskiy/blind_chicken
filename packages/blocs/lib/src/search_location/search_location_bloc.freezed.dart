// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchLocationEvent {
  String? get cityId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentType, String? query, String? cityId,
            String? streetId, int? limit, int? offset)
        searchQuery,
    required TResult Function(String zipcode, int sum, String cityId)
        selectedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentType, String? query, String? cityId,
            String? streetId, int? limit, int? offset)?
        searchQuery,
    TResult? Function(String zipcode, int sum, String cityId)? selectedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentType, String? query, String? cityId,
            String? streetId, int? limit, int? offset)?
        searchQuery,
    TResult Function(String zipcode, int sum, String cityId)? selectedAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQuerySearchLocationEvent value) searchQuery,
    required TResult Function(SelectedAddressLocationEvent value)
        selectedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchQuerySearchLocationEvent value)? searchQuery,
    TResult? Function(SelectedAddressLocationEvent value)? selectedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQuerySearchLocationEvent value)? searchQuery,
    TResult Function(SelectedAddressLocationEvent value)? selectedAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchLocationEventCopyWith<SearchLocationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationEventCopyWith<$Res> {
  factory $SearchLocationEventCopyWith(
          SearchLocationEvent value, $Res Function(SearchLocationEvent) then) =
      _$SearchLocationEventCopyWithImpl<$Res, SearchLocationEvent>;
  @useResult
  $Res call({String cityId});
}

/// @nodoc
class _$SearchLocationEventCopyWithImpl<$Res, $Val extends SearchLocationEvent>
    implements $SearchLocationEventCopyWith<$Res> {
  _$SearchLocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
  }) {
    return _then(_value.copyWith(
      cityId: null == cityId
          ? _value.cityId!
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchQuerySearchLocationEventImplCopyWith<$Res>
    implements $SearchLocationEventCopyWith<$Res> {
  factory _$$SearchQuerySearchLocationEventImplCopyWith(
          _$SearchQuerySearchLocationEventImpl value,
          $Res Function(_$SearchQuerySearchLocationEventImpl) then) =
      __$$SearchQuerySearchLocationEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentType,
      String? query,
      String? cityId,
      String? streetId,
      int? limit,
      int? offset});
}

/// @nodoc
class __$$SearchQuerySearchLocationEventImplCopyWithImpl<$Res>
    extends _$SearchLocationEventCopyWithImpl<$Res,
        _$SearchQuerySearchLocationEventImpl>
    implements _$$SearchQuerySearchLocationEventImplCopyWith<$Res> {
  __$$SearchQuerySearchLocationEventImplCopyWithImpl(
      _$SearchQuerySearchLocationEventImpl _value,
      $Res Function(_$SearchQuerySearchLocationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? query = freezed,
    Object? cityId = freezed,
    Object? streetId = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$SearchQuerySearchLocationEventImpl(
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      streetId: freezed == streetId
          ? _value.streetId
          : streetId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SearchQuerySearchLocationEventImpl
    implements SearchQuerySearchLocationEvent {
  const _$SearchQuerySearchLocationEventImpl(
      {required this.contentType,
      this.query,
      this.cityId,
      this.streetId,
      this.limit,
      this.offset});

  @override
  final String contentType;
  @override
  final String? query;
  @override
  final String? cityId;
  @override
  final String? streetId;
  @override
  final int? limit;
  @override
  final int? offset;

  @override
  String toString() {
    return 'SearchLocationEvent.searchQuery(contentType: $contentType, query: $query, cityId: $cityId, streetId: $streetId, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQuerySearchLocationEventImpl &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.streetId, streetId) ||
                other.streetId == streetId) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, contentType, query, cityId, streetId, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQuerySearchLocationEventImplCopyWith<
          _$SearchQuerySearchLocationEventImpl>
      get copyWith => __$$SearchQuerySearchLocationEventImplCopyWithImpl<
          _$SearchQuerySearchLocationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentType, String? query, String? cityId,
            String? streetId, int? limit, int? offset)
        searchQuery,
    required TResult Function(String zipcode, int sum, String cityId)
        selectedAddress,
  }) {
    return searchQuery(contentType, query, cityId, streetId, limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentType, String? query, String? cityId,
            String? streetId, int? limit, int? offset)?
        searchQuery,
    TResult? Function(String zipcode, int sum, String cityId)? selectedAddress,
  }) {
    return searchQuery?.call(
        contentType, query, cityId, streetId, limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentType, String? query, String? cityId,
            String? streetId, int? limit, int? offset)?
        searchQuery,
    TResult Function(String zipcode, int sum, String cityId)? selectedAddress,
    required TResult orElse(),
  }) {
    if (searchQuery != null) {
      return searchQuery(contentType, query, cityId, streetId, limit, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQuerySearchLocationEvent value) searchQuery,
    required TResult Function(SelectedAddressLocationEvent value)
        selectedAddress,
  }) {
    return searchQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchQuerySearchLocationEvent value)? searchQuery,
    TResult? Function(SelectedAddressLocationEvent value)? selectedAddress,
  }) {
    return searchQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQuerySearchLocationEvent value)? searchQuery,
    TResult Function(SelectedAddressLocationEvent value)? selectedAddress,
    required TResult orElse(),
  }) {
    if (searchQuery != null) {
      return searchQuery(this);
    }
    return orElse();
  }
}

abstract class SearchQuerySearchLocationEvent implements SearchLocationEvent {
  const factory SearchQuerySearchLocationEvent(
      {required final String contentType,
      final String? query,
      final String? cityId,
      final String? streetId,
      final int? limit,
      final int? offset}) = _$SearchQuerySearchLocationEventImpl;

  String get contentType;
  String? get query;
  @override
  String? get cityId;
  String? get streetId;
  int? get limit;
  int? get offset;
  @override
  @JsonKey(ignore: true)
  _$$SearchQuerySearchLocationEventImplCopyWith<
          _$SearchQuerySearchLocationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedAddressLocationEventImplCopyWith<$Res>
    implements $SearchLocationEventCopyWith<$Res> {
  factory _$$SelectedAddressLocationEventImplCopyWith(
          _$SelectedAddressLocationEventImpl value,
          $Res Function(_$SelectedAddressLocationEventImpl) then) =
      __$$SelectedAddressLocationEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String zipcode, int sum, String cityId});
}

/// @nodoc
class __$$SelectedAddressLocationEventImplCopyWithImpl<$Res>
    extends _$SearchLocationEventCopyWithImpl<$Res,
        _$SelectedAddressLocationEventImpl>
    implements _$$SelectedAddressLocationEventImplCopyWith<$Res> {
  __$$SelectedAddressLocationEventImplCopyWithImpl(
      _$SelectedAddressLocationEventImpl _value,
      $Res Function(_$SelectedAddressLocationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zipcode = null,
    Object? sum = null,
    Object? cityId = null,
  }) {
    return _then(_$SelectedAddressLocationEventImpl(
      zipcode: null == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectedAddressLocationEventImpl
    implements SelectedAddressLocationEvent {
  const _$SelectedAddressLocationEventImpl(
      {required this.zipcode, required this.sum, required this.cityId});

  @override
  final String zipcode;
  @override
  final int sum;
  @override
  final String cityId;

  @override
  String toString() {
    return 'SearchLocationEvent.selectedAddress(zipcode: $zipcode, sum: $sum, cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedAddressLocationEventImpl &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, zipcode, sum, cityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedAddressLocationEventImplCopyWith<
          _$SelectedAddressLocationEventImpl>
      get copyWith => __$$SelectedAddressLocationEventImplCopyWithImpl<
          _$SelectedAddressLocationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentType, String? query, String? cityId,
            String? streetId, int? limit, int? offset)
        searchQuery,
    required TResult Function(String zipcode, int sum, String cityId)
        selectedAddress,
  }) {
    return selectedAddress(zipcode, sum, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentType, String? query, String? cityId,
            String? streetId, int? limit, int? offset)?
        searchQuery,
    TResult? Function(String zipcode, int sum, String cityId)? selectedAddress,
  }) {
    return selectedAddress?.call(zipcode, sum, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentType, String? query, String? cityId,
            String? streetId, int? limit, int? offset)?
        searchQuery,
    TResult Function(String zipcode, int sum, String cityId)? selectedAddress,
    required TResult orElse(),
  }) {
    if (selectedAddress != null) {
      return selectedAddress(zipcode, sum, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQuerySearchLocationEvent value) searchQuery,
    required TResult Function(SelectedAddressLocationEvent value)
        selectedAddress,
  }) {
    return selectedAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchQuerySearchLocationEvent value)? searchQuery,
    TResult? Function(SelectedAddressLocationEvent value)? selectedAddress,
  }) {
    return selectedAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQuerySearchLocationEvent value)? searchQuery,
    TResult Function(SelectedAddressLocationEvent value)? selectedAddress,
    required TResult orElse(),
  }) {
    if (selectedAddress != null) {
      return selectedAddress(this);
    }
    return orElse();
  }
}

abstract class SelectedAddressLocationEvent implements SearchLocationEvent {
  const factory SelectedAddressLocationEvent(
      {required final String zipcode,
      required final int sum,
      required final String cityId}) = _$SelectedAddressLocationEventImpl;

  String get zipcode;
  int get sum;
  @override
  String get cityId;
  @override
  @JsonKey(ignore: true)
  _$$SelectedAddressLocationEventImplCopyWith<
          _$SelectedAddressLocationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchLocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(SearchLocationDataModel searchResult, int price)
        preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(SearchLocationDataModel searchResult, int price)?
        preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(SearchLocationDataModel searchResult, int price)?
        preloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchLocationState value) init,
    required TResult Function(LoadingSearchLocationState value) load,
    required TResult Function(PreloadDataCompletedSearchLocationState value)
        preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchLocationState value)? init,
    TResult? Function(LoadingSearchLocationState value)? load,
    TResult? Function(PreloadDataCompletedSearchLocationState value)?
        preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchLocationState value)? init,
    TResult Function(LoadingSearchLocationState value)? load,
    TResult Function(PreloadDataCompletedSearchLocationState value)?
        preloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationStateCopyWith<$Res> {
  factory $SearchLocationStateCopyWith(
          SearchLocationState value, $Res Function(SearchLocationState) then) =
      _$SearchLocationStateCopyWithImpl<$Res, SearchLocationState>;
}

/// @nodoc
class _$SearchLocationStateCopyWithImpl<$Res, $Val extends SearchLocationState>
    implements $SearchLocationStateCopyWith<$Res> {
  _$SearchLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitSearchLocationStateImplCopyWith<$Res> {
  factory _$$InitSearchLocationStateImplCopyWith(
          _$InitSearchLocationStateImpl value,
          $Res Function(_$InitSearchLocationStateImpl) then) =
      __$$InitSearchLocationStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitSearchLocationStateImplCopyWithImpl<$Res>
    extends _$SearchLocationStateCopyWithImpl<$Res,
        _$InitSearchLocationStateImpl>
    implements _$$InitSearchLocationStateImplCopyWith<$Res> {
  __$$InitSearchLocationStateImplCopyWithImpl(
      _$InitSearchLocationStateImpl _value,
      $Res Function(_$InitSearchLocationStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitSearchLocationStateImpl implements InitSearchLocationState {
  const _$InitSearchLocationStateImpl();

  @override
  String toString() {
    return 'SearchLocationState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitSearchLocationStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(SearchLocationDataModel searchResult, int price)
        preloadData,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(SearchLocationDataModel searchResult, int price)?
        preloadData,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(SearchLocationDataModel searchResult, int price)?
        preloadData,
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
    required TResult Function(InitSearchLocationState value) init,
    required TResult Function(LoadingSearchLocationState value) load,
    required TResult Function(PreloadDataCompletedSearchLocationState value)
        preloadData,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchLocationState value)? init,
    TResult? Function(LoadingSearchLocationState value)? load,
    TResult? Function(PreloadDataCompletedSearchLocationState value)?
        preloadData,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchLocationState value)? init,
    TResult Function(LoadingSearchLocationState value)? load,
    TResult Function(PreloadDataCompletedSearchLocationState value)?
        preloadData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitSearchLocationState implements SearchLocationState {
  const factory InitSearchLocationState() = _$InitSearchLocationStateImpl;
}

/// @nodoc
abstract class _$$LoadingSearchLocationStateImplCopyWith<$Res> {
  factory _$$LoadingSearchLocationStateImplCopyWith(
          _$LoadingSearchLocationStateImpl value,
          $Res Function(_$LoadingSearchLocationStateImpl) then) =
      __$$LoadingSearchLocationStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSearchLocationStateImplCopyWithImpl<$Res>
    extends _$SearchLocationStateCopyWithImpl<$Res,
        _$LoadingSearchLocationStateImpl>
    implements _$$LoadingSearchLocationStateImplCopyWith<$Res> {
  __$$LoadingSearchLocationStateImplCopyWithImpl(
      _$LoadingSearchLocationStateImpl _value,
      $Res Function(_$LoadingSearchLocationStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingSearchLocationStateImpl implements LoadingSearchLocationState {
  const _$LoadingSearchLocationStateImpl();

  @override
  String toString() {
    return 'SearchLocationState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingSearchLocationStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(SearchLocationDataModel searchResult, int price)
        preloadData,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(SearchLocationDataModel searchResult, int price)?
        preloadData,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(SearchLocationDataModel searchResult, int price)?
        preloadData,
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
    required TResult Function(InitSearchLocationState value) init,
    required TResult Function(LoadingSearchLocationState value) load,
    required TResult Function(PreloadDataCompletedSearchLocationState value)
        preloadData,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchLocationState value)? init,
    TResult? Function(LoadingSearchLocationState value)? load,
    TResult? Function(PreloadDataCompletedSearchLocationState value)?
        preloadData,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchLocationState value)? init,
    TResult Function(LoadingSearchLocationState value)? load,
    TResult Function(PreloadDataCompletedSearchLocationState value)?
        preloadData,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingSearchLocationState implements SearchLocationState {
  const factory LoadingSearchLocationState() = _$LoadingSearchLocationStateImpl;
}

/// @nodoc
abstract class _$$PreloadDataCompletedSearchLocationStateImplCopyWith<$Res> {
  factory _$$PreloadDataCompletedSearchLocationStateImplCopyWith(
          _$PreloadDataCompletedSearchLocationStateImpl value,
          $Res Function(_$PreloadDataCompletedSearchLocationStateImpl) then) =
      __$$PreloadDataCompletedSearchLocationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchLocationDataModel searchResult, int price});

  $SearchLocationDataModelCopyWith<$Res> get searchResult;
}

/// @nodoc
class __$$PreloadDataCompletedSearchLocationStateImplCopyWithImpl<$Res>
    extends _$SearchLocationStateCopyWithImpl<$Res,
        _$PreloadDataCompletedSearchLocationStateImpl>
    implements _$$PreloadDataCompletedSearchLocationStateImplCopyWith<$Res> {
  __$$PreloadDataCompletedSearchLocationStateImplCopyWithImpl(
      _$PreloadDataCompletedSearchLocationStateImpl _value,
      $Res Function(_$PreloadDataCompletedSearchLocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
    Object? price = null,
  }) {
    return _then(_$PreloadDataCompletedSearchLocationStateImpl(
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchLocationDataModel,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchLocationDataModelCopyWith<$Res> get searchResult {
    return $SearchLocationDataModelCopyWith<$Res>(_value.searchResult, (value) {
      return _then(_value.copyWith(searchResult: value));
    });
  }
}

/// @nodoc

class _$PreloadDataCompletedSearchLocationStateImpl
    implements PreloadDataCompletedSearchLocationState {
  const _$PreloadDataCompletedSearchLocationStateImpl(
      {required this.searchResult, required this.price});

  @override
  final SearchLocationDataModel searchResult;
  @override
  final int price;

  @override
  String toString() {
    return 'SearchLocationState.preloadData(searchResult: $searchResult, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedSearchLocationStateImpl &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchResult, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataCompletedSearchLocationStateImplCopyWith<
          _$PreloadDataCompletedSearchLocationStateImpl>
      get copyWith =>
          __$$PreloadDataCompletedSearchLocationStateImplCopyWithImpl<
              _$PreloadDataCompletedSearchLocationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(SearchLocationDataModel searchResult, int price)
        preloadData,
  }) {
    return preloadData(searchResult, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(SearchLocationDataModel searchResult, int price)?
        preloadData,
  }) {
    return preloadData?.call(searchResult, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(SearchLocationDataModel searchResult, int price)?
        preloadData,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(searchResult, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchLocationState value) init,
    required TResult Function(LoadingSearchLocationState value) load,
    required TResult Function(PreloadDataCompletedSearchLocationState value)
        preloadData,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchLocationState value)? init,
    TResult? Function(LoadingSearchLocationState value)? load,
    TResult? Function(PreloadDataCompletedSearchLocationState value)?
        preloadData,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchLocationState value)? init,
    TResult Function(LoadingSearchLocationState value)? load,
    TResult Function(PreloadDataCompletedSearchLocationState value)?
        preloadData,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class PreloadDataCompletedSearchLocationState
    implements SearchLocationState {
  const factory PreloadDataCompletedSearchLocationState(
          {required final SearchLocationDataModel searchResult,
          required final int price}) =
      _$PreloadDataCompletedSearchLocationStateImpl;

  SearchLocationDataModel get searchResult;
  int get price;
  @JsonKey(ignore: true)
  _$$PreloadDataCompletedSearchLocationStateImplCopyWith<
          _$PreloadDataCompletedSearchLocationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
