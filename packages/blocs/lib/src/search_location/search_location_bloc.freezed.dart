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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchLocationEvent {
  String? get cityId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentType, String? query, String? cityId,
            String? streetId, int? withParent, int? limit, int? offset)
        searchQuery,
    required TResult Function(String zipcode, int sum, String cityId)
        selectedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentType, String? query, String? cityId,
            String? streetId, int? withParent, int? limit, int? offset)?
        searchQuery,
    TResult? Function(String zipcode, int sum, String cityId)? selectedAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentType, String? query, String? cityId,
            String? streetId, int? withParent, int? limit, int? offset)?
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

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
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
      int? withParent,
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

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? query = freezed,
    Object? cityId = freezed,
    Object? streetId = freezed,
    Object? withParent = freezed,
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
      withParent: freezed == withParent
          ? _value.withParent
          : withParent // ignore: cast_nullable_to_non_nullable
              as int?,
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
      this.withParent,
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
  final int? withParent;
  @override
  final int? limit;
  @override
  final int? offset;

  @override
  String toString() {
    return 'SearchLocationEvent.searchQuery(contentType: $contentType, query: $query, cityId: $cityId, streetId: $streetId, withParent: $withParent, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQuerySearchLocationEventImpl &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.streetId, streetId) ||
                other.streetId == streetId) &&
            (identical(other.withParent, withParent) ||
                other.withParent == withParent) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentType, query, cityId,
      streetId, withParent, limit, offset);

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
            String? streetId, int? withParent, int? limit, int? offset)
        searchQuery,
    required TResult Function(String zipcode, int sum, String cityId)
        selectedAddress,
  }) {
    return searchQuery(
        contentType, query, cityId, streetId, withParent, limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentType, String? query, String? cityId,
            String? streetId, int? withParent, int? limit, int? offset)?
        searchQuery,
    TResult? Function(String zipcode, int sum, String cityId)? selectedAddress,
  }) {
    return searchQuery?.call(
        contentType, query, cityId, streetId, withParent, limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentType, String? query, String? cityId,
            String? streetId, int? withParent, int? limit, int? offset)?
        searchQuery,
    TResult Function(String zipcode, int sum, String cityId)? selectedAddress,
    required TResult orElse(),
  }) {
    if (searchQuery != null) {
      return searchQuery(
          contentType, query, cityId, streetId, withParent, limit, offset);
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
      final int? withParent,
      final int? limit,
      final int? offset}) = _$SearchQuerySearchLocationEventImpl;

  String get contentType;
  String? get query;
  @override
  String? get cityId;
  String? get streetId;
  int? get withParent;
  int? get limit;
  int? get offset;

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedAddressLocationEventImpl &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, zipcode, sum, cityId);

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
            String? streetId, int? withParent, int? limit, int? offset)
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
            String? streetId, int? withParent, int? limit, int? offset)?
        searchQuery,
    TResult? Function(String zipcode, int sum, String cityId)? selectedAddress,
  }) {
    return selectedAddress?.call(zipcode, sum, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentType, String? query, String? cityId,
            String? streetId, int? withParent, int? limit, int? offset)?
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

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(SearchLocationDataModel searchResult) preloadData,
    required TResult Function(int price, String cityId) selectInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(SearchLocationDataModel searchResult)? preloadData,
    TResult? Function(int price, String cityId)? selectInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(SearchLocationDataModel searchResult)? preloadData,
    TResult Function(int price, String cityId)? selectInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchLocationState value) init,
    required TResult Function(LoadingSearchLocationState value) load,
    required TResult Function(PreloadDataCompletedSearchLocationState value)
        preloadData,
    required TResult Function(SelectInfoCompletedSearchLocationState value)
        selectInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchLocationState value)? init,
    TResult? Function(LoadingSearchLocationState value)? load,
    TResult? Function(PreloadDataCompletedSearchLocationState value)?
        preloadData,
    TResult? Function(SelectInfoCompletedSearchLocationState value)? selectInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchLocationState value)? init,
    TResult Function(LoadingSearchLocationState value)? load,
    TResult Function(PreloadDataCompletedSearchLocationState value)?
        preloadData,
    TResult Function(SelectInfoCompletedSearchLocationState value)? selectInfo,
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

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitSearchLocationStateImpl implements InitSearchLocationState {
  const _$InitSearchLocationStateImpl();

  @override
  String toString() {
    return 'SearchLocationState.init()';
  }

  @override
  bool operator ==(Object other) {
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
    required TResult Function(SearchLocationDataModel searchResult) preloadData,
    required TResult Function(int price, String cityId) selectInfo,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(SearchLocationDataModel searchResult)? preloadData,
    TResult? Function(int price, String cityId)? selectInfo,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(SearchLocationDataModel searchResult)? preloadData,
    TResult Function(int price, String cityId)? selectInfo,
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
    required TResult Function(SelectInfoCompletedSearchLocationState value)
        selectInfo,
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
    TResult? Function(SelectInfoCompletedSearchLocationState value)? selectInfo,
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
    TResult Function(SelectInfoCompletedSearchLocationState value)? selectInfo,
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

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingSearchLocationStateImpl implements LoadingSearchLocationState {
  const _$LoadingSearchLocationStateImpl();

  @override
  String toString() {
    return 'SearchLocationState.load()';
  }

  @override
  bool operator ==(Object other) {
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
    required TResult Function(SearchLocationDataModel searchResult) preloadData,
    required TResult Function(int price, String cityId) selectInfo,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(SearchLocationDataModel searchResult)? preloadData,
    TResult? Function(int price, String cityId)? selectInfo,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(SearchLocationDataModel searchResult)? preloadData,
    TResult Function(int price, String cityId)? selectInfo,
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
    required TResult Function(SelectInfoCompletedSearchLocationState value)
        selectInfo,
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
    TResult? Function(SelectInfoCompletedSearchLocationState value)? selectInfo,
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
    TResult Function(SelectInfoCompletedSearchLocationState value)? selectInfo,
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
  $Res call({SearchLocationDataModel searchResult});

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

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
  }) {
    return _then(_$PreloadDataCompletedSearchLocationStateImpl(
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchLocationDataModel,
    ));
  }

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
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
      {required this.searchResult});

  @override
  final SearchLocationDataModel searchResult;

  @override
  String toString() {
    return 'SearchLocationState.preloadData(searchResult: $searchResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedSearchLocationStateImpl &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchResult);

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(SearchLocationDataModel searchResult) preloadData,
    required TResult Function(int price, String cityId) selectInfo,
  }) {
    return preloadData(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(SearchLocationDataModel searchResult)? preloadData,
    TResult? Function(int price, String cityId)? selectInfo,
  }) {
    return preloadData?.call(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(SearchLocationDataModel searchResult)? preloadData,
    TResult Function(int price, String cityId)? selectInfo,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(searchResult);
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
    required TResult Function(SelectInfoCompletedSearchLocationState value)
        selectInfo,
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
    TResult? Function(SelectInfoCompletedSearchLocationState value)? selectInfo,
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
    TResult Function(SelectInfoCompletedSearchLocationState value)? selectInfo,
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
          {required final SearchLocationDataModel searchResult}) =
      _$PreloadDataCompletedSearchLocationStateImpl;

  SearchLocationDataModel get searchResult;

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreloadDataCompletedSearchLocationStateImplCopyWith<
          _$PreloadDataCompletedSearchLocationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectInfoCompletedSearchLocationStateImplCopyWith<$Res> {
  factory _$$SelectInfoCompletedSearchLocationStateImplCopyWith(
          _$SelectInfoCompletedSearchLocationStateImpl value,
          $Res Function(_$SelectInfoCompletedSearchLocationStateImpl) then) =
      __$$SelectInfoCompletedSearchLocationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int price, String cityId});
}

/// @nodoc
class __$$SelectInfoCompletedSearchLocationStateImplCopyWithImpl<$Res>
    extends _$SearchLocationStateCopyWithImpl<$Res,
        _$SelectInfoCompletedSearchLocationStateImpl>
    implements _$$SelectInfoCompletedSearchLocationStateImplCopyWith<$Res> {
  __$$SelectInfoCompletedSearchLocationStateImplCopyWithImpl(
      _$SelectInfoCompletedSearchLocationStateImpl _value,
      $Res Function(_$SelectInfoCompletedSearchLocationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? cityId = null,
  }) {
    return _then(_$SelectInfoCompletedSearchLocationStateImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectInfoCompletedSearchLocationStateImpl
    implements SelectInfoCompletedSearchLocationState {
  const _$SelectInfoCompletedSearchLocationStateImpl(
      {required this.price, required this.cityId});

  @override
  final int price;
  @override
  final String cityId;

  @override
  String toString() {
    return 'SearchLocationState.selectInfo(price: $price, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectInfoCompletedSearchLocationStateImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price, cityId);

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectInfoCompletedSearchLocationStateImplCopyWith<
          _$SelectInfoCompletedSearchLocationStateImpl>
      get copyWith =>
          __$$SelectInfoCompletedSearchLocationStateImplCopyWithImpl<
              _$SelectInfoCompletedSearchLocationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(SearchLocationDataModel searchResult) preloadData,
    required TResult Function(int price, String cityId) selectInfo,
  }) {
    return selectInfo(price, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(SearchLocationDataModel searchResult)? preloadData,
    TResult? Function(int price, String cityId)? selectInfo,
  }) {
    return selectInfo?.call(price, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(SearchLocationDataModel searchResult)? preloadData,
    TResult Function(int price, String cityId)? selectInfo,
    required TResult orElse(),
  }) {
    if (selectInfo != null) {
      return selectInfo(price, cityId);
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
    required TResult Function(SelectInfoCompletedSearchLocationState value)
        selectInfo,
  }) {
    return selectInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitSearchLocationState value)? init,
    TResult? Function(LoadingSearchLocationState value)? load,
    TResult? Function(PreloadDataCompletedSearchLocationState value)?
        preloadData,
    TResult? Function(SelectInfoCompletedSearchLocationState value)? selectInfo,
  }) {
    return selectInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchLocationState value)? init,
    TResult Function(LoadingSearchLocationState value)? load,
    TResult Function(PreloadDataCompletedSearchLocationState value)?
        preloadData,
    TResult Function(SelectInfoCompletedSearchLocationState value)? selectInfo,
    required TResult orElse(),
  }) {
    if (selectInfo != null) {
      return selectInfo(this);
    }
    return orElse();
  }
}

abstract class SelectInfoCompletedSearchLocationState
    implements SearchLocationState {
  const factory SelectInfoCompletedSearchLocationState(
          {required final int price, required final String cityId}) =
      _$SelectInfoCompletedSearchLocationStateImpl;

  int get price;
  String get cityId;

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectInfoCompletedSearchLocationStateImplCopyWith<
          _$SelectInfoCompletedSearchLocationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
