// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_full_info_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketFullInfoItemDataModel {
  String get code => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  BasketDataInfoDataModel get data => throw _privateConstructorUsedError;
  ProductDataModel get product => throw _privateConstructorUsedError;
  String get skuName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketFullInfoItemDataModelCopyWith<BasketFullInfoItemDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketFullInfoItemDataModelCopyWith<$Res> {
  factory $BasketFullInfoItemDataModelCopyWith(
          BasketFullInfoItemDataModel value,
          $Res Function(BasketFullInfoItemDataModel) then) =
      _$BasketFullInfoItemDataModelCopyWithImpl<$Res,
          BasketFullInfoItemDataModel>;
  @useResult
  $Res call(
      {String code,
      String sku,
      int count,
      BasketDataInfoDataModel data,
      ProductDataModel product,
      String skuName});

  $BasketDataInfoDataModelCopyWith<$Res> get data;
  $ProductDataModelCopyWith<$Res> get product;
}

/// @nodoc
class _$BasketFullInfoItemDataModelCopyWithImpl<$Res,
        $Val extends BasketFullInfoItemDataModel>
    implements $BasketFullInfoItemDataModelCopyWith<$Res> {
  _$BasketFullInfoItemDataModelCopyWithImpl(this._value, this._then);

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
    Object? data = null,
    Object? product = null,
    Object? skuName = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BasketDataInfoDataModel,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel,
      skuName: null == skuName
          ? _value.skuName
          : skuName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketDataInfoDataModelCopyWith<$Res> get data {
    return $BasketDataInfoDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDataModelCopyWith<$Res> get product {
    return $ProductDataModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BasketFullInfoItemDataModelImplCopyWith<$Res>
    implements $BasketFullInfoItemDataModelCopyWith<$Res> {
  factory _$$BasketFullInfoItemDataModelImplCopyWith(
          _$BasketFullInfoItemDataModelImpl value,
          $Res Function(_$BasketFullInfoItemDataModelImpl) then) =
      __$$BasketFullInfoItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String sku,
      int count,
      BasketDataInfoDataModel data,
      ProductDataModel product,
      String skuName});

  @override
  $BasketDataInfoDataModelCopyWith<$Res> get data;
  @override
  $ProductDataModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$BasketFullInfoItemDataModelImplCopyWithImpl<$Res>
    extends _$BasketFullInfoItemDataModelCopyWithImpl<$Res,
        _$BasketFullInfoItemDataModelImpl>
    implements _$$BasketFullInfoItemDataModelImplCopyWith<$Res> {
  __$$BasketFullInfoItemDataModelImplCopyWithImpl(
      _$BasketFullInfoItemDataModelImpl _value,
      $Res Function(_$BasketFullInfoItemDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? sku = null,
    Object? count = null,
    Object? data = null,
    Object? product = null,
    Object? skuName = null,
  }) {
    return _then(_$BasketFullInfoItemDataModelImpl(
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BasketDataInfoDataModel,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel,
      skuName: null == skuName
          ? _value.skuName
          : skuName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BasketFullInfoItemDataModelImpl extends _BasketFullInfoItemDataModel {
  _$BasketFullInfoItemDataModelImpl(
      {required this.code,
      required this.sku,
      required this.count,
      required this.data,
      required this.product,
      required this.skuName})
      : super._();

  @override
  final String code;
  @override
  final String sku;
  @override
  final int count;
  @override
  final BasketDataInfoDataModel data;
  @override
  final ProductDataModel product;
  @override
  final String skuName;

  @override
  String toString() {
    return 'BasketFullInfoItemDataModel(code: $code, sku: $sku, count: $count, data: $data, product: $product, skuName: $skuName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketFullInfoItemDataModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.skuName, skuName) || other.skuName == skuName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, sku, count, data, product, skuName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketFullInfoItemDataModelImplCopyWith<_$BasketFullInfoItemDataModelImpl>
      get copyWith => __$$BasketFullInfoItemDataModelImplCopyWithImpl<
          _$BasketFullInfoItemDataModelImpl>(this, _$identity);
}

abstract class _BasketFullInfoItemDataModel
    extends BasketFullInfoItemDataModel {
  factory _BasketFullInfoItemDataModel(
      {required final String code,
      required final String sku,
      required final int count,
      required final BasketDataInfoDataModel data,
      required final ProductDataModel product,
      required final String skuName}) = _$BasketFullInfoItemDataModelImpl;
  _BasketFullInfoItemDataModel._() : super._();

  @override
  String get code;
  @override
  String get sku;
  @override
  int get count;
  @override
  BasketDataInfoDataModel get data;
  @override
  ProductDataModel get product;
  @override
  String get skuName;
  @override
  @JsonKey(ignore: true)
  _$$BasketFullInfoItemDataModelImplCopyWith<_$BasketFullInfoItemDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
