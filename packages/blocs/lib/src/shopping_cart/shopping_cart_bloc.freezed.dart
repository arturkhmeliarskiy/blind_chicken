// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppingCartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(ShoppingCartDataModel item)
        addProductToSoppingCart,
    required TResult Function(int index) deleteProductToSoppingCart,
    required TResult Function(ShoppingCartDataModel item, int index)
        updateProductToSoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(ShoppingCartDataModel item)? addProductToSoppingCart,
    TResult? Function(int index)? deleteProductToSoppingCart,
    TResult? Function(ShoppingCartDataModel item, int index)?
        updateProductToSoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(ShoppingCartDataModel item)? addProductToSoppingCart,
    TResult Function(int index)? deleteProductToSoppingCart,
    TResult Function(ShoppingCartDataModel item, int index)?
        updateProductToSoppingCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartEventCopyWith<$Res> {
  factory $ShoppingCartEventCopyWith(
          ShoppingCartEvent value, $Res Function(ShoppingCartEvent) then) =
      _$ShoppingCartEventCopyWithImpl<$Res, ShoppingCartEvent>;
}

/// @nodoc
class _$ShoppingCartEventCopyWithImpl<$Res, $Val extends ShoppingCartEvent>
    implements $ShoppingCartEventCopyWith<$Res> {
  _$ShoppingCartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitShoppingCartEventImplCopyWith<$Res> {
  factory _$$InitShoppingCartEventImplCopyWith(
          _$InitShoppingCartEventImpl value,
          $Res Function(_$InitShoppingCartEventImpl) then) =
      __$$InitShoppingCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitShoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res, _$InitShoppingCartEventImpl>
    implements _$$InitShoppingCartEventImplCopyWith<$Res> {
  __$$InitShoppingCartEventImplCopyWithImpl(_$InitShoppingCartEventImpl _value,
      $Res Function(_$InitShoppingCartEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitShoppingCartEventImpl implements InitShoppingCartEvent {
  const _$InitShoppingCartEventImpl();

  @override
  String toString() {
    return 'ShoppingCartEvent.preloadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitShoppingCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(ShoppingCartDataModel item)
        addProductToSoppingCart,
    required TResult Function(int index) deleteProductToSoppingCart,
    required TResult Function(ShoppingCartDataModel item, int index)
        updateProductToSoppingCart,
  }) {
    return preloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(ShoppingCartDataModel item)? addProductToSoppingCart,
    TResult? Function(int index)? deleteProductToSoppingCart,
    TResult? Function(ShoppingCartDataModel item, int index)?
        updateProductToSoppingCart,
  }) {
    return preloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(ShoppingCartDataModel item)? addProductToSoppingCart,
    TResult Function(int index)? deleteProductToSoppingCart,
    TResult Function(ShoppingCartDataModel item, int index)?
        updateProductToSoppingCart,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class InitShoppingCartEvent implements ShoppingCartEvent {
  const factory InitShoppingCartEvent() = _$InitShoppingCartEventImpl;
}

/// @nodoc
abstract class _$$AddProductToSoppingCartEventImplCopyWith<$Res> {
  factory _$$AddProductToSoppingCartEventImplCopyWith(
          _$AddProductToSoppingCartEventImpl value,
          $Res Function(_$AddProductToSoppingCartEventImpl) then) =
      __$$AddProductToSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShoppingCartDataModel item});

  $ShoppingCartDataModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$AddProductToSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$AddProductToSoppingCartEventImpl>
    implements _$$AddProductToSoppingCartEventImplCopyWith<$Res> {
  __$$AddProductToSoppingCartEventImplCopyWithImpl(
      _$AddProductToSoppingCartEventImpl _value,
      $Res Function(_$AddProductToSoppingCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$AddProductToSoppingCartEventImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ShoppingCartDataModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ShoppingCartDataModelCopyWith<$Res> get item {
    return $ShoppingCartDataModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$AddProductToSoppingCartEventImpl
    implements AddProductToSoppingCartEvent {
  const _$AddProductToSoppingCartEventImpl({required this.item});

  @override
  final ShoppingCartDataModel item;

  @override
  String toString() {
    return 'ShoppingCartEvent.addProductToSoppingCart(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToSoppingCartEventImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToSoppingCartEventImplCopyWith<
          _$AddProductToSoppingCartEventImpl>
      get copyWith => __$$AddProductToSoppingCartEventImplCopyWithImpl<
          _$AddProductToSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(ShoppingCartDataModel item)
        addProductToSoppingCart,
    required TResult Function(int index) deleteProductToSoppingCart,
    required TResult Function(ShoppingCartDataModel item, int index)
        updateProductToSoppingCart,
  }) {
    return addProductToSoppingCart(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(ShoppingCartDataModel item)? addProductToSoppingCart,
    TResult? Function(int index)? deleteProductToSoppingCart,
    TResult? Function(ShoppingCartDataModel item, int index)?
        updateProductToSoppingCart,
  }) {
    return addProductToSoppingCart?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(ShoppingCartDataModel item)? addProductToSoppingCart,
    TResult Function(int index)? deleteProductToSoppingCart,
    TResult Function(ShoppingCartDataModel item, int index)?
        updateProductToSoppingCart,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCart != null) {
      return addProductToSoppingCart(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
  }) {
    return addProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
  }) {
    return addProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCart != null) {
      return addProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class AddProductToSoppingCartEvent implements ShoppingCartEvent {
  const factory AddProductToSoppingCartEvent(
          {required final ShoppingCartDataModel item}) =
      _$AddProductToSoppingCartEventImpl;

  ShoppingCartDataModel get item;
  @JsonKey(ignore: true)
  _$$AddProductToSoppingCartEventImplCopyWith<
          _$AddProductToSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductToSoppingCartEventImplCopyWith<$Res> {
  factory _$$DeleteProductToSoppingCartEventImplCopyWith(
          _$DeleteProductToSoppingCartEventImpl value,
          $Res Function(_$DeleteProductToSoppingCartEventImpl) then) =
      __$$DeleteProductToSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteProductToSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$DeleteProductToSoppingCartEventImpl>
    implements _$$DeleteProductToSoppingCartEventImplCopyWith<$Res> {
  __$$DeleteProductToSoppingCartEventImplCopyWithImpl(
      _$DeleteProductToSoppingCartEventImpl _value,
      $Res Function(_$DeleteProductToSoppingCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteProductToSoppingCartEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteProductToSoppingCartEventImpl
    implements DeleteProductToSoppingCartEvent {
  const _$DeleteProductToSoppingCartEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'ShoppingCartEvent.deleteProductToSoppingCart(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductToSoppingCartEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductToSoppingCartEventImplCopyWith<
          _$DeleteProductToSoppingCartEventImpl>
      get copyWith => __$$DeleteProductToSoppingCartEventImplCopyWithImpl<
          _$DeleteProductToSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(ShoppingCartDataModel item)
        addProductToSoppingCart,
    required TResult Function(int index) deleteProductToSoppingCart,
    required TResult Function(ShoppingCartDataModel item, int index)
        updateProductToSoppingCart,
  }) {
    return deleteProductToSoppingCart(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(ShoppingCartDataModel item)? addProductToSoppingCart,
    TResult? Function(int index)? deleteProductToSoppingCart,
    TResult? Function(ShoppingCartDataModel item, int index)?
        updateProductToSoppingCart,
  }) {
    return deleteProductToSoppingCart?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(ShoppingCartDataModel item)? addProductToSoppingCart,
    TResult Function(int index)? deleteProductToSoppingCart,
    TResult Function(ShoppingCartDataModel item, int index)?
        updateProductToSoppingCart,
    required TResult orElse(),
  }) {
    if (deleteProductToSoppingCart != null) {
      return deleteProductToSoppingCart(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
  }) {
    return deleteProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
  }) {
    return deleteProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    required TResult orElse(),
  }) {
    if (deleteProductToSoppingCart != null) {
      return deleteProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class DeleteProductToSoppingCartEvent implements ShoppingCartEvent {
  const factory DeleteProductToSoppingCartEvent({required final int index}) =
      _$DeleteProductToSoppingCartEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DeleteProductToSoppingCartEventImplCopyWith<
          _$DeleteProductToSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductToSoppingCartEventImplCopyWith<$Res> {
  factory _$$UpdateProductToSoppingCartEventImplCopyWith(
          _$UpdateProductToSoppingCartEventImpl value,
          $Res Function(_$UpdateProductToSoppingCartEventImpl) then) =
      __$$UpdateProductToSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShoppingCartDataModel item, int index});

  $ShoppingCartDataModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$UpdateProductToSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$UpdateProductToSoppingCartEventImpl>
    implements _$$UpdateProductToSoppingCartEventImplCopyWith<$Res> {
  __$$UpdateProductToSoppingCartEventImplCopyWithImpl(
      _$UpdateProductToSoppingCartEventImpl _value,
      $Res Function(_$UpdateProductToSoppingCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? index = null,
  }) {
    return _then(_$UpdateProductToSoppingCartEventImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ShoppingCartDataModel,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ShoppingCartDataModelCopyWith<$Res> get item {
    return $ShoppingCartDataModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$UpdateProductToSoppingCartEventImpl
    implements UpdateProductToSoppingCartEvent {
  const _$UpdateProductToSoppingCartEventImpl(
      {required this.item, required this.index});

  @override
  final ShoppingCartDataModel item;
  @override
  final int index;

  @override
  String toString() {
    return 'ShoppingCartEvent.updateProductToSoppingCart(item: $item, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductToSoppingCartEventImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductToSoppingCartEventImplCopyWith<
          _$UpdateProductToSoppingCartEventImpl>
      get copyWith => __$$UpdateProductToSoppingCartEventImplCopyWithImpl<
          _$UpdateProductToSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(ShoppingCartDataModel item)
        addProductToSoppingCart,
    required TResult Function(int index) deleteProductToSoppingCart,
    required TResult Function(ShoppingCartDataModel item, int index)
        updateProductToSoppingCart,
  }) {
    return updateProductToSoppingCart(item, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(ShoppingCartDataModel item)? addProductToSoppingCart,
    TResult? Function(int index)? deleteProductToSoppingCart,
    TResult? Function(ShoppingCartDataModel item, int index)?
        updateProductToSoppingCart,
  }) {
    return updateProductToSoppingCart?.call(item, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(ShoppingCartDataModel item)? addProductToSoppingCart,
    TResult Function(int index)? deleteProductToSoppingCart,
    TResult Function(ShoppingCartDataModel item, int index)?
        updateProductToSoppingCart,
    required TResult orElse(),
  }) {
    if (updateProductToSoppingCart != null) {
      return updateProductToSoppingCart(item, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
  }) {
    return updateProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
  }) {
    return updateProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    required TResult orElse(),
  }) {
    if (updateProductToSoppingCart != null) {
      return updateProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class UpdateProductToSoppingCartEvent implements ShoppingCartEvent {
  const factory UpdateProductToSoppingCartEvent(
      {required final ShoppingCartDataModel item,
      required final int index}) = _$UpdateProductToSoppingCartEventImpl;

  ShoppingCartDataModel get item;
  int get index;
  @JsonKey(ignore: true)
  _$$UpdateProductToSoppingCartEventImplCopyWith<
          _$UpdateProductToSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShoppingCartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)
        productsShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)?
        productsShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)?
        productsShoppingCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(ProductsShoppingCartState value)
        productsShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartState value)? init,
    TResult? Function(LoadingShoppingCartState value)? load,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(ProductsShoppingCartState value)? productsShoppingCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartStateCopyWith<$Res> {
  factory $ShoppingCartStateCopyWith(
          ShoppingCartState value, $Res Function(ShoppingCartState) then) =
      _$ShoppingCartStateCopyWithImpl<$Res, ShoppingCartState>;
}

/// @nodoc
class _$ShoppingCartStateCopyWithImpl<$Res, $Val extends ShoppingCartState>
    implements $ShoppingCartStateCopyWith<$Res> {
  _$ShoppingCartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitShoppingCartStateImplCopyWith<$Res> {
  factory _$$InitShoppingCartStateImplCopyWith(
          _$InitShoppingCartStateImpl value,
          $Res Function(_$InitShoppingCartStateImpl) then) =
      __$$InitShoppingCartStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitShoppingCartStateImplCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res, _$InitShoppingCartStateImpl>
    implements _$$InitShoppingCartStateImplCopyWith<$Res> {
  __$$InitShoppingCartStateImplCopyWithImpl(_$InitShoppingCartStateImpl _value,
      $Res Function(_$InitShoppingCartStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitShoppingCartStateImpl implements InitShoppingCartState {
  const _$InitShoppingCartStateImpl();

  @override
  String toString() {
    return 'ShoppingCartState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitShoppingCartStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)
        productsShoppingCart,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)?
        productsShoppingCart,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)?
        productsShoppingCart,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(ProductsShoppingCartState value)
        productsShoppingCart,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartState value)? init,
    TResult? Function(LoadingShoppingCartState value)? load,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(ProductsShoppingCartState value)? productsShoppingCart,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitShoppingCartState implements ShoppingCartState {
  const factory InitShoppingCartState() = _$InitShoppingCartStateImpl;
}

/// @nodoc
abstract class _$$LoadingShoppingCartStateImplCopyWith<$Res> {
  factory _$$LoadingShoppingCartStateImplCopyWith(
          _$LoadingShoppingCartStateImpl value,
          $Res Function(_$LoadingShoppingCartStateImpl) then) =
      __$$LoadingShoppingCartStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingShoppingCartStateImplCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res,
        _$LoadingShoppingCartStateImpl>
    implements _$$LoadingShoppingCartStateImplCopyWith<$Res> {
  __$$LoadingShoppingCartStateImplCopyWithImpl(
      _$LoadingShoppingCartStateImpl _value,
      $Res Function(_$LoadingShoppingCartStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingShoppingCartStateImpl implements LoadingShoppingCartState {
  const _$LoadingShoppingCartStateImpl();

  @override
  String toString() {
    return 'ShoppingCartState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingShoppingCartStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)
        productsShoppingCart,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)?
        productsShoppingCart,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)?
        productsShoppingCart,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(ProductsShoppingCartState value)
        productsShoppingCart,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartState value)? init,
    TResult? Function(LoadingShoppingCartState value)? load,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(ProductsShoppingCartState value)? productsShoppingCart,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingShoppingCartState implements ShoppingCartState {
  const factory LoadingShoppingCartState() = _$LoadingShoppingCartStateImpl;
}

/// @nodoc
abstract class _$$ProductsShoppingCartStateImplCopyWith<$Res> {
  factory _$$ProductsShoppingCartStateImplCopyWith(
          _$ProductsShoppingCartStateImpl value,
          $Res Function(_$ProductsShoppingCartStateImpl) then) =
      __$$ProductsShoppingCartStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ShoppingCartDataModel> products,
      List<ProductDataModel> favouritesProducts,
      int numberProducts,
      int amountPaid});
}

/// @nodoc
class __$$ProductsShoppingCartStateImplCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res,
        _$ProductsShoppingCartStateImpl>
    implements _$$ProductsShoppingCartStateImplCopyWith<$Res> {
  __$$ProductsShoppingCartStateImplCopyWithImpl(
      _$ProductsShoppingCartStateImpl _value,
      $Res Function(_$ProductsShoppingCartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? favouritesProducts = null,
    Object? numberProducts = null,
    Object? amountPaid = null,
  }) {
    return _then(_$ProductsShoppingCartStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartDataModel>,
      favouritesProducts: null == favouritesProducts
          ? _value._favouritesProducts
          : favouritesProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      numberProducts: null == numberProducts
          ? _value.numberProducts
          : numberProducts // ignore: cast_nullable_to_non_nullable
              as int,
      amountPaid: null == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProductsShoppingCartStateImpl implements ProductsShoppingCartState {
  const _$ProductsShoppingCartStateImpl(
      {required final List<ShoppingCartDataModel> products,
      required final List<ProductDataModel> favouritesProducts,
      required this.numberProducts,
      required this.amountPaid})
      : _products = products,
        _favouritesProducts = favouritesProducts;

  final List<ShoppingCartDataModel> _products;
  @override
  List<ShoppingCartDataModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ProductDataModel> _favouritesProducts;
  @override
  List<ProductDataModel> get favouritesProducts {
    if (_favouritesProducts is EqualUnmodifiableListView)
      return _favouritesProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesProducts);
  }

  @override
  final int numberProducts;
  @override
  final int amountPaid;

  @override
  String toString() {
    return 'ShoppingCartState.productsShoppingCart(products: $products, favouritesProducts: $favouritesProducts, numberProducts: $numberProducts, amountPaid: $amountPaid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsShoppingCartStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._favouritesProducts, _favouritesProducts) &&
            (identical(other.numberProducts, numberProducts) ||
                other.numberProducts == numberProducts) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_favouritesProducts),
      numberProducts,
      amountPaid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsShoppingCartStateImplCopyWith<_$ProductsShoppingCartStateImpl>
      get copyWith => __$$ProductsShoppingCartStateImplCopyWithImpl<
          _$ProductsShoppingCartStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)
        productsShoppingCart,
  }) {
    return productsShoppingCart(
        products, favouritesProducts, numberProducts, amountPaid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)?
        productsShoppingCart,
  }) {
    return productsShoppingCart?.call(
        products, favouritesProducts, numberProducts, amountPaid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)?
        productsShoppingCart,
    required TResult orElse(),
  }) {
    if (productsShoppingCart != null) {
      return productsShoppingCart(
          products, favouritesProducts, numberProducts, amountPaid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(ProductsShoppingCartState value)
        productsShoppingCart,
  }) {
    return productsShoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartState value)? init,
    TResult? Function(LoadingShoppingCartState value)? load,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return productsShoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(ProductsShoppingCartState value)? productsShoppingCart,
    required TResult orElse(),
  }) {
    if (productsShoppingCart != null) {
      return productsShoppingCart(this);
    }
    return orElse();
  }
}

abstract class ProductsShoppingCartState implements ShoppingCartState {
  const factory ProductsShoppingCartState(
      {required final List<ShoppingCartDataModel> products,
      required final List<ProductDataModel> favouritesProducts,
      required final int numberProducts,
      required final int amountPaid}) = _$ProductsShoppingCartStateImpl;

  List<ShoppingCartDataModel> get products;
  List<ProductDataModel> get favouritesProducts;
  int get numberProducts;
  int get amountPaid;
  @JsonKey(ignore: true)
  _$$ProductsShoppingCartStateImplCopyWith<_$ProductsShoppingCartStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
