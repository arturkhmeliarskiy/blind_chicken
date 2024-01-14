// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_cart_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppingCartDataModel {
  ProductDataModel get product => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppingCartDataModelCopyWith<ShoppingCartDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartDataModelCopyWith<$Res> {
  factory $ShoppingCartDataModelCopyWith(ShoppingCartDataModel value,
          $Res Function(ShoppingCartDataModel) then) =
      _$ShoppingCartDataModelCopyWithImpl<$Res, ShoppingCartDataModel>;
  @useResult
  $Res call({ProductDataModel product, int count, int price});

  $ProductDataModelCopyWith<$Res> get product;
}

/// @nodoc
class _$ShoppingCartDataModelCopyWithImpl<$Res,
        $Val extends ShoppingCartDataModel>
    implements $ShoppingCartDataModelCopyWith<$Res> {
  _$ShoppingCartDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? count = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
abstract class _$$ShoppingCartDataModelImplCopyWith<$Res>
    implements $ShoppingCartDataModelCopyWith<$Res> {
  factory _$$ShoppingCartDataModelImplCopyWith(
          _$ShoppingCartDataModelImpl value,
          $Res Function(_$ShoppingCartDataModelImpl) then) =
      __$$ShoppingCartDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDataModel product, int count, int price});

  @override
  $ProductDataModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$ShoppingCartDataModelImplCopyWithImpl<$Res>
    extends _$ShoppingCartDataModelCopyWithImpl<$Res,
        _$ShoppingCartDataModelImpl>
    implements _$$ShoppingCartDataModelImplCopyWith<$Res> {
  __$$ShoppingCartDataModelImplCopyWithImpl(_$ShoppingCartDataModelImpl _value,
      $Res Function(_$ShoppingCartDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? count = null,
    Object? price = null,
  }) {
    return _then(_$ShoppingCartDataModelImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShoppingCartDataModelImpl extends _ShoppingCartDataModel {
  _$ShoppingCartDataModelImpl(
      {required this.product, required this.count, required this.price})
      : super._();

  @override
  final ProductDataModel product;
  @override
  final int count;
  @override
  final int price;

  @override
  String toString() {
    return 'ShoppingCartDataModel(product: $product, count: $count, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingCartDataModelImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, count, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingCartDataModelImplCopyWith<_$ShoppingCartDataModelImpl>
      get copyWith => __$$ShoppingCartDataModelImplCopyWithImpl<
          _$ShoppingCartDataModelImpl>(this, _$identity);
}

abstract class _ShoppingCartDataModel extends ShoppingCartDataModel {
  factory _ShoppingCartDataModel(
      {required final ProductDataModel product,
      required final int count,
      required final int price}) = _$ShoppingCartDataModelImpl;
  _ShoppingCartDataModel._() : super._();

  @override
  ProductDataModel get product;
  @override
  int get count;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$ShoppingCartDataModelImplCopyWith<_$ShoppingCartDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
