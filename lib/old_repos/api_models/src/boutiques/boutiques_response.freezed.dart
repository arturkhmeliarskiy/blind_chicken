// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutiques_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoutiquesResponse _$BoutiquesResponseFromJson(Map<String, dynamic> json) {
  return _BoutiquesResponse.fromJson(json);
}

/// @nodoc
mixin _$BoutiquesResponse {
  List<BoutiquesDataResponse>? get data => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoutiquesResponseCopyWith<BoutiquesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiquesResponseCopyWith<$Res> {
  factory $BoutiquesResponseCopyWith(
          BoutiquesResponse value, $Res Function(BoutiquesResponse) then) =
      _$BoutiquesResponseCopyWithImpl<$Res, BoutiquesResponse>;
  @useResult
  $Res call({List<BoutiquesDataResponse>? data, String? errorMessage});
}

/// @nodoc
class _$BoutiquesResponseCopyWithImpl<$Res, $Val extends BoutiquesResponse>
    implements $BoutiquesResponseCopyWith<$Res> {
  _$BoutiquesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BoutiquesDataResponse>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoutiquesResponseImplCopyWith<$Res>
    implements $BoutiquesResponseCopyWith<$Res> {
  factory _$$BoutiquesResponseImplCopyWith(_$BoutiquesResponseImpl value,
          $Res Function(_$BoutiquesResponseImpl) then) =
      __$$BoutiquesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BoutiquesDataResponse>? data, String? errorMessage});
}

/// @nodoc
class __$$BoutiquesResponseImplCopyWithImpl<$Res>
    extends _$BoutiquesResponseCopyWithImpl<$Res, _$BoutiquesResponseImpl>
    implements _$$BoutiquesResponseImplCopyWith<$Res> {
  __$$BoutiquesResponseImplCopyWithImpl(_$BoutiquesResponseImpl _value,
      $Res Function(_$BoutiquesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$BoutiquesResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BoutiquesDataResponse>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoutiquesResponseImpl extends _BoutiquesResponse {
  _$BoutiquesResponseImpl(
      {final List<BoutiquesDataResponse>? data, this.errorMessage})
      : _data = data,
        super._();

  factory _$BoutiquesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoutiquesResponseImplFromJson(json);

  final List<BoutiquesDataResponse>? _data;
  @override
  List<BoutiquesDataResponse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'BoutiquesResponse(data: $data, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiquesResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiquesResponseImplCopyWith<_$BoutiquesResponseImpl> get copyWith =>
      __$$BoutiquesResponseImplCopyWithImpl<_$BoutiquesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoutiquesResponseImplToJson(
      this,
    );
  }
}

abstract class _BoutiquesResponse extends BoutiquesResponse {
  factory _BoutiquesResponse(
      {final List<BoutiquesDataResponse>? data,
      final String? errorMessage}) = _$BoutiquesResponseImpl;
  _BoutiquesResponse._() : super._();

  factory _BoutiquesResponse.fromJson(Map<String, dynamic> json) =
      _$BoutiquesResponseImpl.fromJson;

  @override
  List<BoutiquesDataResponse>? get data;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$BoutiquesResponseImplCopyWith<_$BoutiquesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
