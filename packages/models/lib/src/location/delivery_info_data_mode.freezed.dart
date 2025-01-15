// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_info_data_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryInfoDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryInfoDataModelCopyWith<DeliveryInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInfoDataModelCopyWith<$Res> {
  factory $DeliveryInfoDataModelCopyWith(DeliveryInfoDataModel value,
          $Res Function(DeliveryInfoDataModel) then) =
      _$DeliveryInfoDataModelCopyWithImpl<$Res, DeliveryInfoDataModel>;
  @useResult
  $Res call({String r, String e, String errorMessage});
}

/// @nodoc
class _$DeliveryInfoDataModelCopyWithImpl<$Res,
        $Val extends DeliveryInfoDataModel>
    implements $DeliveryInfoDataModelCopyWith<$Res> {
  _$DeliveryInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
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
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryInfoDataModelImplCopyWith<$Res>
    implements $DeliveryInfoDataModelCopyWith<$Res> {
  factory _$$DeliveryInfoDataModelImplCopyWith(
          _$DeliveryInfoDataModelImpl value,
          $Res Function(_$DeliveryInfoDataModelImpl) then) =
      __$$DeliveryInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String e, String errorMessage});
}

/// @nodoc
class __$$DeliveryInfoDataModelImplCopyWithImpl<$Res>
    extends _$DeliveryInfoDataModelCopyWithImpl<$Res,
        _$DeliveryInfoDataModelImpl>
    implements _$$DeliveryInfoDataModelImplCopyWith<$Res> {
  __$$DeliveryInfoDataModelImplCopyWithImpl(_$DeliveryInfoDataModelImpl _value,
      $Res Function(_$DeliveryInfoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
  }) {
    return _then(_$DeliveryInfoDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeliveryInfoDataModelImpl extends _DeliveryInfoDataModel {
  _$DeliveryInfoDataModelImpl(
      {required this.r, required this.e, required this.errorMessage})
      : super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DeliveryInfoDataModel(r: $r, e: $e, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryInfoDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage);

  /// Create a copy of DeliveryInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryInfoDataModelImplCopyWith<_$DeliveryInfoDataModelImpl>
      get copyWith => __$$DeliveryInfoDataModelImplCopyWithImpl<
          _$DeliveryInfoDataModelImpl>(this, _$identity);
}

abstract class _DeliveryInfoDataModel extends DeliveryInfoDataModel {
  factory _DeliveryInfoDataModel(
      {required final String r,
      required final String e,
      required final String errorMessage}) = _$DeliveryInfoDataModelImpl;
  _DeliveryInfoDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  String get errorMessage;

  /// Create a copy of DeliveryInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryInfoDataModelImplCopyWith<_$DeliveryInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
