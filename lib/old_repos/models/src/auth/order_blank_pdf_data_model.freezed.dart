// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_blank_pdf_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderBlankPdfDataModel {
  String get r => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get pdf => throw _privateConstructorUsedError;

  /// Create a copy of OrderBlankPdfDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderBlankPdfDataModelCopyWith<OrderBlankPdfDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBlankPdfDataModelCopyWith<$Res> {
  factory $OrderBlankPdfDataModelCopyWith(OrderBlankPdfDataModel value,
          $Res Function(OrderBlankPdfDataModel) then) =
      _$OrderBlankPdfDataModelCopyWithImpl<$Res, OrderBlankPdfDataModel>;
  @useResult
  $Res call({String r, String message, String pdf});
}

/// @nodoc
class _$OrderBlankPdfDataModelCopyWithImpl<$Res,
        $Val extends OrderBlankPdfDataModel>
    implements $OrderBlankPdfDataModelCopyWith<$Res> {
  _$OrderBlankPdfDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderBlankPdfDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? message = null,
    Object? pdf = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      pdf: null == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderBlankPdfDataModelImplCopyWith<$Res>
    implements $OrderBlankPdfDataModelCopyWith<$Res> {
  factory _$$OrderBlankPdfDataModelImplCopyWith(
          _$OrderBlankPdfDataModelImpl value,
          $Res Function(_$OrderBlankPdfDataModelImpl) then) =
      __$$OrderBlankPdfDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String message, String pdf});
}

/// @nodoc
class __$$OrderBlankPdfDataModelImplCopyWithImpl<$Res>
    extends _$OrderBlankPdfDataModelCopyWithImpl<$Res,
        _$OrderBlankPdfDataModelImpl>
    implements _$$OrderBlankPdfDataModelImplCopyWith<$Res> {
  __$$OrderBlankPdfDataModelImplCopyWithImpl(
      _$OrderBlankPdfDataModelImpl _value,
      $Res Function(_$OrderBlankPdfDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderBlankPdfDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? message = null,
    Object? pdf = null,
  }) {
    return _then(_$OrderBlankPdfDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      pdf: null == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderBlankPdfDataModelImpl extends _OrderBlankPdfDataModel {
  _$OrderBlankPdfDataModelImpl(
      {required this.r, required this.message, required this.pdf})
      : super._();

  @override
  final String r;
  @override
  final String message;
  @override
  final String pdf;

  @override
  String toString() {
    return 'OrderBlankPdfDataModel(r: $r, message: $message, pdf: $pdf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderBlankPdfDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pdf, pdf) || other.pdf == pdf));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, message, pdf);

  /// Create a copy of OrderBlankPdfDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderBlankPdfDataModelImplCopyWith<_$OrderBlankPdfDataModelImpl>
      get copyWith => __$$OrderBlankPdfDataModelImplCopyWithImpl<
          _$OrderBlankPdfDataModelImpl>(this, _$identity);
}

abstract class _OrderBlankPdfDataModel extends OrderBlankPdfDataModel {
  factory _OrderBlankPdfDataModel(
      {required final String r,
      required final String message,
      required final String pdf}) = _$OrderBlankPdfDataModelImpl;
  _OrderBlankPdfDataModel._() : super._();

  @override
  String get r;
  @override
  String get message;
  @override
  String get pdf;

  /// Create a copy of OrderBlankPdfDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderBlankPdfDataModelImplCopyWith<_$OrderBlankPdfDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
