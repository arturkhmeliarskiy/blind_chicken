// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_context_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchContextResponse _$SearchContextResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchContextResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchContextResponse {
  String? get contentType => throw _privateConstructorUsedError;
  String? get cityId => throw _privateConstructorUsedError;
  String? get streetId => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchContextResponseCopyWith<SearchContextResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchContextResponseCopyWith<$Res> {
  factory $SearchContextResponseCopyWith(SearchContextResponse value,
          $Res Function(SearchContextResponse) then) =
      _$SearchContextResponseCopyWithImpl<$Res, SearchContextResponse>;
  @useResult
  $Res call(
      {String? contentType, String? cityId, String? streetId, String? query});
}

/// @nodoc
class _$SearchContextResponseCopyWithImpl<$Res,
        $Val extends SearchContextResponse>
    implements $SearchContextResponseCopyWith<$Res> {
  _$SearchContextResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = freezed,
    Object? cityId = freezed,
    Object? streetId = freezed,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      streetId: freezed == streetId
          ? _value.streetId
          : streetId // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchContextResponseImplCopyWith<$Res>
    implements $SearchContextResponseCopyWith<$Res> {
  factory _$$SearchContextResponseImplCopyWith(
          _$SearchContextResponseImpl value,
          $Res Function(_$SearchContextResponseImpl) then) =
      __$$SearchContextResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? contentType, String? cityId, String? streetId, String? query});
}

/// @nodoc
class __$$SearchContextResponseImplCopyWithImpl<$Res>
    extends _$SearchContextResponseCopyWithImpl<$Res,
        _$SearchContextResponseImpl>
    implements _$$SearchContextResponseImplCopyWith<$Res> {
  __$$SearchContextResponseImplCopyWithImpl(_$SearchContextResponseImpl _value,
      $Res Function(_$SearchContextResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = freezed,
    Object? cityId = freezed,
    Object? streetId = freezed,
    Object? query = freezed,
  }) {
    return _then(_$SearchContextResponseImpl(
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      streetId: freezed == streetId
          ? _value.streetId
          : streetId // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchContextResponseImpl extends _SearchContextResponse {
  _$SearchContextResponseImpl(
      {this.contentType, this.cityId, this.streetId, this.query})
      : super._();

  factory _$SearchContextResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchContextResponseImplFromJson(json);

  @override
  final String? contentType;
  @override
  final String? cityId;
  @override
  final String? streetId;
  @override
  final String? query;

  @override
  String toString() {
    return 'SearchContextResponse(contentType: $contentType, cityId: $cityId, streetId: $streetId, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchContextResponseImpl &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.streetId, streetId) ||
                other.streetId == streetId) &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contentType, cityId, streetId, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchContextResponseImplCopyWith<_$SearchContextResponseImpl>
      get copyWith => __$$SearchContextResponseImplCopyWithImpl<
          _$SearchContextResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchContextResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchContextResponse extends SearchContextResponse {
  factory _SearchContextResponse(
      {final String? contentType,
      final String? cityId,
      final String? streetId,
      final String? query}) = _$SearchContextResponseImpl;
  _SearchContextResponse._() : super._();

  factory _SearchContextResponse.fromJson(Map<String, dynamic> json) =
      _$SearchContextResponseImpl.fromJson;

  @override
  String? get contentType;
  @override
  String? get cityId;
  @override
  String? get streetId;
  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$SearchContextResponseImplCopyWith<_$SearchContextResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
