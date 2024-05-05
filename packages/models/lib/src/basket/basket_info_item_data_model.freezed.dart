// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_info_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketInfoItemDataModel {
  String get code => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketInfoItemDataModelCopyWith<BasketInfoItemDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketInfoItemDataModelCopyWith<$Res> {
  factory $BasketInfoItemDataModelCopyWith(BasketInfoItemDataModel value,
          $Res Function(BasketInfoItemDataModel) then) =
      _$BasketInfoItemDataModelCopyWithImpl<$Res, BasketInfoItemDataModel>;
  @useResult
  $Res call({String code, String sku, int count});
}

/// @nodoc
class _$BasketInfoItemDataModelCopyWithImpl<$Res,
        $Val extends BasketInfoItemDataModel>
    implements $BasketInfoItemDataModelCopyWith<$Res> {
  _$BasketInfoItemDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? sku = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketInfoItemDataModelImplCopyWith<$Res>
    implements $BasketInfoItemDataModelCopyWith<$Res> {
  factory _$$BasketInfoItemDataModelImplCopyWith(
          _$BasketInfoItemDataModelImpl value,
          $Res Function(_$BasketInfoItemDataModelImpl) then) =
      __$$BasketInfoItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String sku, int count});
}

/// @nodoc
class __$$BasketInfoItemDataModelImplCopyWithImpl<$Res>
    extends _$BasketInfoItemDataModelCopyWithImpl<$Res,
        _$BasketInfoItemDataModelImpl>
    implements _$$BasketInfoItemDataModelImplCopyWith<$Res> {
  __$$BasketInfoItemDataModelImplCopyWithImpl(
      _$BasketInfoItemDataModelImpl _value,
      $Res Function(_$BasketInfoItemDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? sku = null,
    Object? count = null,
  }) {
    return _then(_$BasketInfoItemDataModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BasketInfoItemDataModelImpl extends _BasketInfoItemDataModel {
  _$BasketInfoItemDataModelImpl(
      {required this.code, required this.sku, required this.count})
      : super._();

  @override
  final String code;
  @override
  final String sku;
  @override
  final int count;

  @override
  String toString() {
    return 'BasketInfoItemDataModel(code: $code, sku: $sku, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketInfoItemDataModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, sku, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketInfoItemDataModelImplCopyWith<_$BasketInfoItemDataModelImpl>
      get copyWith => __$$BasketInfoItemDataModelImplCopyWithImpl<
          _$BasketInfoItemDataModelImpl>(this, _$identity);
}

abstract class _BasketInfoItemDataModel extends BasketInfoItemDataModel {
  factory _BasketInfoItemDataModel(
      {required final String code,
      required final String sku,
      required final int count}) = _$BasketInfoItemDataModelImpl;
  _BasketInfoItemDataModel._() : super._();

  @override
  String get code;
  @override
  String get sku;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$BasketInfoItemDataModelImplCopyWith<_$BasketInfoItemDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
