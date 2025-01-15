// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_product_video_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailProductVideoDataModel {
  String get v => throw _privateConstructorUsedError;
  String get i => throw _privateConstructorUsedError;

  /// Create a copy of DetailProductVideoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailProductVideoDataModelCopyWith<DetailProductVideoDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailProductVideoDataModelCopyWith<$Res> {
  factory $DetailProductVideoDataModelCopyWith(
          DetailProductVideoDataModel value,
          $Res Function(DetailProductVideoDataModel) then) =
      _$DetailProductVideoDataModelCopyWithImpl<$Res,
          DetailProductVideoDataModel>;
  @useResult
  $Res call({String v, String i});
}

/// @nodoc
class _$DetailProductVideoDataModelCopyWithImpl<$Res,
        $Val extends DetailProductVideoDataModel>
    implements $DetailProductVideoDataModelCopyWith<$Res> {
  _$DetailProductVideoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailProductVideoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? v = null,
    Object? i = null,
  }) {
    return _then(_value.copyWith(
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String,
      i: null == i
          ? _value.i
          : i // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailProductVideoDataModelImplCopyWith<$Res>
    implements $DetailProductVideoDataModelCopyWith<$Res> {
  factory _$$DetailProductVideoDataModelImplCopyWith(
          _$DetailProductVideoDataModelImpl value,
          $Res Function(_$DetailProductVideoDataModelImpl) then) =
      __$$DetailProductVideoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String v, String i});
}

/// @nodoc
class __$$DetailProductVideoDataModelImplCopyWithImpl<$Res>
    extends _$DetailProductVideoDataModelCopyWithImpl<$Res,
        _$DetailProductVideoDataModelImpl>
    implements _$$DetailProductVideoDataModelImplCopyWith<$Res> {
  __$$DetailProductVideoDataModelImplCopyWithImpl(
      _$DetailProductVideoDataModelImpl _value,
      $Res Function(_$DetailProductVideoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailProductVideoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? v = null,
    Object? i = null,
  }) {
    return _then(_$DetailProductVideoDataModelImpl(
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String,
      i: null == i
          ? _value.i
          : i // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailProductVideoDataModelImpl extends _DetailProductVideoDataModel {
  _$DetailProductVideoDataModelImpl({required this.v, required this.i})
      : super._();

  @override
  final String v;
  @override
  final String i;

  @override
  String toString() {
    return 'DetailProductVideoDataModel(v: $v, i: $i)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailProductVideoDataModelImpl &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.i, i) || other.i == i));
  }

  @override
  int get hashCode => Object.hash(runtimeType, v, i);

  /// Create a copy of DetailProductVideoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailProductVideoDataModelImplCopyWith<_$DetailProductVideoDataModelImpl>
      get copyWith => __$$DetailProductVideoDataModelImplCopyWithImpl<
          _$DetailProductVideoDataModelImpl>(this, _$identity);
}

abstract class _DetailProductVideoDataModel
    extends DetailProductVideoDataModel {
  factory _DetailProductVideoDataModel(
      {required final String v,
      required final String i}) = _$DetailProductVideoDataModelImpl;
  _DetailProductVideoDataModel._() : super._();

  @override
  String get v;
  @override
  String get i;

  /// Create a copy of DetailProductVideoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailProductVideoDataModelImplCopyWith<_$DetailProductVideoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
