// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitAccountEventImplCopyWith<$Res> {
  factory _$$InitAccountEventImplCopyWith(_$InitAccountEventImpl value,
          $Res Function(_$InitAccountEventImpl) then) =
      __$$InitAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? phone, String? name, String? email});
}

/// @nodoc
class __$$InitAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$InitAccountEventImpl>
    implements _$$InitAccountEventImplCopyWith<$Res> {
  __$$InitAccountEventImplCopyWithImpl(_$InitAccountEventImpl _value,
      $Res Function(_$InitAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_$InitAccountEventImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitAccountEventImpl implements InitAccountEvent {
  const _$InitAccountEventImpl({this.phone, this.name, this.email});

  @override
  final String? phone;
  @override
  final String? name;
  @override
  final String? email;

  @override
  String toString() {
    return 'AccountEvent.preloadData(phone: $phone, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitAccountEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, name, email);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitAccountEventImplCopyWith<_$InitAccountEventImpl> get copyWith =>
      __$$InitAccountEventImplCopyWithImpl<_$InitAccountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return preloadData(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return preloadData?.call(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(phone, name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class InitAccountEvent implements AccountEvent {
  const factory InitAccountEvent(
      {final String? phone,
      final String? name,
      final String? email}) = _$InitAccountEventImpl;

  String? get phone;
  String? get name;
  String? get email;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitAccountEventImplCopyWith<_$InitAccountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateInfoAccountEventImplCopyWith<$Res> {
  factory _$$UpdateInfoAccountEventImplCopyWith(
          _$UpdateInfoAccountEventImpl value,
          $Res Function(_$UpdateInfoAccountEventImpl) then) =
      __$$UpdateInfoAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? phone, String? name, String? email});
}

/// @nodoc
class __$$UpdateInfoAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$UpdateInfoAccountEventImpl>
    implements _$$UpdateInfoAccountEventImplCopyWith<$Res> {
  __$$UpdateInfoAccountEventImplCopyWithImpl(
      _$UpdateInfoAccountEventImpl _value,
      $Res Function(_$UpdateInfoAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UpdateInfoAccountEventImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateInfoAccountEventImpl implements UpdateInfoAccountEvent {
  const _$UpdateInfoAccountEventImpl({this.phone, this.name, this.email});

  @override
  final String? phone;
  @override
  final String? name;
  @override
  final String? email;

  @override
  String toString() {
    return 'AccountEvent.updateInfo(phone: $phone, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInfoAccountEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, name, email);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInfoAccountEventImplCopyWith<_$UpdateInfoAccountEventImpl>
      get copyWith => __$$UpdateInfoAccountEventImplCopyWithImpl<
          _$UpdateInfoAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return updateInfo(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return updateInfo?.call(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (updateInfo != null) {
      return updateInfo(phone, name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return updateInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return updateInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (updateInfo != null) {
      return updateInfo(this);
    }
    return orElse();
  }
}

abstract class UpdateInfoAccountEvent implements AccountEvent {
  const factory UpdateInfoAccountEvent(
      {final String? phone,
      final String? name,
      final String? email}) = _$UpdateInfoAccountEventImpl;

  String? get phone;
  String? get name;
  String? get email;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInfoAccountEventImplCopyWith<_$UpdateInfoAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginationOrdersAccountEventImplCopyWith<$Res> {
  factory _$$PaginationOrdersAccountEventImplCopyWith(
          _$PaginationOrdersAccountEventImpl value,
          $Res Function(_$PaginationOrdersAccountEventImpl) then) =
      __$$PaginationOrdersAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaginationOrdersAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$PaginationOrdersAccountEventImpl>
    implements _$$PaginationOrdersAccountEventImplCopyWith<$Res> {
  __$$PaginationOrdersAccountEventImplCopyWithImpl(
      _$PaginationOrdersAccountEventImpl _value,
      $Res Function(_$PaginationOrdersAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaginationOrdersAccountEventImpl
    implements PaginationOrdersAccountEvent {
  const _$PaginationOrdersAccountEventImpl();

  @override
  String toString() {
    return 'AccountEvent.paginationProduct()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationOrdersAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return paginationProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return paginationProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (paginationProduct != null) {
      return paginationProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return paginationProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return paginationProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (paginationProduct != null) {
      return paginationProduct(this);
    }
    return orElse();
  }
}

abstract class PaginationOrdersAccountEvent implements AccountEvent {
  const factory PaginationOrdersAccountEvent() =
      _$PaginationOrdersAccountEventImpl;
}

/// @nodoc
abstract class _$$GetOrdersAccountEventImplCopyWith<$Res> {
  factory _$$GetOrdersAccountEventImplCopyWith(
          _$GetOrdersAccountEventImpl value,
          $Res Function(_$GetOrdersAccountEventImpl) then) =
      __$$GetOrdersAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrdersAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetOrdersAccountEventImpl>
    implements _$$GetOrdersAccountEventImplCopyWith<$Res> {
  __$$GetOrdersAccountEventImplCopyWithImpl(_$GetOrdersAccountEventImpl _value,
      $Res Function(_$GetOrdersAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetOrdersAccountEventImpl implements GetOrdersAccountEvent {
  const _$GetOrdersAccountEventImpl();

  @override
  String toString() {
    return 'AccountEvent.getOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return getOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return getOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class GetOrdersAccountEvent implements AccountEvent {
  const factory GetOrdersAccountEvent() = _$GetOrdersAccountEventImpl;
}

/// @nodoc
abstract class _$$PaginationListOrdersBlankAccountEventImplCopyWith<$Res> {
  factory _$$PaginationListOrdersBlankAccountEventImplCopyWith(
          _$PaginationListOrdersBlankAccountEventImpl value,
          $Res Function(_$PaginationListOrdersBlankAccountEventImpl) then) =
      __$$PaginationListOrdersBlankAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaginationListOrdersBlankAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$PaginationListOrdersBlankAccountEventImpl>
    implements _$$PaginationListOrdersBlankAccountEventImplCopyWith<$Res> {
  __$$PaginationListOrdersBlankAccountEventImplCopyWithImpl(
      _$PaginationListOrdersBlankAccountEventImpl _value,
      $Res Function(_$PaginationListOrdersBlankAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaginationListOrdersBlankAccountEventImpl
    implements PaginationListOrdersBlankAccountEvent {
  const _$PaginationListOrdersBlankAccountEventImpl();

  @override
  String toString() {
    return 'AccountEvent.paginationListOrdersBlank()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationListOrdersBlankAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return paginationListOrdersBlank();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return paginationListOrdersBlank?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (paginationListOrdersBlank != null) {
      return paginationListOrdersBlank();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return paginationListOrdersBlank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return paginationListOrdersBlank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (paginationListOrdersBlank != null) {
      return paginationListOrdersBlank(this);
    }
    return orElse();
  }
}

abstract class PaginationListOrdersBlankAccountEvent implements AccountEvent {
  const factory PaginationListOrdersBlankAccountEvent() =
      _$PaginationListOrdersBlankAccountEventImpl;
}

/// @nodoc
abstract class _$$GetListOrdersBlankAccountEventImplCopyWith<$Res> {
  factory _$$GetListOrdersBlankAccountEventImplCopyWith(
          _$GetListOrdersBlankAccountEventImpl value,
          $Res Function(_$GetListOrdersBlankAccountEventImpl) then) =
      __$$GetListOrdersBlankAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetListOrdersBlankAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$GetListOrdersBlankAccountEventImpl>
    implements _$$GetListOrdersBlankAccountEventImplCopyWith<$Res> {
  __$$GetListOrdersBlankAccountEventImplCopyWithImpl(
      _$GetListOrdersBlankAccountEventImpl _value,
      $Res Function(_$GetListOrdersBlankAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetListOrdersBlankAccountEventImpl
    implements GetListOrdersBlankAccountEvent {
  const _$GetListOrdersBlankAccountEventImpl();

  @override
  String toString() {
    return 'AccountEvent.getListOrdersBlank()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListOrdersBlankAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return getListOrdersBlank();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return getListOrdersBlank?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getListOrdersBlank != null) {
      return getListOrdersBlank();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return getListOrdersBlank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return getListOrdersBlank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getListOrdersBlank != null) {
      return getListOrdersBlank(this);
    }
    return orElse();
  }
}

abstract class GetListOrdersBlankAccountEvent implements AccountEvent {
  const factory GetListOrdersBlankAccountEvent() =
      _$GetListOrdersBlankAccountEventImpl;
}

/// @nodoc
abstract class _$$GetOrderPdfBlankAccountEventImplCopyWith<$Res> {
  factory _$$GetOrderPdfBlankAccountEventImplCopyWith(
          _$GetOrderPdfBlankAccountEventImpl value,
          $Res Function(_$GetOrderPdfBlankAccountEventImpl) then) =
      __$$GetOrderPdfBlankAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fileName, String id});
}

/// @nodoc
class __$$GetOrderPdfBlankAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetOrderPdfBlankAccountEventImpl>
    implements _$$GetOrderPdfBlankAccountEventImplCopyWith<$Res> {
  __$$GetOrderPdfBlankAccountEventImplCopyWithImpl(
      _$GetOrderPdfBlankAccountEventImpl _value,
      $Res Function(_$GetOrderPdfBlankAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? id = null,
  }) {
    return _then(_$GetOrderPdfBlankAccountEventImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOrderPdfBlankAccountEventImpl
    implements GetOrderPdfBlankAccountEvent {
  const _$GetOrderPdfBlankAccountEventImpl(
      {required this.fileName, required this.id});

  @override
  final String fileName;
  @override
  final String id;

  @override
  String toString() {
    return 'AccountEvent.getOrderPdfBlank(fileName: $fileName, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderPdfBlankAccountEventImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName, id);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderPdfBlankAccountEventImplCopyWith<
          _$GetOrderPdfBlankAccountEventImpl>
      get copyWith => __$$GetOrderPdfBlankAccountEventImplCopyWithImpl<
          _$GetOrderPdfBlankAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return getOrderPdfBlank(fileName, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return getOrderPdfBlank?.call(fileName, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getOrderPdfBlank != null) {
      return getOrderPdfBlank(fileName, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return getOrderPdfBlank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return getOrderPdfBlank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getOrderPdfBlank != null) {
      return getOrderPdfBlank(this);
    }
    return orElse();
  }
}

abstract class GetOrderPdfBlankAccountEvent implements AccountEvent {
  const factory GetOrderPdfBlankAccountEvent(
      {required final String fileName,
      required final String id}) = _$GetOrderPdfBlankAccountEventImpl;

  String get fileName;
  String get id;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOrderPdfBlankAccountEventImplCopyWith<
          _$GetOrderPdfBlankAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginationListTailoringBlankAccountEventImplCopyWith<$Res> {
  factory _$$PaginationListTailoringBlankAccountEventImplCopyWith(
          _$PaginationListTailoringBlankAccountEventImpl value,
          $Res Function(_$PaginationListTailoringBlankAccountEventImpl) then) =
      __$$PaginationListTailoringBlankAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaginationListTailoringBlankAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$PaginationListTailoringBlankAccountEventImpl>
    implements _$$PaginationListTailoringBlankAccountEventImplCopyWith<$Res> {
  __$$PaginationListTailoringBlankAccountEventImplCopyWithImpl(
      _$PaginationListTailoringBlankAccountEventImpl _value,
      $Res Function(_$PaginationListTailoringBlankAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaginationListTailoringBlankAccountEventImpl
    implements PaginationListTailoringBlankAccountEvent {
  const _$PaginationListTailoringBlankAccountEventImpl();

  @override
  String toString() {
    return 'AccountEvent.paginationListTailoringBlank()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationListTailoringBlankAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return paginationListTailoringBlank();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return paginationListTailoringBlank?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (paginationListTailoringBlank != null) {
      return paginationListTailoringBlank();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return paginationListTailoringBlank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return paginationListTailoringBlank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (paginationListTailoringBlank != null) {
      return paginationListTailoringBlank(this);
    }
    return orElse();
  }
}

abstract class PaginationListTailoringBlankAccountEvent
    implements AccountEvent {
  const factory PaginationListTailoringBlankAccountEvent() =
      _$PaginationListTailoringBlankAccountEventImpl;
}

/// @nodoc
abstract class _$$GetListTailoringBlankAccountEventImplCopyWith<$Res> {
  factory _$$GetListTailoringBlankAccountEventImplCopyWith(
          _$GetListTailoringBlankAccountEventImpl value,
          $Res Function(_$GetListTailoringBlankAccountEventImpl) then) =
      __$$GetListTailoringBlankAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetListTailoringBlankAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$GetListTailoringBlankAccountEventImpl>
    implements _$$GetListTailoringBlankAccountEventImplCopyWith<$Res> {
  __$$GetListTailoringBlankAccountEventImplCopyWithImpl(
      _$GetListTailoringBlankAccountEventImpl _value,
      $Res Function(_$GetListTailoringBlankAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetListTailoringBlankAccountEventImpl
    implements GetListTailoringBlankAccountEvent {
  const _$GetListTailoringBlankAccountEventImpl();

  @override
  String toString() {
    return 'AccountEvent.getListTailoringBlank()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListTailoringBlankAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return getListTailoringBlank();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return getListTailoringBlank?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getListTailoringBlank != null) {
      return getListTailoringBlank();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return getListTailoringBlank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return getListTailoringBlank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getListTailoringBlank != null) {
      return getListTailoringBlank(this);
    }
    return orElse();
  }
}

abstract class GetListTailoringBlankAccountEvent implements AccountEvent {
  const factory GetListTailoringBlankAccountEvent() =
      _$GetListTailoringBlankAccountEventImpl;
}

/// @nodoc
abstract class _$$GetTailoringPdfBlankAccountEventImplCopyWith<$Res> {
  factory _$$GetTailoringPdfBlankAccountEventImplCopyWith(
          _$GetTailoringPdfBlankAccountEventImpl value,
          $Res Function(_$GetTailoringPdfBlankAccountEventImpl) then) =
      __$$GetTailoringPdfBlankAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fileName, String id});
}

/// @nodoc
class __$$GetTailoringPdfBlankAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$GetTailoringPdfBlankAccountEventImpl>
    implements _$$GetTailoringPdfBlankAccountEventImplCopyWith<$Res> {
  __$$GetTailoringPdfBlankAccountEventImplCopyWithImpl(
      _$GetTailoringPdfBlankAccountEventImpl _value,
      $Res Function(_$GetTailoringPdfBlankAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? id = null,
  }) {
    return _then(_$GetTailoringPdfBlankAccountEventImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTailoringPdfBlankAccountEventImpl
    implements GetTailoringPdfBlankAccountEvent {
  const _$GetTailoringPdfBlankAccountEventImpl(
      {required this.fileName, required this.id});

  @override
  final String fileName;
  @override
  final String id;

  @override
  String toString() {
    return 'AccountEvent.getTailoringPdfBlank(fileName: $fileName, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTailoringPdfBlankAccountEventImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName, id);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTailoringPdfBlankAccountEventImplCopyWith<
          _$GetTailoringPdfBlankAccountEventImpl>
      get copyWith => __$$GetTailoringPdfBlankAccountEventImplCopyWithImpl<
          _$GetTailoringPdfBlankAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return getTailoringPdfBlank(fileName, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return getTailoringPdfBlank?.call(fileName, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getTailoringPdfBlank != null) {
      return getTailoringPdfBlank(fileName, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return getTailoringPdfBlank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return getTailoringPdfBlank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getTailoringPdfBlank != null) {
      return getTailoringPdfBlank(this);
    }
    return orElse();
  }
}

abstract class GetTailoringPdfBlankAccountEvent implements AccountEvent {
  const factory GetTailoringPdfBlankAccountEvent(
      {required final String fileName,
      required final String id}) = _$GetTailoringPdfBlankAccountEventImpl;

  String get fileName;
  String get id;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTailoringPdfBlankAccountEventImplCopyWith<
          _$GetTailoringPdfBlankAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInfoOrderAccountEventImplCopyWith<$Res> {
  factory _$$GetInfoOrderAccountEventImplCopyWith(
          _$GetInfoOrderAccountEventImpl value,
          $Res Function(_$GetInfoOrderAccountEventImpl) then) =
      __$$GetInfoOrderAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetInfoOrderAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetInfoOrderAccountEventImpl>
    implements _$$GetInfoOrderAccountEventImplCopyWith<$Res> {
  __$$GetInfoOrderAccountEventImplCopyWithImpl(
      _$GetInfoOrderAccountEventImpl _value,
      $Res Function(_$GetInfoOrderAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetInfoOrderAccountEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInfoOrderAccountEventImpl implements GetInfoOrderAccountEvent {
  const _$GetInfoOrderAccountEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AccountEvent.getInfoOrder(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoOrderAccountEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInfoOrderAccountEventImplCopyWith<_$GetInfoOrderAccountEventImpl>
      get copyWith => __$$GetInfoOrderAccountEventImplCopyWithImpl<
          _$GetInfoOrderAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return getInfoOrder(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return getInfoOrder?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getInfoOrder != null) {
      return getInfoOrder(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return getInfoOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return getInfoOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getInfoOrder != null) {
      return getInfoOrder(this);
    }
    return orElse();
  }
}

abstract class GetInfoOrderAccountEvent implements AccountEvent {
  const factory GetInfoOrderAccountEvent({required final String id}) =
      _$GetInfoOrderAccountEventImpl;

  String get id;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInfoOrderAccountEventImplCopyWith<_$GetInfoOrderAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInfoPayOrderAccountEventImplCopyWith<$Res> {
  factory _$$GetInfoPayOrderAccountEventImplCopyWith(
          _$GetInfoPayOrderAccountEventImpl value,
          $Res Function(_$GetInfoPayOrderAccountEventImpl) then) =
      __$$GetInfoPayOrderAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String? searchQuery});
}

/// @nodoc
class __$$GetInfoPayOrderAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetInfoPayOrderAccountEventImpl>
    implements _$$GetInfoPayOrderAccountEventImplCopyWith<$Res> {
  __$$GetInfoPayOrderAccountEventImplCopyWithImpl(
      _$GetInfoPayOrderAccountEventImpl _value,
      $Res Function(_$GetInfoPayOrderAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? searchQuery = freezed,
  }) {
    return _then(_$GetInfoPayOrderAccountEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetInfoPayOrderAccountEventImpl implements GetInfoPayOrderAccountEvent {
  const _$GetInfoPayOrderAccountEventImpl({required this.id, this.searchQuery});

  @override
  final String id;
  @override
  final String? searchQuery;

  @override
  String toString() {
    return 'AccountEvent.getInfoPayOrder(id: $id, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoPayOrderAccountEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, searchQuery);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInfoPayOrderAccountEventImplCopyWith<_$GetInfoPayOrderAccountEventImpl>
      get copyWith => __$$GetInfoPayOrderAccountEventImplCopyWithImpl<
          _$GetInfoPayOrderAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return getInfoPayOrder(id, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return getInfoPayOrder?.call(id, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getInfoPayOrder != null) {
      return getInfoPayOrder(id, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return getInfoPayOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return getInfoPayOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getInfoPayOrder != null) {
      return getInfoPayOrder(this);
    }
    return orElse();
  }
}

abstract class GetInfoPayOrderAccountEvent implements AccountEvent {
  const factory GetInfoPayOrderAccountEvent(
      {required final String id,
      final String? searchQuery}) = _$GetInfoPayOrderAccountEventImpl;

  String get id;
  String? get searchQuery;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInfoPayOrderAccountEventImplCopyWith<_$GetInfoPayOrderAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayOrderAccountEventImplCopyWith<$Res> {
  factory _$$PayOrderAccountEventImplCopyWith(_$PayOrderAccountEventImpl value,
          $Res Function(_$PayOrderAccountEventImpl) then) =
      __$$PayOrderAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String idForPay});
}

/// @nodoc
class __$$PayOrderAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$PayOrderAccountEventImpl>
    implements _$$PayOrderAccountEventImplCopyWith<$Res> {
  __$$PayOrderAccountEventImplCopyWithImpl(_$PayOrderAccountEventImpl _value,
      $Res Function(_$PayOrderAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idForPay = null,
  }) {
    return _then(_$PayOrderAccountEventImpl(
      idForPay: null == idForPay
          ? _value.idForPay
          : idForPay // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PayOrderAccountEventImpl implements PayOrderAccountEvent {
  const _$PayOrderAccountEventImpl({required this.idForPay});

  @override
  final String idForPay;

  @override
  String toString() {
    return 'AccountEvent.payOrder(idForPay: $idForPay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayOrderAccountEventImpl &&
            (identical(other.idForPay, idForPay) ||
                other.idForPay == idForPay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idForPay);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayOrderAccountEventImplCopyWith<_$PayOrderAccountEventImpl>
      get copyWith =>
          __$$PayOrderAccountEventImplCopyWithImpl<_$PayOrderAccountEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return payOrder(idForPay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return payOrder?.call(idForPay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (payOrder != null) {
      return payOrder(idForPay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return payOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return payOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (payOrder != null) {
      return payOrder(this);
    }
    return orElse();
  }
}

abstract class PayOrderAccountEvent implements AccountEvent {
  const factory PayOrderAccountEvent({required final String idForPay}) =
      _$PayOrderAccountEventImpl;

  String get idForPay;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayOrderAccountEventImplCopyWith<_$PayOrderAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutAccountEventImplCopyWith<$Res> {
  factory _$$LogOutAccountEventImplCopyWith(_$LogOutAccountEventImpl value,
          $Res Function(_$LogOutAccountEventImpl) then) =
      __$$LogOutAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$LogOutAccountEventImpl>
    implements _$$LogOutAccountEventImplCopyWith<$Res> {
  __$$LogOutAccountEventImplCopyWithImpl(_$LogOutAccountEventImpl _value,
      $Res Function(_$LogOutAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogOutAccountEventImpl implements LogOutAccountEvent {
  const _$LogOutAccountEventImpl();

  @override
  String toString() {
    return 'AccountEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOutAccountEvent implements AccountEvent {
  const factory LogOutAccountEvent() = _$LogOutAccountEventImpl;
}

/// @nodoc
abstract class _$$RemoveAccountEventImplCopyWith<$Res> {
  factory _$$RemoveAccountEventImplCopyWith(_$RemoveAccountEventImpl value,
          $Res Function(_$RemoveAccountEventImpl) then) =
      __$$RemoveAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$RemoveAccountEventImpl>
    implements _$$RemoveAccountEventImplCopyWith<$Res> {
  __$$RemoveAccountEventImplCopyWithImpl(_$RemoveAccountEventImpl _value,
      $Res Function(_$RemoveAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveAccountEventImpl implements RemoveAccountEvent {
  const _$RemoveAccountEventImpl();

  @override
  String toString() {
    return 'AccountEvent.removeAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return removeAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return removeAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (removeAccount != null) {
      return removeAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return removeAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return removeAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (removeAccount != null) {
      return removeAccount(this);
    }
    return orElse();
  }
}

abstract class RemoveAccountEvent implements AccountEvent {
  const factory RemoveAccountEvent() = _$RemoveAccountEventImpl;
}

/// @nodoc
abstract class _$$VirtualCardsCodAccountEventImplCopyWith<$Res> {
  factory _$$VirtualCardsCodAccountEventImplCopyWith(
          _$VirtualCardsCodAccountEventImpl value,
          $Res Function(_$VirtualCardsCodAccountEventImpl) then) =
      __$$VirtualCardsCodAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VirtualCardsCodAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$VirtualCardsCodAccountEventImpl>
    implements _$$VirtualCardsCodAccountEventImplCopyWith<$Res> {
  __$$VirtualCardsCodAccountEventImplCopyWithImpl(
      _$VirtualCardsCodAccountEventImpl _value,
      $Res Function(_$VirtualCardsCodAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VirtualCardsCodAccountEventImpl implements VirtualCardsCodAccountEvent {
  const _$VirtualCardsCodAccountEventImpl();

  @override
  String toString() {
    return 'AccountEvent.virtualCardsCod()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VirtualCardsCodAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return virtualCardsCod();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return virtualCardsCod?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (virtualCardsCod != null) {
      return virtualCardsCod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return virtualCardsCod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return virtualCardsCod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (virtualCardsCod != null) {
      return virtualCardsCod(this);
    }
    return orElse();
  }
}

abstract class VirtualCardsCodAccountEvent implements AccountEvent {
  const factory VirtualCardsCodAccountEvent() =
      _$VirtualCardsCodAccountEventImpl;
}

/// @nodoc
abstract class _$$AddFavouriteProductAccountEventImplCopyWith<$Res> {
  factory _$$AddFavouriteProductAccountEventImplCopyWith(
          _$AddFavouriteProductAccountEventImpl value,
          $Res Function(_$AddFavouriteProductAccountEventImpl) then) =
      __$$AddFavouriteProductAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, ProductDataModel product});

  $ProductDataModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddFavouriteProductAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$AddFavouriteProductAccountEventImpl>
    implements _$$AddFavouriteProductAccountEventImplCopyWith<$Res> {
  __$$AddFavouriteProductAccountEventImplCopyWithImpl(
      _$AddFavouriteProductAccountEventImpl _value,
      $Res Function(_$AddFavouriteProductAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? product = null,
  }) {
    return _then(_$AddFavouriteProductAccountEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel,
    ));
  }

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDataModelCopyWith<$Res> get product {
    return $ProductDataModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$AddFavouriteProductAccountEventImpl
    implements AddFavouriteProductAccountEvent {
  const _$AddFavouriteProductAccountEventImpl(
      {required this.index, required this.product});

  @override
  final int index;
  @override
  final ProductDataModel product;

  @override
  String toString() {
    return 'AccountEvent.addFavouriteProduct(index: $index, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavouriteProductAccountEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, product);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavouriteProductAccountEventImplCopyWith<
          _$AddFavouriteProductAccountEventImpl>
      get copyWith => __$$AddFavouriteProductAccountEventImplCopyWithImpl<
          _$AddFavouriteProductAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return addFavouriteProduct(index, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return addFavouriteProduct?.call(index, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addFavouriteProduct != null) {
      return addFavouriteProduct(index, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return addFavouriteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return addFavouriteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addFavouriteProduct != null) {
      return addFavouriteProduct(this);
    }
    return orElse();
  }
}

abstract class AddFavouriteProductAccountEvent implements AccountEvent {
  const factory AddFavouriteProductAccountEvent(
          {required final int index, required final ProductDataModel product}) =
      _$AddFavouriteProductAccountEventImpl;

  int get index;
  ProductDataModel get product;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFavouriteProductAccountEventImplCopyWith<
          _$AddFavouriteProductAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFavouriteProductAccountEventImplCopyWith<$Res> {
  factory _$$DeleteFavouriteProductAccountEventImplCopyWith(
          _$DeleteFavouriteProductAccountEventImpl value,
          $Res Function(_$DeleteFavouriteProductAccountEventImpl) then) =
      __$$DeleteFavouriteProductAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteFavouriteProductAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$DeleteFavouriteProductAccountEventImpl>
    implements _$$DeleteFavouriteProductAccountEventImplCopyWith<$Res> {
  __$$DeleteFavouriteProductAccountEventImplCopyWithImpl(
      _$DeleteFavouriteProductAccountEventImpl _value,
      $Res Function(_$DeleteFavouriteProductAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteFavouriteProductAccountEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteFavouriteProductAccountEventImpl
    implements DeleteFavouriteProductAccountEvent {
  const _$DeleteFavouriteProductAccountEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'AccountEvent.deleteFavouriteProduct(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavouriteProductAccountEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFavouriteProductAccountEventImplCopyWith<
          _$DeleteFavouriteProductAccountEventImpl>
      get copyWith => __$$DeleteFavouriteProductAccountEventImplCopyWithImpl<
          _$DeleteFavouriteProductAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return deleteFavouriteProduct(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return deleteFavouriteProduct?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (deleteFavouriteProduct != null) {
      return deleteFavouriteProduct(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return deleteFavouriteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return deleteFavouriteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (deleteFavouriteProduct != null) {
      return deleteFavouriteProduct(this);
    }
    return orElse();
  }
}

abstract class DeleteFavouriteProductAccountEvent implements AccountEvent {
  const factory DeleteFavouriteProductAccountEvent({required final int index}) =
      _$DeleteFavouriteProductAccountEventImpl;

  int get index;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFavouriteProductAccountEventImplCopyWith<
          _$DeleteFavouriteProductAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInfoProductAccountEventImplCopyWith<$Res> {
  factory _$$GetInfoProductAccountEventImplCopyWith(
          _$GetInfoProductAccountEventImpl value,
          $Res Function(_$GetInfoProductAccountEventImpl) then) =
      __$$GetInfoProductAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String code,
      String titleScreen,
      String typeAddProductToShoppingCart,
      String identifierAddProductToShoppingCart,
      SkuProductDataModel? size,
      bool? isUpdate});

  $SkuProductDataModelCopyWith<$Res>? get size;
}

/// @nodoc
class __$$GetInfoProductAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetInfoProductAccountEventImpl>
    implements _$$GetInfoProductAccountEventImplCopyWith<$Res> {
  __$$GetInfoProductAccountEventImplCopyWithImpl(
      _$GetInfoProductAccountEventImpl _value,
      $Res Function(_$GetInfoProductAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? titleScreen = null,
    Object? typeAddProductToShoppingCart = null,
    Object? identifierAddProductToShoppingCart = null,
    Object? size = freezed,
    Object? isUpdate = freezed,
  }) {
    return _then(_$GetInfoProductAccountEventImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      titleScreen: null == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String,
      typeAddProductToShoppingCart: null == typeAddProductToShoppingCart
          ? _value.typeAddProductToShoppingCart
          : typeAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String,
      identifierAddProductToShoppingCart: null ==
              identifierAddProductToShoppingCart
          ? _value.identifierAddProductToShoppingCart
          : identifierAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as SkuProductDataModel?,
      isUpdate: freezed == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkuProductDataModelCopyWith<$Res>? get size {
    if (_value.size == null) {
      return null;
    }

    return $SkuProductDataModelCopyWith<$Res>(_value.size!, (value) {
      return _then(_value.copyWith(size: value));
    });
  }
}

/// @nodoc

class _$GetInfoProductAccountEventImpl implements GetInfoProductAccountEvent {
  const _$GetInfoProductAccountEventImpl(
      {required this.code,
      required this.titleScreen,
      required this.typeAddProductToShoppingCart,
      required this.identifierAddProductToShoppingCart,
      this.size,
      this.isUpdate});

  @override
  final String code;
  @override
  final String titleScreen;
  @override
  final String typeAddProductToShoppingCart;
  @override
  final String identifierAddProductToShoppingCart;
  @override
  final SkuProductDataModel? size;
  @override
  final bool? isUpdate;

  @override
  String toString() {
    return 'AccountEvent.getInfoProduct(code: $code, titleScreen: $titleScreen, typeAddProductToShoppingCart: $typeAddProductToShoppingCart, identifierAddProductToShoppingCart: $identifierAddProductToShoppingCart, size: $size, isUpdate: $isUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoProductAccountEventImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.titleScreen, titleScreen) ||
                other.titleScreen == titleScreen) &&
            (identical(other.typeAddProductToShoppingCart,
                    typeAddProductToShoppingCart) ||
                other.typeAddProductToShoppingCart ==
                    typeAddProductToShoppingCart) &&
            (identical(other.identifierAddProductToShoppingCart,
                    identifierAddProductToShoppingCart) ||
                other.identifierAddProductToShoppingCart ==
                    identifierAddProductToShoppingCart) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.isUpdate, isUpdate) ||
                other.isUpdate == isUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      titleScreen,
      typeAddProductToShoppingCart,
      identifierAddProductToShoppingCart,
      size,
      isUpdate);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInfoProductAccountEventImplCopyWith<_$GetInfoProductAccountEventImpl>
      get copyWith => __$$GetInfoProductAccountEventImplCopyWithImpl<
          _$GetInfoProductAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return getInfoProduct(code, titleScreen, typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart, size, isUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return getInfoProduct?.call(code, titleScreen, typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart, size, isUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getInfoProduct != null) {
      return getInfoProduct(code, titleScreen, typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart, size, isUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return getInfoProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return getInfoProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getInfoProduct != null) {
      return getInfoProduct(this);
    }
    return orElse();
  }
}

abstract class GetInfoProductAccountEvent implements AccountEvent {
  const factory GetInfoProductAccountEvent(
      {required final String code,
      required final String titleScreen,
      required final String typeAddProductToShoppingCart,
      required final String identifierAddProductToShoppingCart,
      final SkuProductDataModel? size,
      final bool? isUpdate}) = _$GetInfoProductAccountEventImpl;

  String get code;
  String get titleScreen;
  String get typeAddProductToShoppingCart;
  String get identifierAddProductToShoppingCart;
  SkuProductDataModel? get size;
  bool? get isUpdate;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInfoProductAccountEventImplCopyWith<_$GetInfoProductAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSizeProductAccountEventImplCopyWith<$Res> {
  factory _$$ChangeSizeProductAccountEventImplCopyWith(
          _$ChangeSizeProductAccountEventImpl value,
          $Res Function(_$ChangeSizeProductAccountEventImpl) then) =
      __$$ChangeSizeProductAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SkuProductDataModel selectSizeProduct});

  $SkuProductDataModelCopyWith<$Res> get selectSizeProduct;
}

/// @nodoc
class __$$ChangeSizeProductAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$ChangeSizeProductAccountEventImpl>
    implements _$$ChangeSizeProductAccountEventImplCopyWith<$Res> {
  __$$ChangeSizeProductAccountEventImplCopyWithImpl(
      _$ChangeSizeProductAccountEventImpl _value,
      $Res Function(_$ChangeSizeProductAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectSizeProduct = null,
  }) {
    return _then(_$ChangeSizeProductAccountEventImpl(
      selectSizeProduct: null == selectSizeProduct
          ? _value.selectSizeProduct
          : selectSizeProduct // ignore: cast_nullable_to_non_nullable
              as SkuProductDataModel,
    ));
  }

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkuProductDataModelCopyWith<$Res> get selectSizeProduct {
    return $SkuProductDataModelCopyWith<$Res>(_value.selectSizeProduct,
        (value) {
      return _then(_value.copyWith(selectSizeProduct: value));
    });
  }
}

/// @nodoc

class _$ChangeSizeProductAccountEventImpl
    implements ChangeSizeProductAccountEvent {
  const _$ChangeSizeProductAccountEventImpl({required this.selectSizeProduct});

  @override
  final SkuProductDataModel selectSizeProduct;

  @override
  String toString() {
    return 'AccountEvent.changeSizeProduct(selectSizeProduct: $selectSizeProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSizeProductAccountEventImpl &&
            (identical(other.selectSizeProduct, selectSizeProduct) ||
                other.selectSizeProduct == selectSizeProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectSizeProduct);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSizeProductAccountEventImplCopyWith<
          _$ChangeSizeProductAccountEventImpl>
      get copyWith => __$$ChangeSizeProductAccountEventImplCopyWithImpl<
          _$ChangeSizeProductAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return changeSizeProduct(selectSizeProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return changeSizeProduct?.call(selectSizeProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (changeSizeProduct != null) {
      return changeSizeProduct(selectSizeProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return changeSizeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return changeSizeProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (changeSizeProduct != null) {
      return changeSizeProduct(this);
    }
    return orElse();
  }
}

abstract class ChangeSizeProductAccountEvent implements AccountEvent {
  const factory ChangeSizeProductAccountEvent(
          {required final SkuProductDataModel selectSizeProduct}) =
      _$ChangeSizeProductAccountEventImpl;

  SkuProductDataModel get selectSizeProduct;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSizeProductAccountEventImplCopyWith<
          _$ChangeSizeProductAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveDocumentAccountEventImplCopyWith<$Res> {
  factory _$$SaveDocumentAccountEventImplCopyWith(
          _$SaveDocumentAccountEventImpl value,
          $Res Function(_$SaveDocumentAccountEventImpl) then) =
      __$$SaveDocumentAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fileName, Uint8List bytes});
}

/// @nodoc
class __$$SaveDocumentAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$SaveDocumentAccountEventImpl>
    implements _$$SaveDocumentAccountEventImplCopyWith<$Res> {
  __$$SaveDocumentAccountEventImplCopyWithImpl(
      _$SaveDocumentAccountEventImpl _value,
      $Res Function(_$SaveDocumentAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? bytes = null,
  }) {
    return _then(_$SaveDocumentAccountEventImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$SaveDocumentAccountEventImpl implements SaveDocumentAccountEvent {
  const _$SaveDocumentAccountEventImpl(
      {required this.fileName, required this.bytes});

  @override
  final String fileName;
  @override
  final Uint8List bytes;

  @override
  String toString() {
    return 'AccountEvent.saveDocument(fileName: $fileName, bytes: $bytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveDocumentAccountEventImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fileName, const DeepCollectionEquality().hash(bytes));

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveDocumentAccountEventImplCopyWith<_$SaveDocumentAccountEventImpl>
      get copyWith => __$$SaveDocumentAccountEventImplCopyWithImpl<
          _$SaveDocumentAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return saveDocument(fileName, bytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return saveDocument?.call(fileName, bytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (saveDocument != null) {
      return saveDocument(fileName, bytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return saveDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return saveDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (saveDocument != null) {
      return saveDocument(this);
    }
    return orElse();
  }
}

abstract class SaveDocumentAccountEvent implements AccountEvent {
  const factory SaveDocumentAccountEvent(
      {required final String fileName,
      required final Uint8List bytes}) = _$SaveDocumentAccountEventImpl;

  String get fileName;
  Uint8List get bytes;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveDocumentAccountEventImplCopyWith<_$SaveDocumentAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoBackProductInfoCategotyAccountEventImplCopyWith<$Res> {
  factory _$$GoBackProductInfoCategotyAccountEventImplCopyWith(
          _$GoBackProductInfoCategotyAccountEventImpl value,
          $Res Function(_$GoBackProductInfoCategotyAccountEventImpl) then) =
      __$$GoBackProductInfoCategotyAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoBackProductInfoCategotyAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$GoBackProductInfoCategotyAccountEventImpl>
    implements _$$GoBackProductInfoCategotyAccountEventImplCopyWith<$Res> {
  __$$GoBackProductInfoCategotyAccountEventImplCopyWithImpl(
      _$GoBackProductInfoCategotyAccountEventImpl _value,
      $Res Function(_$GoBackProductInfoCategotyAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoBackProductInfoCategotyAccountEventImpl
    implements GoBackProductInfoCategotyAccountEvent {
  const _$GoBackProductInfoCategotyAccountEventImpl();

  @override
  String toString() {
    return 'AccountEvent.goBackProductInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoBackProductInfoCategotyAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return goBackProductInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return goBackProductInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (goBackProductInfo != null) {
      return goBackProductInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return goBackProductInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return goBackProductInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (goBackProductInfo != null) {
      return goBackProductInfo(this);
    }
    return orElse();
  }
}

abstract class GoBackProductInfoCategotyAccountEvent implements AccountEvent {
  const factory GoBackProductInfoCategotyAccountEvent() =
      _$GoBackProductInfoCategotyAccountEventImpl;
}

/// @nodoc
abstract class _$$AddProductToSoppingCartCAccountEventImplCopyWith<$Res> {
  factory _$$AddProductToSoppingCartCAccountEventImplCopyWith(
          _$AddProductToSoppingCartCAccountEventImpl value,
          $Res Function(_$AddProductToSoppingCartCAccountEventImpl) then) =
      __$$AddProductToSoppingCartCAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {SkuProductDataModel size,
      String typeAddProductToShoppingCart,
      String identifierAddProductToShoppingCart});

  $SkuProductDataModelCopyWith<$Res> get size;
}

/// @nodoc
class __$$AddProductToSoppingCartCAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$AddProductToSoppingCartCAccountEventImpl>
    implements _$$AddProductToSoppingCartCAccountEventImplCopyWith<$Res> {
  __$$AddProductToSoppingCartCAccountEventImplCopyWithImpl(
      _$AddProductToSoppingCartCAccountEventImpl _value,
      $Res Function(_$AddProductToSoppingCartCAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? typeAddProductToShoppingCart = null,
    Object? identifierAddProductToShoppingCart = null,
  }) {
    return _then(_$AddProductToSoppingCartCAccountEventImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as SkuProductDataModel,
      typeAddProductToShoppingCart: null == typeAddProductToShoppingCart
          ? _value.typeAddProductToShoppingCart
          : typeAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String,
      identifierAddProductToShoppingCart: null ==
              identifierAddProductToShoppingCart
          ? _value.identifierAddProductToShoppingCart
          : identifierAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkuProductDataModelCopyWith<$Res> get size {
    return $SkuProductDataModelCopyWith<$Res>(_value.size, (value) {
      return _then(_value.copyWith(size: value));
    });
  }
}

/// @nodoc

class _$AddProductToSoppingCartCAccountEventImpl
    implements AddProductToSoppingCartCAccountEvent {
  const _$AddProductToSoppingCartCAccountEventImpl(
      {required this.size,
      required this.typeAddProductToShoppingCart,
      required this.identifierAddProductToShoppingCart});

  @override
  final SkuProductDataModel size;
  @override
  final String typeAddProductToShoppingCart;
  @override
  final String identifierAddProductToShoppingCart;

  @override
  String toString() {
    return 'AccountEvent.addProductToSoppingCart(size: $size, typeAddProductToShoppingCart: $typeAddProductToShoppingCart, identifierAddProductToShoppingCart: $identifierAddProductToShoppingCart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToSoppingCartCAccountEventImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.typeAddProductToShoppingCart,
                    typeAddProductToShoppingCart) ||
                other.typeAddProductToShoppingCart ==
                    typeAddProductToShoppingCart) &&
            (identical(other.identifierAddProductToShoppingCart,
                    identifierAddProductToShoppingCart) ||
                other.identifierAddProductToShoppingCart ==
                    identifierAddProductToShoppingCart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size,
      typeAddProductToShoppingCart, identifierAddProductToShoppingCart);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToSoppingCartCAccountEventImplCopyWith<
          _$AddProductToSoppingCartCAccountEventImpl>
      get copyWith => __$$AddProductToSoppingCartCAccountEventImplCopyWithImpl<
          _$AddProductToSoppingCartCAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return addProductToSoppingCart(
        size, typeAddProductToShoppingCart, identifierAddProductToShoppingCart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return addProductToSoppingCart?.call(
        size, typeAddProductToShoppingCart, identifierAddProductToShoppingCart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCart != null) {
      return addProductToSoppingCart(size, typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return addProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return addProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCart != null) {
      return addProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class AddProductToSoppingCartCAccountEvent implements AccountEvent {
  const factory AddProductToSoppingCartCAccountEvent(
          {required final SkuProductDataModel size,
          required final String typeAddProductToShoppingCart,
          required final String identifierAddProductToShoppingCart}) =
      _$AddProductToSoppingCartCAccountEventImpl;

  SkuProductDataModel get size;
  String get typeAddProductToShoppingCart;
  String get identifierAddProductToShoppingCart;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToSoppingCartCAccountEventImplCopyWith<
          _$AddProductToSoppingCartCAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckProductToSoppingCartAccountEventImplCopyWith<$Res> {
  factory _$$CheckProductToSoppingCartAccountEventImplCopyWith(
          _$CheckProductToSoppingCartAccountEventImpl value,
          $Res Function(_$CheckProductToSoppingCartAccountEventImpl) then) =
      __$$CheckProductToSoppingCartAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SkuProductDataModel size});

  $SkuProductDataModelCopyWith<$Res> get size;
}

/// @nodoc
class __$$CheckProductToSoppingCartAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$CheckProductToSoppingCartAccountEventImpl>
    implements _$$CheckProductToSoppingCartAccountEventImplCopyWith<$Res> {
  __$$CheckProductToSoppingCartAccountEventImplCopyWithImpl(
      _$CheckProductToSoppingCartAccountEventImpl _value,
      $Res Function(_$CheckProductToSoppingCartAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_$CheckProductToSoppingCartAccountEventImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as SkuProductDataModel,
    ));
  }

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkuProductDataModelCopyWith<$Res> get size {
    return $SkuProductDataModelCopyWith<$Res>(_value.size, (value) {
      return _then(_value.copyWith(size: value));
    });
  }
}

/// @nodoc

class _$CheckProductToSoppingCartAccountEventImpl
    implements CheckProductToSoppingCartAccountEvent {
  const _$CheckProductToSoppingCartAccountEventImpl({required this.size});

  @override
  final SkuProductDataModel size;

  @override
  String toString() {
    return 'AccountEvent.checkProductToSoppingCart(size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckProductToSoppingCartAccountEventImpl &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckProductToSoppingCartAccountEventImplCopyWith<
          _$CheckProductToSoppingCartAccountEventImpl>
      get copyWith => __$$CheckProductToSoppingCartAccountEventImplCopyWithImpl<
          _$CheckProductToSoppingCartAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return checkProductToSoppingCart(size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return checkProductToSoppingCart?.call(size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (checkProductToSoppingCart != null) {
      return checkProductToSoppingCart(size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return checkProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return checkProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (checkProductToSoppingCart != null) {
      return checkProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class CheckProductToSoppingCartAccountEvent implements AccountEvent {
  const factory CheckProductToSoppingCartAccountEvent(
          {required final SkuProductDataModel size}) =
      _$CheckProductToSoppingCartAccountEventImpl;

  SkuProductDataModel get size;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckProductToSoppingCartAccountEventImplCopyWith<
          _$CheckProductToSoppingCartAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInfoProductSizeAccountEventImplCopyWith<$Res> {
  factory _$$GetInfoProductSizeAccountEventImplCopyWith(
          _$GetInfoProductSizeAccountEventImpl value,
          $Res Function(_$GetInfoProductSizeAccountEventImpl) then) =
      __$$GetInfoProductSizeAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, bool isShop});
}

/// @nodoc
class __$$GetInfoProductSizeAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$GetInfoProductSizeAccountEventImpl>
    implements _$$GetInfoProductSizeAccountEventImplCopyWith<$Res> {
  __$$GetInfoProductSizeAccountEventImplCopyWithImpl(
      _$GetInfoProductSizeAccountEventImpl _value,
      $Res Function(_$GetInfoProductSizeAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? isShop = null,
  }) {
    return _then(_$GetInfoProductSizeAccountEventImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isShop: null == isShop
          ? _value.isShop
          : isShop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetInfoProductSizeAccountEventImpl
    implements GetInfoProductSizeAccountEvent {
  const _$GetInfoProductSizeAccountEventImpl(
      {required this.code, required this.isShop});

  @override
  final String code;
  @override
  final bool isShop;

  @override
  String toString() {
    return 'AccountEvent.getInfoProductSize(code: $code, isShop: $isShop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoProductSizeAccountEventImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isShop, isShop) || other.isShop == isShop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, isShop);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInfoProductSizeAccountEventImplCopyWith<
          _$GetInfoProductSizeAccountEventImpl>
      get copyWith => __$$GetInfoProductSizeAccountEventImplCopyWithImpl<
          _$GetInfoProductSizeAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function() paginationProduct,
    required TResult Function() getOrders,
    required TResult Function() paginationListOrdersBlank,
    required TResult Function() getListOrdersBlank,
    required TResult Function(String fileName, String id) getOrderPdfBlank,
    required TResult Function() paginationListTailoringBlank,
    required TResult Function() getListTailoringBlank,
    required TResult Function(String fileName, String id) getTailoringPdfBlank,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id, String? searchQuery) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
    required TResult Function() virtualCardsCod,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function(String fileName, Uint8List bytes) saveDocument,
    required TResult Function() goBackProductInfo,
    required TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)
        addProductToSoppingCart,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return getInfoProductSize(code, isShop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function()? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function()? paginationListOrdersBlank,
    TResult? Function()? getListOrdersBlank,
    TResult? Function(String fileName, String id)? getOrderPdfBlank,
    TResult? Function()? paginationListTailoringBlank,
    TResult? Function()? getListTailoringBlank,
    TResult? Function(String fileName, String id)? getTailoringPdfBlank,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
    TResult? Function()? virtualCardsCod,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function(String fileName, Uint8List bytes)? saveDocument,
    TResult? Function()? goBackProductInfo,
    TResult? Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return getInfoProductSize?.call(code, isShop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function()? paginationProduct,
    TResult Function()? getOrders,
    TResult Function()? paginationListOrdersBlank,
    TResult Function()? getListOrdersBlank,
    TResult Function(String fileName, String id)? getOrderPdfBlank,
    TResult Function()? paginationListTailoringBlank,
    TResult Function()? getListTailoringBlank,
    TResult Function(String fileName, String id)? getTailoringPdfBlank,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id, String? searchQuery)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    TResult Function()? virtualCardsCod,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function(String fileName, Uint8List bytes)? saveDocument,
    TResult Function()? goBackProductInfo,
    TResult Function(
            SkuProductDataModel size,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart)?
        addProductToSoppingCart,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getInfoProductSize != null) {
      return getInfoProductSize(code, isShop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
    required TResult Function(GetOrdersAccountEvent value) getOrders,
    required TResult Function(PaginationListOrdersBlankAccountEvent value)
        paginationListOrdersBlank,
    required TResult Function(GetListOrdersBlankAccountEvent value)
        getListOrdersBlank,
    required TResult Function(GetOrderPdfBlankAccountEvent value)
        getOrderPdfBlank,
    required TResult Function(PaginationListTailoringBlankAccountEvent value)
        paginationListTailoringBlank,
    required TResult Function(GetListTailoringBlankAccountEvent value)
        getListTailoringBlank,
    required TResult Function(GetTailoringPdfBlankAccountEvent value)
        getTailoringPdfBlank,
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(RemoveAccountEvent value) removeAccount,
    required TResult Function(VirtualCardsCodAccountEvent value)
        virtualCardsCod,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(ChangeSizeProductAccountEvent value)
        changeSizeProduct,
    required TResult Function(SaveDocumentAccountEvent value) saveDocument,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
    required TResult Function(AddProductToSoppingCartCAccountEvent value)
        addProductToSoppingCart,
    required TResult Function(CheckProductToSoppingCartAccountEvent value)
        checkProductToSoppingCart,
    required TResult Function(GetInfoProductSizeAccountEvent value)
        getInfoProductSize,
  }) {
    return getInfoProductSize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult? Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult? Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult? Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult? Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult? Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(RemoveAccountEvent value)? removeAccount,
    TResult? Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult? Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult? Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult? Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult? Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
  }) {
    return getInfoProductSize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(PaginationListOrdersBlankAccountEvent value)?
        paginationListOrdersBlank,
    TResult Function(GetListOrdersBlankAccountEvent value)? getListOrdersBlank,
    TResult Function(GetOrderPdfBlankAccountEvent value)? getOrderPdfBlank,
    TResult Function(PaginationListTailoringBlankAccountEvent value)?
        paginationListTailoringBlank,
    TResult Function(GetListTailoringBlankAccountEvent value)?
        getListTailoringBlank,
    TResult Function(GetTailoringPdfBlankAccountEvent value)?
        getTailoringPdfBlank,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(RemoveAccountEvent value)? removeAccount,
    TResult Function(VirtualCardsCodAccountEvent value)? virtualCardsCod,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(ChangeSizeProductAccountEvent value)? changeSizeProduct,
    TResult Function(SaveDocumentAccountEvent value)? saveDocument,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    TResult Function(AddProductToSoppingCartCAccountEvent value)?
        addProductToSoppingCart,
    TResult Function(CheckProductToSoppingCartAccountEvent value)?
        checkProductToSoppingCart,
    TResult Function(GetInfoProductSizeAccountEvent value)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getInfoProductSize != null) {
      return getInfoProductSize(this);
    }
    return orElse();
  }
}

abstract class GetInfoProductSizeAccountEvent implements AccountEvent {
  const factory GetInfoProductSizeAccountEvent(
      {required final String code,
      required final bool isShop}) = _$GetInfoProductSizeAccountEventImpl;

  String get code;
  bool get isShop;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInfoProductSizeAccountEventImplCopyWith<
          _$GetInfoProductSizeAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitAccountStateImplCopyWith<$Res> {
  factory _$$InitAccountStateImplCopyWith(_$InitAccountStateImpl value,
          $Res Function(_$InitAccountStateImpl) then) =
      __$$InitAccountStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$InitAccountStateImpl>
    implements _$$InitAccountStateImplCopyWith<$Res> {
  __$$InitAccountStateImplCopyWithImpl(_$InitAccountStateImpl _value,
      $Res Function(_$InitAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitAccountStateImpl implements InitAccountState {
  const _$InitAccountStateImpl();

  @override
  String toString() {
    return 'AccountState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitAccountStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
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
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitAccountState implements AccountState {
  const factory InitAccountState() = _$InitAccountStateImpl;
}

/// @nodoc
abstract class _$$LoadingAccountStateImplCopyWith<$Res> {
  factory _$$LoadingAccountStateImplCopyWith(_$LoadingAccountStateImpl value,
          $Res Function(_$LoadingAccountStateImpl) then) =
      __$$LoadingAccountStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$LoadingAccountStateImpl>
    implements _$$LoadingAccountStateImplCopyWith<$Res> {
  __$$LoadingAccountStateImplCopyWithImpl(_$LoadingAccountStateImpl _value,
      $Res Function(_$LoadingAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingAccountStateImpl implements LoadingAccountState {
  const _$LoadingAccountStateImpl();

  @override
  String toString() {
    return 'AccountState.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingAccountStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
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
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingAccountState implements AccountState {
  const factory LoadingAccountState() = _$LoadingAccountStateImpl;
}

/// @nodoc
abstract class _$$LoadingErrorButtonAccountStateImplCopyWith<$Res> {
  factory _$$LoadingErrorButtonAccountStateImplCopyWith(
          _$LoadingErrorButtonAccountStateImpl value,
          $Res Function(_$LoadingErrorButtonAccountStateImpl) then) =
      __$$LoadingErrorButtonAccountStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingErrorButtonAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res,
        _$LoadingErrorButtonAccountStateImpl>
    implements _$$LoadingErrorButtonAccountStateImplCopyWith<$Res> {
  __$$LoadingErrorButtonAccountStateImplCopyWithImpl(
      _$LoadingErrorButtonAccountStateImpl _value,
      $Res Function(_$LoadingErrorButtonAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingErrorButtonAccountStateImpl
    implements LoadingErrorButtonAccountState {
  const _$LoadingErrorButtonAccountStateImpl();

  @override
  String toString() {
    return 'AccountState.loadErrorButton()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingErrorButtonAccountStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) {
    return loadErrorButton();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) {
    return loadErrorButton?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) {
    if (loadErrorButton != null) {
      return loadErrorButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) {
    return loadErrorButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) {
    return loadErrorButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) {
    if (loadErrorButton != null) {
      return loadErrorButton(this);
    }
    return orElse();
  }
}

abstract class LoadingErrorButtonAccountState implements AccountState {
  const factory LoadingErrorButtonAccountState() =
      _$LoadingErrorButtonAccountStateImpl;
}

/// @nodoc
abstract class _$$ErrorAccountStateImplCopyWith<$Res> {
  factory _$$ErrorAccountStateImplCopyWith(_$ErrorAccountStateImpl value,
          $Res Function(_$ErrorAccountStateImpl) then) =
      __$$ErrorAccountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$ErrorAccountStateImpl>
    implements _$$ErrorAccountStateImplCopyWith<$Res> {
  __$$ErrorAccountStateImplCopyWithImpl(_$ErrorAccountStateImpl _value,
      $Res Function(_$ErrorAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorAccountStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorAccountStateImpl implements ErrorAccountState {
  const _$ErrorAccountStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AccountState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAccountStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAccountStateImplCopyWith<_$ErrorAccountStateImpl> get copyWith =>
      __$$ErrorAccountStateImplCopyWithImpl<_$ErrorAccountStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAccountState implements AccountState {
  const factory ErrorAccountState({required final String errorMessage}) =
      _$ErrorAccountStateImpl;

  String get errorMessage;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorAccountStateImplCopyWith<_$ErrorAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorOpenPdfAccountStateImplCopyWith<$Res> {
  factory _$$ErrorOpenPdfAccountStateImplCopyWith(
          _$ErrorOpenPdfAccountStateImpl value,
          $Res Function(_$ErrorOpenPdfAccountStateImpl) then) =
      __$$ErrorOpenPdfAccountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorOpenPdfAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$ErrorOpenPdfAccountStateImpl>
    implements _$$ErrorOpenPdfAccountStateImplCopyWith<$Res> {
  __$$ErrorOpenPdfAccountStateImplCopyWithImpl(
      _$ErrorOpenPdfAccountStateImpl _value,
      $Res Function(_$ErrorOpenPdfAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorOpenPdfAccountStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorOpenPdfAccountStateImpl implements ErrorOpenPdfAccountState {
  const _$ErrorOpenPdfAccountStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AccountState.errorOpenPdf(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorOpenPdfAccountStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorOpenPdfAccountStateImplCopyWith<_$ErrorOpenPdfAccountStateImpl>
      get copyWith => __$$ErrorOpenPdfAccountStateImplCopyWithImpl<
          _$ErrorOpenPdfAccountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) {
    return errorOpenPdf(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) {
    return errorOpenPdf?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) {
    if (errorOpenPdf != null) {
      return errorOpenPdf(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) {
    return errorOpenPdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) {
    return errorOpenPdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) {
    if (errorOpenPdf != null) {
      return errorOpenPdf(this);
    }
    return orElse();
  }
}

abstract class ErrorOpenPdfAccountState implements AccountState {
  const factory ErrorOpenPdfAccountState({required final String message}) =
      _$ErrorOpenPdfAccountStateImpl;

  String get message;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorOpenPdfAccountStateImplCopyWith<_$ErrorOpenPdfAccountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayOrderAccountStateImplCopyWith<$Res> {
  factory _$$PayOrderAccountStateImplCopyWith(_$PayOrderAccountStateImpl value,
          $Res Function(_$PayOrderAccountStateImpl) then) =
      __$$PayOrderAccountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$PayOrderAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$PayOrderAccountStateImpl>
    implements _$$PayOrderAccountStateImplCopyWith<$Res> {
  __$$PayOrderAccountStateImplCopyWithImpl(_$PayOrderAccountStateImpl _value,
      $Res Function(_$PayOrderAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$PayOrderAccountStateImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PayOrderAccountStateImpl implements PayOrderAccountState {
  const _$PayOrderAccountStateImpl({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'AccountState.payOrder(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayOrderAccountStateImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayOrderAccountStateImplCopyWith<_$PayOrderAccountStateImpl>
      get copyWith =>
          __$$PayOrderAccountStateImplCopyWithImpl<_$PayOrderAccountStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) {
    return payOrder(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) {
    return payOrder?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) {
    if (payOrder != null) {
      return payOrder(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) {
    return payOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) {
    return payOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) {
    if (payOrder != null) {
      return payOrder(this);
    }
    return orElse();
  }
}

abstract class PayOrderAccountState implements AccountState {
  const factory PayOrderAccountState({required final String url}) =
      _$PayOrderAccountStateImpl;

  String get url;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayOrderAccountStateImplCopyWith<_$PayOrderAccountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenSoppingCartAccountStateImplCopyWith<$Res> {
  factory _$$OpenSoppingCartAccountStateImplCopyWith(
          _$OpenSoppingCartAccountStateImpl value,
          $Res Function(_$OpenSoppingCartAccountStateImpl) then) =
      __$$OpenSoppingCartAccountStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenSoppingCartAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$OpenSoppingCartAccountStateImpl>
    implements _$$OpenSoppingCartAccountStateImplCopyWith<$Res> {
  __$$OpenSoppingCartAccountStateImplCopyWithImpl(
      _$OpenSoppingCartAccountStateImpl _value,
      $Res Function(_$OpenSoppingCartAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OpenSoppingCartAccountStateImpl implements OpenSoppingCartAccountState {
  const _$OpenSoppingCartAccountStateImpl();

  @override
  String toString() {
    return 'AccountState.openSoppingCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenSoppingCartAccountStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) {
    return openSoppingCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) {
    return openSoppingCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) {
    if (openSoppingCart != null) {
      return openSoppingCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) {
    return openSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) {
    return openSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) {
    if (openSoppingCart != null) {
      return openSoppingCart(this);
    }
    return orElse();
  }
}

abstract class OpenSoppingCartAccountState implements AccountState {
  const factory OpenSoppingCartAccountState() =
      _$OpenSoppingCartAccountStateImpl;
}

/// @nodoc
abstract class _$$GetSizeProductAccountStateImplCopyWith<$Res> {
  factory _$$GetSizeProductAccountStateImplCopyWith(
          _$GetSizeProductAccountStateImpl value,
          $Res Function(_$GetSizeProductAccountStateImpl) then) =
      __$$GetSizeProductAccountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String code,
      List<SkuProductDataModel> listSize,
      List<SkuProductDataModel> listSizeToSoppingCart});
}

/// @nodoc
class __$$GetSizeProductAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$GetSizeProductAccountStateImpl>
    implements _$$GetSizeProductAccountStateImplCopyWith<$Res> {
  __$$GetSizeProductAccountStateImplCopyWithImpl(
      _$GetSizeProductAccountStateImpl _value,
      $Res Function(_$GetSizeProductAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? listSize = null,
    Object? listSizeToSoppingCart = null,
  }) {
    return _then(_$GetSizeProductAccountStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      listSize: null == listSize
          ? _value._listSize
          : listSize // ignore: cast_nullable_to_non_nullable
              as List<SkuProductDataModel>,
      listSizeToSoppingCart: null == listSizeToSoppingCart
          ? _value._listSizeToSoppingCart
          : listSizeToSoppingCart // ignore: cast_nullable_to_non_nullable
              as List<SkuProductDataModel>,
    ));
  }
}

/// @nodoc

class _$GetSizeProductAccountStateImpl implements GetSizeProductAccountState {
  const _$GetSizeProductAccountStateImpl(
      {required this.code,
      required final List<SkuProductDataModel> listSize,
      required final List<SkuProductDataModel> listSizeToSoppingCart})
      : _listSize = listSize,
        _listSizeToSoppingCart = listSizeToSoppingCart;

  @override
  final String code;
  final List<SkuProductDataModel> _listSize;
  @override
  List<SkuProductDataModel> get listSize {
    if (_listSize is EqualUnmodifiableListView) return _listSize;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSize);
  }

  final List<SkuProductDataModel> _listSizeToSoppingCart;
  @override
  List<SkuProductDataModel> get listSizeToSoppingCart {
    if (_listSizeToSoppingCart is EqualUnmodifiableListView)
      return _listSizeToSoppingCart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSizeToSoppingCart);
  }

  @override
  String toString() {
    return 'AccountState.getSizeProduct(code: $code, listSize: $listSize, listSizeToSoppingCart: $listSizeToSoppingCart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSizeProductAccountStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._listSize, _listSize) &&
            const DeepCollectionEquality()
                .equals(other._listSizeToSoppingCart, _listSizeToSoppingCart));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      const DeepCollectionEquality().hash(_listSize),
      const DeepCollectionEquality().hash(_listSizeToSoppingCart));

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSizeProductAccountStateImplCopyWith<_$GetSizeProductAccountStateImpl>
      get copyWith => __$$GetSizeProductAccountStateImplCopyWithImpl<
          _$GetSizeProductAccountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) {
    return getSizeProduct(code, listSize, listSizeToSoppingCart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) {
    return getSizeProduct?.call(code, listSize, listSizeToSoppingCart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) {
    if (getSizeProduct != null) {
      return getSizeProduct(code, listSize, listSizeToSoppingCart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) {
    return getSizeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) {
    return getSizeProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) {
    if (getSizeProduct != null) {
      return getSizeProduct(this);
    }
    return orElse();
  }
}

abstract class GetSizeProductAccountState implements AccountState {
  const factory GetSizeProductAccountState(
          {required final String code,
          required final List<SkuProductDataModel> listSize,
          required final List<SkuProductDataModel> listSizeToSoppingCart}) =
      _$GetSizeProductAccountStateImpl;

  String get code;
  List<SkuProductDataModel> get listSize;
  List<SkuProductDataModel> get listSizeToSoppingCart;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSizeProductAccountStateImplCopyWith<_$GetSizeProductAccountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductAccountStateImplCopyWith<$Res> {
  factory _$$AddProductAccountStateImplCopyWith(
          _$AddProductAccountStateImpl value,
          $Res Function(_$AddProductAccountStateImpl) then) =
      __$$AddProductAccountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$AddProductAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AddProductAccountStateImpl>
    implements _$$AddProductAccountStateImplCopyWith<$Res> {
  __$$AddProductAccountStateImplCopyWithImpl(
      _$AddProductAccountStateImpl _value,
      $Res Function(_$AddProductAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$AddProductAccountStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProductAccountStateImpl implements AddProductAccountState {
  const _$AddProductAccountStateImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'AccountState.addProductToSoppingCart(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductAccountStateImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductAccountStateImplCopyWith<_$AddProductAccountStateImpl>
      get copyWith => __$$AddProductAccountStateImplCopyWithImpl<
          _$AddProductAccountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) {
    return addProductToSoppingCart(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) {
    return addProductToSoppingCart?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCart != null) {
      return addProductToSoppingCart(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) {
    return addProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) {
    return addProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCart != null) {
      return addProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class AddProductAccountState implements AccountState {
  const factory AddProductAccountState({required final String code}) =
      _$AddProductAccountStateImpl;

  String get code;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductAccountStateImplCopyWith<_$AddProductAccountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreloadDataCompletedAccountStateImplCopyWith<$Res> {
  factory _$$PreloadDataCompletedAccountStateImplCopyWith(
          _$PreloadDataCompletedAccountStateImpl value,
          $Res Function(_$PreloadDataCompletedAccountStateImpl) then) =
      __$$PreloadDataCompletedAccountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String phone,
      String name,
      String email,
      String countOrders,
      String applicationVersion,
      List<OrderItemDataModel> orders,
      List<ProductDataModel> favouritesProducts,
      List<int> favouritesProductsId,
      List<String> listProductsCode,
      List<ProductDataModel> listProdcutsStyle,
      List<ProductDataModel> listProdcutsAlso,
      List<ProductDataModel> listProdcutsBrand,
      List<ProductDataModel> listProdcutsComplect,
      bool isAuth,
      String virtualCardsCod,
      List<OrderBlankDataModel> listOrdersBlank,
      List<OrderBlankDataModel> listTailoringBlank,
      List<SkuProductDataModel> listSize,
      Uint8List file,
      String fileName,
      bool isLoadGetSizeProduct,
      int offsetOrders,
      int offsetOrdersBlank,
      int offsetTailoringBlank,
      String? codeProduct,
      SkuProductDataModel? selectSizeProduct,
      bool? isShoppingCart,
      bool? isError,
      bool? isLoadErrorButton,
      bool? isShopGetSizeProduct,
      String? typeError,
      String? titleScreen,
      BasketInfoItemDataModel? itemInfo,
      ProductDataModel? product,
      String? typeAddProductToShoppingCart,
      String? identifierAddProductToShoppingCart,
      int? indexItem,
      String? errorMessage,
      bool? isShoppingCartDetailsProduct,
      bool? isSuccessfullySavedFile,
      bool? isLoadVirtualCardsCod,
      bool? isLoadOpenPdf,
      FavouritesCatalogInfoDataModel? favouritesProductsInfo,
      DetailProductDataModel? detailsProduct,
      UserDataModel? user,
      OrderInfoDataModel? orderInfo});

  $SkuProductDataModelCopyWith<$Res>? get selectSizeProduct;
  $BasketInfoItemDataModelCopyWith<$Res>? get itemInfo;
  $ProductDataModelCopyWith<$Res>? get product;
  $FavouritesCatalogInfoDataModelCopyWith<$Res>? get favouritesProductsInfo;
  $DetailProductDataModelCopyWith<$Res>? get detailsProduct;
  $UserDataModelCopyWith<$Res>? get user;
  $OrderInfoDataModelCopyWith<$Res>? get orderInfo;
}

/// @nodoc
class __$$PreloadDataCompletedAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res,
        _$PreloadDataCompletedAccountStateImpl>
    implements _$$PreloadDataCompletedAccountStateImplCopyWith<$Res> {
  __$$PreloadDataCompletedAccountStateImplCopyWithImpl(
      _$PreloadDataCompletedAccountStateImpl _value,
      $Res Function(_$PreloadDataCompletedAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? name = null,
    Object? email = null,
    Object? countOrders = null,
    Object? applicationVersion = null,
    Object? orders = null,
    Object? favouritesProducts = null,
    Object? favouritesProductsId = null,
    Object? listProductsCode = null,
    Object? listProdcutsStyle = null,
    Object? listProdcutsAlso = null,
    Object? listProdcutsBrand = null,
    Object? listProdcutsComplect = null,
    Object? isAuth = null,
    Object? virtualCardsCod = null,
    Object? listOrdersBlank = null,
    Object? listTailoringBlank = null,
    Object? listSize = null,
    Object? file = null,
    Object? fileName = null,
    Object? isLoadGetSizeProduct = null,
    Object? offsetOrders = null,
    Object? offsetOrdersBlank = null,
    Object? offsetTailoringBlank = null,
    Object? codeProduct = freezed,
    Object? selectSizeProduct = freezed,
    Object? isShoppingCart = freezed,
    Object? isError = freezed,
    Object? isLoadErrorButton = freezed,
    Object? isShopGetSizeProduct = freezed,
    Object? typeError = freezed,
    Object? titleScreen = freezed,
    Object? itemInfo = freezed,
    Object? product = freezed,
    Object? typeAddProductToShoppingCart = freezed,
    Object? identifierAddProductToShoppingCart = freezed,
    Object? indexItem = freezed,
    Object? errorMessage = freezed,
    Object? isShoppingCartDetailsProduct = freezed,
    Object? isSuccessfullySavedFile = freezed,
    Object? isLoadVirtualCardsCod = freezed,
    Object? isLoadOpenPdf = freezed,
    Object? favouritesProductsInfo = freezed,
    Object? detailsProduct = freezed,
    Object? user = freezed,
    Object? orderInfo = freezed,
  }) {
    return _then(_$PreloadDataCompletedAccountStateImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      countOrders: null == countOrders
          ? _value.countOrders
          : countOrders // ignore: cast_nullable_to_non_nullable
              as String,
      applicationVersion: null == applicationVersion
          ? _value.applicationVersion
          : applicationVersion // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderItemDataModel>,
      favouritesProducts: null == favouritesProducts
          ? _value._favouritesProducts
          : favouritesProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      favouritesProductsId: null == favouritesProductsId
          ? _value._favouritesProductsId
          : favouritesProductsId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      listProductsCode: null == listProductsCode
          ? _value._listProductsCode
          : listProductsCode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listProdcutsStyle: null == listProdcutsStyle
          ? _value._listProdcutsStyle
          : listProdcutsStyle // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      listProdcutsAlso: null == listProdcutsAlso
          ? _value._listProdcutsAlso
          : listProdcutsAlso // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      listProdcutsBrand: null == listProdcutsBrand
          ? _value._listProdcutsBrand
          : listProdcutsBrand // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      listProdcutsComplect: null == listProdcutsComplect
          ? _value._listProdcutsComplect
          : listProdcutsComplect // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      isAuth: null == isAuth
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      virtualCardsCod: null == virtualCardsCod
          ? _value.virtualCardsCod
          : virtualCardsCod // ignore: cast_nullable_to_non_nullable
              as String,
      listOrdersBlank: null == listOrdersBlank
          ? _value._listOrdersBlank
          : listOrdersBlank // ignore: cast_nullable_to_non_nullable
              as List<OrderBlankDataModel>,
      listTailoringBlank: null == listTailoringBlank
          ? _value._listTailoringBlank
          : listTailoringBlank // ignore: cast_nullable_to_non_nullable
              as List<OrderBlankDataModel>,
      listSize: null == listSize
          ? _value._listSize
          : listSize // ignore: cast_nullable_to_non_nullable
              as List<SkuProductDataModel>,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadGetSizeProduct: null == isLoadGetSizeProduct
          ? _value.isLoadGetSizeProduct
          : isLoadGetSizeProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      offsetOrders: null == offsetOrders
          ? _value.offsetOrders
          : offsetOrders // ignore: cast_nullable_to_non_nullable
              as int,
      offsetOrdersBlank: null == offsetOrdersBlank
          ? _value.offsetOrdersBlank
          : offsetOrdersBlank // ignore: cast_nullable_to_non_nullable
              as int,
      offsetTailoringBlank: null == offsetTailoringBlank
          ? _value.offsetTailoringBlank
          : offsetTailoringBlank // ignore: cast_nullable_to_non_nullable
              as int,
      codeProduct: freezed == codeProduct
          ? _value.codeProduct
          : codeProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      selectSizeProduct: freezed == selectSizeProduct
          ? _value.selectSizeProduct
          : selectSizeProduct // ignore: cast_nullable_to_non_nullable
              as SkuProductDataModel?,
      isShoppingCart: freezed == isShoppingCart
          ? _value.isShoppingCart
          : isShoppingCart // ignore: cast_nullable_to_non_nullable
              as bool?,
      isError: freezed == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoadErrorButton: freezed == isLoadErrorButton
          ? _value.isLoadErrorButton
          : isLoadErrorButton // ignore: cast_nullable_to_non_nullable
              as bool?,
      isShopGetSizeProduct: freezed == isShopGetSizeProduct
          ? _value.isShopGetSizeProduct
          : isShopGetSizeProduct // ignore: cast_nullable_to_non_nullable
              as bool?,
      typeError: freezed == typeError
          ? _value.typeError
          : typeError // ignore: cast_nullable_to_non_nullable
              as String?,
      titleScreen: freezed == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String?,
      itemInfo: freezed == itemInfo
          ? _value.itemInfo
          : itemInfo // ignore: cast_nullable_to_non_nullable
              as BasketInfoItemDataModel?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel?,
      typeAddProductToShoppingCart: freezed == typeAddProductToShoppingCart
          ? _value.typeAddProductToShoppingCart
          : typeAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String?,
      identifierAddProductToShoppingCart: freezed ==
              identifierAddProductToShoppingCart
          ? _value.identifierAddProductToShoppingCart
          : identifierAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String?,
      indexItem: freezed == indexItem
          ? _value.indexItem
          : indexItem // ignore: cast_nullable_to_non_nullable
              as int?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isShoppingCartDetailsProduct: freezed == isShoppingCartDetailsProduct
          ? _value.isShoppingCartDetailsProduct
          : isShoppingCartDetailsProduct // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSuccessfullySavedFile: freezed == isSuccessfullySavedFile
          ? _value.isSuccessfullySavedFile
          : isSuccessfullySavedFile // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoadVirtualCardsCod: freezed == isLoadVirtualCardsCod
          ? _value.isLoadVirtualCardsCod
          : isLoadVirtualCardsCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoadOpenPdf: freezed == isLoadOpenPdf
          ? _value.isLoadOpenPdf
          : isLoadOpenPdf // ignore: cast_nullable_to_non_nullable
              as bool?,
      favouritesProductsInfo: freezed == favouritesProductsInfo
          ? _value.favouritesProductsInfo
          : favouritesProductsInfo // ignore: cast_nullable_to_non_nullable
              as FavouritesCatalogInfoDataModel?,
      detailsProduct: freezed == detailsProduct
          ? _value.detailsProduct
          : detailsProduct // ignore: cast_nullable_to_non_nullable
              as DetailProductDataModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
      orderInfo: freezed == orderInfo
          ? _value.orderInfo
          : orderInfo // ignore: cast_nullable_to_non_nullable
              as OrderInfoDataModel?,
    ));
  }

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkuProductDataModelCopyWith<$Res>? get selectSizeProduct {
    if (_value.selectSizeProduct == null) {
      return null;
    }

    return $SkuProductDataModelCopyWith<$Res>(_value.selectSizeProduct!,
        (value) {
      return _then(_value.copyWith(selectSizeProduct: value));
    });
  }

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasketInfoItemDataModelCopyWith<$Res>? get itemInfo {
    if (_value.itemInfo == null) {
      return null;
    }

    return $BasketInfoItemDataModelCopyWith<$Res>(_value.itemInfo!, (value) {
      return _then(_value.copyWith(itemInfo: value));
    });
  }

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDataModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductDataModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FavouritesCatalogInfoDataModelCopyWith<$Res>? get favouritesProductsInfo {
    if (_value.favouritesProductsInfo == null) {
      return null;
    }

    return $FavouritesCatalogInfoDataModelCopyWith<$Res>(
        _value.favouritesProductsInfo!, (value) {
      return _then(_value.copyWith(favouritesProductsInfo: value));
    });
  }

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailProductDataModelCopyWith<$Res>? get detailsProduct {
    if (_value.detailsProduct == null) {
      return null;
    }

    return $DetailProductDataModelCopyWith<$Res>(_value.detailsProduct!,
        (value) {
      return _then(_value.copyWith(detailsProduct: value));
    });
  }

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDataModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderInfoDataModelCopyWith<$Res>? get orderInfo {
    if (_value.orderInfo == null) {
      return null;
    }

    return $OrderInfoDataModelCopyWith<$Res>(_value.orderInfo!, (value) {
      return _then(_value.copyWith(orderInfo: value));
    });
  }
}

/// @nodoc

class _$PreloadDataCompletedAccountStateImpl
    implements PreloadDataCompletedAccountState {
  const _$PreloadDataCompletedAccountStateImpl(
      {required this.phone,
      required this.name,
      required this.email,
      required this.countOrders,
      required this.applicationVersion,
      required final List<OrderItemDataModel> orders,
      required final List<ProductDataModel> favouritesProducts,
      required final List<int> favouritesProductsId,
      required final List<String> listProductsCode,
      required final List<ProductDataModel> listProdcutsStyle,
      required final List<ProductDataModel> listProdcutsAlso,
      required final List<ProductDataModel> listProdcutsBrand,
      required final List<ProductDataModel> listProdcutsComplect,
      required this.isAuth,
      required this.virtualCardsCod,
      required final List<OrderBlankDataModel> listOrdersBlank,
      required final List<OrderBlankDataModel> listTailoringBlank,
      required final List<SkuProductDataModel> listSize,
      required this.file,
      required this.fileName,
      required this.isLoadGetSizeProduct,
      required this.offsetOrders,
      required this.offsetOrdersBlank,
      required this.offsetTailoringBlank,
      this.codeProduct,
      this.selectSizeProduct,
      this.isShoppingCart,
      this.isError,
      this.isLoadErrorButton,
      this.isShopGetSizeProduct,
      this.typeError,
      this.titleScreen,
      this.itemInfo,
      this.product,
      this.typeAddProductToShoppingCart,
      this.identifierAddProductToShoppingCart,
      this.indexItem,
      this.errorMessage,
      this.isShoppingCartDetailsProduct,
      this.isSuccessfullySavedFile,
      this.isLoadVirtualCardsCod,
      this.isLoadOpenPdf,
      this.favouritesProductsInfo,
      this.detailsProduct,
      this.user,
      this.orderInfo})
      : _orders = orders,
        _favouritesProducts = favouritesProducts,
        _favouritesProductsId = favouritesProductsId,
        _listProductsCode = listProductsCode,
        _listProdcutsStyle = listProdcutsStyle,
        _listProdcutsAlso = listProdcutsAlso,
        _listProdcutsBrand = listProdcutsBrand,
        _listProdcutsComplect = listProdcutsComplect,
        _listOrdersBlank = listOrdersBlank,
        _listTailoringBlank = listTailoringBlank,
        _listSize = listSize;

  @override
  final String phone;
  @override
  final String name;
  @override
  final String email;
  @override
  final String countOrders;
  @override
  final String applicationVersion;
  final List<OrderItemDataModel> _orders;
  @override
  List<OrderItemDataModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final List<ProductDataModel> _favouritesProducts;
  @override
  List<ProductDataModel> get favouritesProducts {
    if (_favouritesProducts is EqualUnmodifiableListView)
      return _favouritesProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesProducts);
  }

  final List<int> _favouritesProductsId;
  @override
  List<int> get favouritesProductsId {
    if (_favouritesProductsId is EqualUnmodifiableListView)
      return _favouritesProductsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesProductsId);
  }

  final List<String> _listProductsCode;
  @override
  List<String> get listProductsCode {
    if (_listProductsCode is EqualUnmodifiableListView)
      return _listProductsCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProductsCode);
  }

  final List<ProductDataModel> _listProdcutsStyle;
  @override
  List<ProductDataModel> get listProdcutsStyle {
    if (_listProdcutsStyle is EqualUnmodifiableListView)
      return _listProdcutsStyle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProdcutsStyle);
  }

  final List<ProductDataModel> _listProdcutsAlso;
  @override
  List<ProductDataModel> get listProdcutsAlso {
    if (_listProdcutsAlso is EqualUnmodifiableListView)
      return _listProdcutsAlso;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProdcutsAlso);
  }

  final List<ProductDataModel> _listProdcutsBrand;
  @override
  List<ProductDataModel> get listProdcutsBrand {
    if (_listProdcutsBrand is EqualUnmodifiableListView)
      return _listProdcutsBrand;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProdcutsBrand);
  }

  final List<ProductDataModel> _listProdcutsComplect;
  @override
  List<ProductDataModel> get listProdcutsComplect {
    if (_listProdcutsComplect is EqualUnmodifiableListView)
      return _listProdcutsComplect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProdcutsComplect);
  }

  @override
  final bool isAuth;
  @override
  final String virtualCardsCod;
  final List<OrderBlankDataModel> _listOrdersBlank;
  @override
  List<OrderBlankDataModel> get listOrdersBlank {
    if (_listOrdersBlank is EqualUnmodifiableListView) return _listOrdersBlank;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOrdersBlank);
  }

  final List<OrderBlankDataModel> _listTailoringBlank;
  @override
  List<OrderBlankDataModel> get listTailoringBlank {
    if (_listTailoringBlank is EqualUnmodifiableListView)
      return _listTailoringBlank;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTailoringBlank);
  }

  final List<SkuProductDataModel> _listSize;
  @override
  List<SkuProductDataModel> get listSize {
    if (_listSize is EqualUnmodifiableListView) return _listSize;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSize);
  }

  @override
  final Uint8List file;
  @override
  final String fileName;
  @override
  final bool isLoadGetSizeProduct;
  @override
  final int offsetOrders;
  @override
  final int offsetOrdersBlank;
  @override
  final int offsetTailoringBlank;
  @override
  final String? codeProduct;
  @override
  final SkuProductDataModel? selectSizeProduct;
  @override
  final bool? isShoppingCart;
  @override
  final bool? isError;
  @override
  final bool? isLoadErrorButton;
  @override
  final bool? isShopGetSizeProduct;
  @override
  final String? typeError;
  @override
  final String? titleScreen;
  @override
  final BasketInfoItemDataModel? itemInfo;
  @override
  final ProductDataModel? product;
  @override
  final String? typeAddProductToShoppingCart;
  @override
  final String? identifierAddProductToShoppingCart;
  @override
  final int? indexItem;
  @override
  final String? errorMessage;
  @override
  final bool? isShoppingCartDetailsProduct;
  @override
  final bool? isSuccessfullySavedFile;
  @override
  final bool? isLoadVirtualCardsCod;
  @override
  final bool? isLoadOpenPdf;
  @override
  final FavouritesCatalogInfoDataModel? favouritesProductsInfo;
  @override
  final DetailProductDataModel? detailsProduct;
  @override
  final UserDataModel? user;
  @override
  final OrderInfoDataModel? orderInfo;

  @override
  String toString() {
    return 'AccountState.preloadDataCompleted(phone: $phone, name: $name, email: $email, countOrders: $countOrders, applicationVersion: $applicationVersion, orders: $orders, favouritesProducts: $favouritesProducts, favouritesProductsId: $favouritesProductsId, listProductsCode: $listProductsCode, listProdcutsStyle: $listProdcutsStyle, listProdcutsAlso: $listProdcutsAlso, listProdcutsBrand: $listProdcutsBrand, listProdcutsComplect: $listProdcutsComplect, isAuth: $isAuth, virtualCardsCod: $virtualCardsCod, listOrdersBlank: $listOrdersBlank, listTailoringBlank: $listTailoringBlank, listSize: $listSize, file: $file, fileName: $fileName, isLoadGetSizeProduct: $isLoadGetSizeProduct, offsetOrders: $offsetOrders, offsetOrdersBlank: $offsetOrdersBlank, offsetTailoringBlank: $offsetTailoringBlank, codeProduct: $codeProduct, selectSizeProduct: $selectSizeProduct, isShoppingCart: $isShoppingCart, isError: $isError, isLoadErrorButton: $isLoadErrorButton, isShopGetSizeProduct: $isShopGetSizeProduct, typeError: $typeError, titleScreen: $titleScreen, itemInfo: $itemInfo, product: $product, typeAddProductToShoppingCart: $typeAddProductToShoppingCart, identifierAddProductToShoppingCart: $identifierAddProductToShoppingCart, indexItem: $indexItem, errorMessage: $errorMessage, isShoppingCartDetailsProduct: $isShoppingCartDetailsProduct, isSuccessfullySavedFile: $isSuccessfullySavedFile, isLoadVirtualCardsCod: $isLoadVirtualCardsCod, isLoadOpenPdf: $isLoadOpenPdf, favouritesProductsInfo: $favouritesProductsInfo, detailsProduct: $detailsProduct, user: $user, orderInfo: $orderInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedAccountStateImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.countOrders, countOrders) ||
                other.countOrders == countOrders) &&
            (identical(other.applicationVersion, applicationVersion) ||
                other.applicationVersion == applicationVersion) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality()
                .equals(other._favouritesProducts, _favouritesProducts) &&
            const DeepCollectionEquality()
                .equals(other._favouritesProductsId, _favouritesProductsId) &&
            const DeepCollectionEquality()
                .equals(other._listProductsCode, _listProductsCode) &&
            const DeepCollectionEquality()
                .equals(other._listProdcutsStyle, _listProdcutsStyle) &&
            const DeepCollectionEquality()
                .equals(other._listProdcutsAlso, _listProdcutsAlso) &&
            const DeepCollectionEquality()
                .equals(other._listProdcutsBrand, _listProdcutsBrand) &&
            const DeepCollectionEquality()
                .equals(other._listProdcutsComplect, _listProdcutsComplect) &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth) &&
            (identical(other.virtualCardsCod, virtualCardsCod) ||
                other.virtualCardsCod == virtualCardsCod) &&
            const DeepCollectionEquality()
                .equals(other._listOrdersBlank, _listOrdersBlank) &&
            const DeepCollectionEquality()
                .equals(other._listTailoringBlank, _listTailoringBlank) &&
            const DeepCollectionEquality().equals(other._listSize, _listSize) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.isLoadGetSizeProduct, isLoadGetSizeProduct) ||
                other.isLoadGetSizeProduct == isLoadGetSizeProduct) &&
            (identical(other.offsetOrders, offsetOrders) ||
                other.offsetOrders == offsetOrders) &&
            (identical(other.offsetOrdersBlank, offsetOrdersBlank) ||
                other.offsetOrdersBlank == offsetOrdersBlank) &&
            (identical(other.offsetTailoringBlank, offsetTailoringBlank) ||
                other.offsetTailoringBlank == offsetTailoringBlank) &&
            (identical(other.codeProduct, codeProduct) ||
                other.codeProduct == codeProduct) &&
            (identical(other.selectSizeProduct, selectSizeProduct) ||
                other.selectSizeProduct == selectSizeProduct) &&
            (identical(other.isShoppingCart, isShoppingCart) ||
                other.isShoppingCart == isShoppingCart) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isLoadErrorButton, isLoadErrorButton) ||
                other.isLoadErrorButton == isLoadErrorButton) &&
            (identical(other.isShopGetSizeProduct, isShopGetSizeProduct) ||
                other.isShopGetSizeProduct == isShopGetSizeProduct) &&
            (identical(other.typeError, typeError) ||
                other.typeError == typeError) &&
            (identical(other.titleScreen, titleScreen) ||
                other.titleScreen == titleScreen) &&
            (identical(other.itemInfo, itemInfo) ||
                other.itemInfo == itemInfo) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.typeAddProductToShoppingCart, typeAddProductToShoppingCart) ||
                other.typeAddProductToShoppingCart ==
                    typeAddProductToShoppingCart) &&
            (identical(other.identifierAddProductToShoppingCart,
                    identifierAddProductToShoppingCart) ||
                other.identifierAddProductToShoppingCart ==
                    identifierAddProductToShoppingCart) &&
            (identical(other.indexItem, indexItem) ||
                other.indexItem == indexItem) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isShoppingCartDetailsProduct, isShoppingCartDetailsProduct) ||
                other.isShoppingCartDetailsProduct ==
                    isShoppingCartDetailsProduct) &&
            (identical(other.isSuccessfullySavedFile, isSuccessfullySavedFile) ||
                other.isSuccessfullySavedFile == isSuccessfullySavedFile) &&
            (identical(other.isLoadVirtualCardsCod, isLoadVirtualCardsCod) ||
                other.isLoadVirtualCardsCod == isLoadVirtualCardsCod) &&
            (identical(other.isLoadOpenPdf, isLoadOpenPdf) ||
                other.isLoadOpenPdf == isLoadOpenPdf) &&
            (identical(other.favouritesProductsInfo, favouritesProductsInfo) ||
                other.favouritesProductsInfo == favouritesProductsInfo) &&
            (identical(other.detailsProduct, detailsProduct) ||
                other.detailsProduct == detailsProduct) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.orderInfo, orderInfo) || other.orderInfo == orderInfo));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        phone,
        name,
        email,
        countOrders,
        applicationVersion,
        const DeepCollectionEquality().hash(_orders),
        const DeepCollectionEquality().hash(_favouritesProducts),
        const DeepCollectionEquality().hash(_favouritesProductsId),
        const DeepCollectionEquality().hash(_listProductsCode),
        const DeepCollectionEquality().hash(_listProdcutsStyle),
        const DeepCollectionEquality().hash(_listProdcutsAlso),
        const DeepCollectionEquality().hash(_listProdcutsBrand),
        const DeepCollectionEquality().hash(_listProdcutsComplect),
        isAuth,
        virtualCardsCod,
        const DeepCollectionEquality().hash(_listOrdersBlank),
        const DeepCollectionEquality().hash(_listTailoringBlank),
        const DeepCollectionEquality().hash(_listSize),
        const DeepCollectionEquality().hash(file),
        fileName,
        isLoadGetSizeProduct,
        offsetOrders,
        offsetOrdersBlank,
        offsetTailoringBlank,
        codeProduct,
        selectSizeProduct,
        isShoppingCart,
        isError,
        isLoadErrorButton,
        isShopGetSizeProduct,
        typeError,
        titleScreen,
        itemInfo,
        product,
        typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart,
        indexItem,
        errorMessage,
        isShoppingCartDetailsProduct,
        isSuccessfullySavedFile,
        isLoadVirtualCardsCod,
        isLoadOpenPdf,
        favouritesProductsInfo,
        detailsProduct,
        user,
        orderInfo
      ]);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataCompletedAccountStateImplCopyWith<
          _$PreloadDataCompletedAccountStateImpl>
      get copyWith => __$$PreloadDataCompletedAccountStateImplCopyWithImpl<
          _$PreloadDataCompletedAccountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) {
    return preloadDataCompleted(
        phone,
        name,
        email,
        countOrders,
        applicationVersion,
        orders,
        favouritesProducts,
        favouritesProductsId,
        listProductsCode,
        listProdcutsStyle,
        listProdcutsAlso,
        listProdcutsBrand,
        listProdcutsComplect,
        isAuth,
        virtualCardsCod,
        listOrdersBlank,
        listTailoringBlank,
        listSize,
        file,
        fileName,
        isLoadGetSizeProduct,
        offsetOrders,
        offsetOrdersBlank,
        offsetTailoringBlank,
        codeProduct,
        selectSizeProduct,
        isShoppingCart,
        isError,
        isLoadErrorButton,
        isShopGetSizeProduct,
        typeError,
        titleScreen,
        itemInfo,
        product,
        typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart,
        indexItem,
        errorMessage,
        isShoppingCartDetailsProduct,
        isSuccessfullySavedFile,
        isLoadVirtualCardsCod,
        isLoadOpenPdf,
        favouritesProductsInfo,
        detailsProduct,
        user,
        orderInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) {
    return preloadDataCompleted?.call(
        phone,
        name,
        email,
        countOrders,
        applicationVersion,
        orders,
        favouritesProducts,
        favouritesProductsId,
        listProductsCode,
        listProdcutsStyle,
        listProdcutsAlso,
        listProdcutsBrand,
        listProdcutsComplect,
        isAuth,
        virtualCardsCod,
        listOrdersBlank,
        listTailoringBlank,
        listSize,
        file,
        fileName,
        isLoadGetSizeProduct,
        offsetOrders,
        offsetOrdersBlank,
        offsetTailoringBlank,
        codeProduct,
        selectSizeProduct,
        isShoppingCart,
        isError,
        isLoadErrorButton,
        isShopGetSizeProduct,
        typeError,
        titleScreen,
        itemInfo,
        product,
        typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart,
        indexItem,
        errorMessage,
        isShoppingCartDetailsProduct,
        isSuccessfullySavedFile,
        isLoadVirtualCardsCod,
        isLoadOpenPdf,
        favouritesProductsInfo,
        detailsProduct,
        user,
        orderInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(
          phone,
          name,
          email,
          countOrders,
          applicationVersion,
          orders,
          favouritesProducts,
          favouritesProductsId,
          listProductsCode,
          listProdcutsStyle,
          listProdcutsAlso,
          listProdcutsBrand,
          listProdcutsComplect,
          isAuth,
          virtualCardsCod,
          listOrdersBlank,
          listTailoringBlank,
          listSize,
          file,
          fileName,
          isLoadGetSizeProduct,
          offsetOrders,
          offsetOrdersBlank,
          offsetTailoringBlank,
          codeProduct,
          selectSizeProduct,
          isShoppingCart,
          isError,
          isLoadErrorButton,
          isShopGetSizeProduct,
          typeError,
          titleScreen,
          itemInfo,
          product,
          typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart,
          indexItem,
          errorMessage,
          isShoppingCartDetailsProduct,
          isSuccessfullySavedFile,
          isLoadVirtualCardsCod,
          isLoadOpenPdf,
          favouritesProductsInfo,
          detailsProduct,
          user,
          orderInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(this);
    }
    return orElse();
  }
}

abstract class PreloadDataCompletedAccountState implements AccountState {
  const factory PreloadDataCompletedAccountState(
          {required final String phone,
          required final String name,
          required final String email,
          required final String countOrders,
          required final String applicationVersion,
          required final List<OrderItemDataModel> orders,
          required final List<ProductDataModel> favouritesProducts,
          required final List<int> favouritesProductsId,
          required final List<String> listProductsCode,
          required final List<ProductDataModel> listProdcutsStyle,
          required final List<ProductDataModel> listProdcutsAlso,
          required final List<ProductDataModel> listProdcutsBrand,
          required final List<ProductDataModel> listProdcutsComplect,
          required final bool isAuth,
          required final String virtualCardsCod,
          required final List<OrderBlankDataModel> listOrdersBlank,
          required final List<OrderBlankDataModel> listTailoringBlank,
          required final List<SkuProductDataModel> listSize,
          required final Uint8List file,
          required final String fileName,
          required final bool isLoadGetSizeProduct,
          required final int offsetOrders,
          required final int offsetOrdersBlank,
          required final int offsetTailoringBlank,
          final String? codeProduct,
          final SkuProductDataModel? selectSizeProduct,
          final bool? isShoppingCart,
          final bool? isError,
          final bool? isLoadErrorButton,
          final bool? isShopGetSizeProduct,
          final String? typeError,
          final String? titleScreen,
          final BasketInfoItemDataModel? itemInfo,
          final ProductDataModel? product,
          final String? typeAddProductToShoppingCart,
          final String? identifierAddProductToShoppingCart,
          final int? indexItem,
          final String? errorMessage,
          final bool? isShoppingCartDetailsProduct,
          final bool? isSuccessfullySavedFile,
          final bool? isLoadVirtualCardsCod,
          final bool? isLoadOpenPdf,
          final FavouritesCatalogInfoDataModel? favouritesProductsInfo,
          final DetailProductDataModel? detailsProduct,
          final UserDataModel? user,
          final OrderInfoDataModel? orderInfo}) =
      _$PreloadDataCompletedAccountStateImpl;

  String get phone;
  String get name;
  String get email;
  String get countOrders;
  String get applicationVersion;
  List<OrderItemDataModel> get orders;
  List<ProductDataModel> get favouritesProducts;
  List<int> get favouritesProductsId;
  List<String> get listProductsCode;
  List<ProductDataModel> get listProdcutsStyle;
  List<ProductDataModel> get listProdcutsAlso;
  List<ProductDataModel> get listProdcutsBrand;
  List<ProductDataModel> get listProdcutsComplect;
  bool get isAuth;
  String get virtualCardsCod;
  List<OrderBlankDataModel> get listOrdersBlank;
  List<OrderBlankDataModel> get listTailoringBlank;
  List<SkuProductDataModel> get listSize;
  Uint8List get file;
  String get fileName;
  bool get isLoadGetSizeProduct;
  int get offsetOrders;
  int get offsetOrdersBlank;
  int get offsetTailoringBlank;
  String? get codeProduct;
  SkuProductDataModel? get selectSizeProduct;
  bool? get isShoppingCart;
  bool? get isError;
  bool? get isLoadErrorButton;
  bool? get isShopGetSizeProduct;
  String? get typeError;
  String? get titleScreen;
  BasketInfoItemDataModel? get itemInfo;
  ProductDataModel? get product;
  String? get typeAddProductToShoppingCart;
  String? get identifierAddProductToShoppingCart;
  int? get indexItem;
  String? get errorMessage;
  bool? get isShoppingCartDetailsProduct;
  bool? get isSuccessfullySavedFile;
  bool? get isLoadVirtualCardsCod;
  bool? get isLoadOpenPdf;
  FavouritesCatalogInfoDataModel? get favouritesProductsInfo;
  DetailProductDataModel? get detailsProduct;
  UserDataModel? get user;
  OrderInfoDataModel? get orderInfo;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreloadDataCompletedAccountStateImplCopyWith<
          _$PreloadDataCompletedAccountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutAccountStateImplCopyWith<$Res> {
  factory _$$LogOutAccountStateImplCopyWith(_$LogOutAccountStateImpl value,
          $Res Function(_$LogOutAccountStateImpl) then) =
      __$$LogOutAccountStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$LogOutAccountStateImpl>
    implements _$$LogOutAccountStateImplCopyWith<$Res> {
  __$$LogOutAccountStateImplCopyWithImpl(_$LogOutAccountStateImpl _value,
      $Res Function(_$LogOutAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogOutAccountStateImpl implements LogOutAccountState {
  const _$LogOutAccountStateImpl();

  @override
  String toString() {
    return 'AccountState.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutAccountStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOutAccountState implements AccountState {
  const factory LogOutAccountState() = _$LogOutAccountStateImpl;
}

/// @nodoc
abstract class _$$RemoveAccountStateImplCopyWith<$Res> {
  factory _$$RemoveAccountStateImplCopyWith(_$RemoveAccountStateImpl value,
          $Res Function(_$RemoveAccountStateImpl) then) =
      __$$RemoveAccountStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$RemoveAccountStateImpl>
    implements _$$RemoveAccountStateImplCopyWith<$Res> {
  __$$RemoveAccountStateImplCopyWithImpl(_$RemoveAccountStateImpl _value,
      $Res Function(_$RemoveAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveAccountStateImpl implements RemoveAccountState {
  const _$RemoveAccountStateImpl();

  @override
  String toString() {
    return 'AccountState.removeAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveAccountStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) errorOpenPdf,
    required TResult Function(String url) payOrder,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
    required TResult Function() removeAccount,
  }) {
    return removeAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? errorOpenPdf,
    TResult? Function(String url)? payOrder,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
    TResult? Function()? removeAccount,
  }) {
    return removeAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? errorOpenPdf,
    TResult Function(String url)? payOrder,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            String applicationVersion,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            bool isAuth,
            String virtualCardsCod,
            List<OrderBlankDataModel> listOrdersBlank,
            List<OrderBlankDataModel> listTailoringBlank,
            List<SkuProductDataModel> listSize,
            Uint8List file,
            String fileName,
            bool isLoadGetSizeProduct,
            int offsetOrders,
            int offsetOrdersBlank,
            int offsetTailoringBlank,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isError,
            bool? isLoadErrorButton,
            bool? isShopGetSizeProduct,
            String? typeError,
            String? titleScreen,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            int? indexItem,
            String? errorMessage,
            bool? isShoppingCartDetailsProduct,
            bool? isSuccessfullySavedFile,
            bool? isLoadVirtualCardsCod,
            bool? isLoadOpenPdf,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    TResult Function()? removeAccount,
    required TResult orElse(),
  }) {
    if (removeAccount != null) {
      return removeAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(LoadingErrorButtonAccountState value)
        loadErrorButton,
    required TResult Function(ErrorAccountState value) error,
    required TResult Function(ErrorOpenPdfAccountState value) errorOpenPdf,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(OpenSoppingCartAccountState value)
        openSoppingCart,
    required TResult Function(GetSizeProductAccountState value) getSizeProduct,
    required TResult Function(AddProductAccountState value)
        addProductToSoppingCart,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
    required TResult Function(RemoveAccountState value) removeAccount,
  }) {
    return removeAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult? Function(ErrorAccountState value)? error,
    TResult? Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult? Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult? Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
    TResult? Function(RemoveAccountState value)? removeAccount,
  }) {
    return removeAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(LoadingErrorButtonAccountState value)? loadErrorButton,
    TResult Function(ErrorAccountState value)? error,
    TResult Function(ErrorOpenPdfAccountState value)? errorOpenPdf,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(OpenSoppingCartAccountState value)? openSoppingCart,
    TResult Function(GetSizeProductAccountState value)? getSizeProduct,
    TResult Function(AddProductAccountState value)? addProductToSoppingCart,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
    TResult Function(RemoveAccountState value)? removeAccount,
    required TResult orElse(),
  }) {
    if (removeAccount != null) {
      return removeAccount(this);
    }
    return orElse();
  }
}

abstract class RemoveAccountState implements AccountState {
  const factory RemoveAccountState() = _$RemoveAccountStateImpl;
}
