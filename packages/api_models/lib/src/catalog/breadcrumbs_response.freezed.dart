// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breadcrumbs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BreadcrumbsResponse _$BreadcrumbsResponseFromJson(Map<String, dynamic> json) {
  return _BreadcrumbsResponse.fromJson(json);
}

/// @nodoc
mixin _$BreadcrumbsResponse {
  @JsonKey(name: 'Женщинам')
  String? get women => throw _privateConstructorUsedError;
  @JsonKey(name: 'Оптика')
  String? get optics => throw _privateConstructorUsedError;
  @JsonKey(name: 'Очки')
  String? get glasses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreadcrumbsResponseCopyWith<BreadcrumbsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreadcrumbsResponseCopyWith<$Res> {
  factory $BreadcrumbsResponseCopyWith(
          BreadcrumbsResponse value, $Res Function(BreadcrumbsResponse) then) =
      _$BreadcrumbsResponseCopyWithImpl<$Res, BreadcrumbsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Женщинам') String? women,
      @JsonKey(name: 'Оптика') String? optics,
      @JsonKey(name: 'Очки') String? glasses});
}

/// @nodoc
class _$BreadcrumbsResponseCopyWithImpl<$Res, $Val extends BreadcrumbsResponse>
    implements $BreadcrumbsResponseCopyWith<$Res> {
  _$BreadcrumbsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? women = freezed,
    Object? optics = freezed,
    Object? glasses = freezed,
  }) {
    return _then(_value.copyWith(
      women: freezed == women
          ? _value.women
          : women // ignore: cast_nullable_to_non_nullable
              as String?,
      optics: freezed == optics
          ? _value.optics
          : optics // ignore: cast_nullable_to_non_nullable
              as String?,
      glasses: freezed == glasses
          ? _value.glasses
          : glasses // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreadcrumbsResponseImplCopyWith<$Res>
    implements $BreadcrumbsResponseCopyWith<$Res> {
  factory _$$BreadcrumbsResponseImplCopyWith(_$BreadcrumbsResponseImpl value,
          $Res Function(_$BreadcrumbsResponseImpl) then) =
      __$$BreadcrumbsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Женщинам') String? women,
      @JsonKey(name: 'Оптика') String? optics,
      @JsonKey(name: 'Очки') String? glasses});
}

/// @nodoc
class __$$BreadcrumbsResponseImplCopyWithImpl<$Res>
    extends _$BreadcrumbsResponseCopyWithImpl<$Res, _$BreadcrumbsResponseImpl>
    implements _$$BreadcrumbsResponseImplCopyWith<$Res> {
  __$$BreadcrumbsResponseImplCopyWithImpl(_$BreadcrumbsResponseImpl _value,
      $Res Function(_$BreadcrumbsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? women = freezed,
    Object? optics = freezed,
    Object? glasses = freezed,
  }) {
    return _then(_$BreadcrumbsResponseImpl(
      women: freezed == women
          ? _value.women
          : women // ignore: cast_nullable_to_non_nullable
              as String?,
      optics: freezed == optics
          ? _value.optics
          : optics // ignore: cast_nullable_to_non_nullable
              as String?,
      glasses: freezed == glasses
          ? _value.glasses
          : glasses // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreadcrumbsResponseImpl extends _BreadcrumbsResponse {
  _$BreadcrumbsResponseImpl(
      {@JsonKey(name: 'Женщинам') this.women,
      @JsonKey(name: 'Оптика') this.optics,
      @JsonKey(name: 'Очки') this.glasses})
      : super._();

  factory _$BreadcrumbsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreadcrumbsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Женщинам')
  final String? women;
  @override
  @JsonKey(name: 'Оптика')
  final String? optics;
  @override
  @JsonKey(name: 'Очки')
  final String? glasses;

  @override
  String toString() {
    return 'BreadcrumbsResponse(women: $women, optics: $optics, glasses: $glasses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreadcrumbsResponseImpl &&
            (identical(other.women, women) || other.women == women) &&
            (identical(other.optics, optics) || other.optics == optics) &&
            (identical(other.glasses, glasses) || other.glasses == glasses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, women, optics, glasses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreadcrumbsResponseImplCopyWith<_$BreadcrumbsResponseImpl> get copyWith =>
      __$$BreadcrumbsResponseImplCopyWithImpl<_$BreadcrumbsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreadcrumbsResponseImplToJson(
      this,
    );
  }
}

abstract class _BreadcrumbsResponse extends BreadcrumbsResponse {
  factory _BreadcrumbsResponse(
          {@JsonKey(name: 'Женщинам') final String? women,
          @JsonKey(name: 'Оптика') final String? optics,
          @JsonKey(name: 'Очки') final String? glasses}) =
      _$BreadcrumbsResponseImpl;
  _BreadcrumbsResponse._() : super._();

  factory _BreadcrumbsResponse.fromJson(Map<String, dynamic> json) =
      _$BreadcrumbsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Женщинам')
  String? get women;
  @override
  @JsonKey(name: 'Оптика')
  String? get optics;
  @override
  @JsonKey(name: 'Очки')
  String? get glasses;
  @override
  @JsonKey(ignore: true)
  _$$BreadcrumbsResponseImplCopyWith<_$BreadcrumbsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
