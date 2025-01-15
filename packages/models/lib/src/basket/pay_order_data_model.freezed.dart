// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_order_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PayOrderDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Create a copy of PayOrderDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayOrderDataModelCopyWith<PayOrderDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayOrderDataModelCopyWith<$Res> {
  factory $PayOrderDataModelCopyWith(
          PayOrderDataModel value, $Res Function(PayOrderDataModel) then) =
      _$PayOrderDataModelCopyWithImpl<$Res, PayOrderDataModel>;
  @useResult
  $Res call({String r, String e, String url});
}

/// @nodoc
class _$PayOrderDataModelCopyWithImpl<$Res, $Val extends PayOrderDataModel>
    implements $PayOrderDataModelCopyWith<$Res> {
  _$PayOrderDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayOrderDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayOrderDataModelImplCopyWith<$Res>
    implements $PayOrderDataModelCopyWith<$Res> {
  factory _$$PayOrderDataModelImplCopyWith(_$PayOrderDataModelImpl value,
          $Res Function(_$PayOrderDataModelImpl) then) =
      __$$PayOrderDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String e, String url});
}

/// @nodoc
class __$$PayOrderDataModelImplCopyWithImpl<$Res>
    extends _$PayOrderDataModelCopyWithImpl<$Res, _$PayOrderDataModelImpl>
    implements _$$PayOrderDataModelImplCopyWith<$Res> {
  __$$PayOrderDataModelImplCopyWithImpl(_$PayOrderDataModelImpl _value,
      $Res Function(_$PayOrderDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayOrderDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? url = null,
  }) {
    return _then(_$PayOrderDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PayOrderDataModelImpl extends _PayOrderDataModel {
  _$PayOrderDataModelImpl({required this.r, required this.e, required this.url})
      : super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final String url;

  @override
  String toString() {
    return 'PayOrderDataModel(r: $r, e: $e, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayOrderDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e, url);

  /// Create a copy of PayOrderDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayOrderDataModelImplCopyWith<_$PayOrderDataModelImpl> get copyWith =>
      __$$PayOrderDataModelImplCopyWithImpl<_$PayOrderDataModelImpl>(
          this, _$identity);
}

abstract class _PayOrderDataModel extends PayOrderDataModel {
  factory _PayOrderDataModel(
      {required final String r,
      required final String e,
      required final String url}) = _$PayOrderDataModelImpl;
  _PayOrderDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  String get url;

  /// Create a copy of PayOrderDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayOrderDataModelImplCopyWith<_$PayOrderDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
