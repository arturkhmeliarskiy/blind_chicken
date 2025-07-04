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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShoppingCartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
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

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitShoppingCartEventImpl implements InitShoppingCartEvent {
  const _$InitShoppingCartEventImpl();

  @override
  String toString() {
    return 'ShoppingCartEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitShoppingCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
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
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitShoppingCartEvent implements ShoppingCartEvent {
  const factory InitShoppingCartEvent() = _$InitShoppingCartEventImpl;
}

/// @nodoc
abstract class _$$PreloadDataShoppingCartEventImplCopyWith<$Res> {
  factory _$$PreloadDataShoppingCartEventImplCopyWith(
          _$PreloadDataShoppingCartEventImpl value,
          $Res Function(_$PreloadDataShoppingCartEventImpl) then) =
      __$$PreloadDataShoppingCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreloadDataShoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$PreloadDataShoppingCartEventImpl>
    implements _$$PreloadDataShoppingCartEventImplCopyWith<$Res> {
  __$$PreloadDataShoppingCartEventImplCopyWithImpl(
      _$PreloadDataShoppingCartEventImpl _value,
      $Res Function(_$PreloadDataShoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreloadDataShoppingCartEventImpl
    implements PreloadDataShoppingCartEvent {
  const _$PreloadDataShoppingCartEventImpl();

  @override
  String toString() {
    return 'ShoppingCartEvent.preloadData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataShoppingCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return preloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return preloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
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
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class PreloadDataShoppingCartEvent implements ShoppingCartEvent {
  const factory PreloadDataShoppingCartEvent() =
      _$PreloadDataShoppingCartEventImpl;
}

/// @nodoc
abstract class _$$AddProductToSoppingCartEventImplCopyWith<$Res> {
  factory _$$AddProductToSoppingCartEventImplCopyWith(
          _$AddProductToSoppingCartEventImpl value,
          $Res Function(_$AddProductToSoppingCartEventImpl) then) =
      __$$AddProductToSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasketInfoItemDataModel item});

  $BasketInfoItemDataModelCopyWith<$Res> get item;
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

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$AddProductToSoppingCartEventImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as BasketInfoItemDataModel,
    ));
  }

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasketInfoItemDataModelCopyWith<$Res> get item {
    return $BasketInfoItemDataModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$AddProductToSoppingCartEventImpl
    implements AddProductToSoppingCartEvent {
  const _$AddProductToSoppingCartEventImpl({required this.item});

  @override
  final BasketInfoItemDataModel item;

  @override
  String toString() {
    return 'ShoppingCartEvent.addProductToSoppingCart(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToSoppingCartEventImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToSoppingCartEventImplCopyWith<
          _$AddProductToSoppingCartEventImpl>
      get copyWith => __$$AddProductToSoppingCartEventImplCopyWithImpl<
          _$AddProductToSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return addProductToSoppingCart(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return addProductToSoppingCart?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
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
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return addProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return addProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
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
          {required final BasketInfoItemDataModel item}) =
      _$AddProductToSoppingCartEventImpl;

  BasketInfoItemDataModel get item;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToSoppingCartEventImplCopyWith<
          _$AddProductToSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddOtherProductToSoppingCartEventImplCopyWith<$Res> {
  factory _$$AddOtherProductToSoppingCartEventImplCopyWith(
          _$AddOtherProductToSoppingCartEventImpl value,
          $Res Function(_$AddOtherProductToSoppingCartEventImpl) then) =
      __$$AddOtherProductToSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BasketInfoItemDataModel item,
      String? titleScreen,
      String? typeAddProductToShoppingCart});

  $BasketInfoItemDataModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$AddOtherProductToSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$AddOtherProductToSoppingCartEventImpl>
    implements _$$AddOtherProductToSoppingCartEventImplCopyWith<$Res> {
  __$$AddOtherProductToSoppingCartEventImplCopyWithImpl(
      _$AddOtherProductToSoppingCartEventImpl _value,
      $Res Function(_$AddOtherProductToSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? titleScreen = freezed,
    Object? typeAddProductToShoppingCart = freezed,
  }) {
    return _then(_$AddOtherProductToSoppingCartEventImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as BasketInfoItemDataModel,
      titleScreen: freezed == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String?,
      typeAddProductToShoppingCart: freezed == typeAddProductToShoppingCart
          ? _value.typeAddProductToShoppingCart
          : typeAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasketInfoItemDataModelCopyWith<$Res> get item {
    return $BasketInfoItemDataModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$AddOtherProductToSoppingCartEventImpl
    implements AddOtherProductToSoppingCartEvent {
  const _$AddOtherProductToSoppingCartEventImpl(
      {required this.item,
      this.titleScreen,
      this.typeAddProductToShoppingCart});

  @override
  final BasketInfoItemDataModel item;
  @override
  final String? titleScreen;
  @override
  final String? typeAddProductToShoppingCart;

  @override
  String toString() {
    return 'ShoppingCartEvent.addOtherProductToSoppingCart(item: $item, titleScreen: $titleScreen, typeAddProductToShoppingCart: $typeAddProductToShoppingCart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOtherProductToSoppingCartEventImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.titleScreen, titleScreen) ||
                other.titleScreen == titleScreen) &&
            (identical(other.typeAddProductToShoppingCart,
                    typeAddProductToShoppingCart) ||
                other.typeAddProductToShoppingCart ==
                    typeAddProductToShoppingCart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, item, titleScreen, typeAddProductToShoppingCart);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOtherProductToSoppingCartEventImplCopyWith<
          _$AddOtherProductToSoppingCartEventImpl>
      get copyWith => __$$AddOtherProductToSoppingCartEventImplCopyWithImpl<
          _$AddOtherProductToSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return addOtherProductToSoppingCart(
        item, titleScreen, typeAddProductToShoppingCart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return addOtherProductToSoppingCart?.call(
        item, titleScreen, typeAddProductToShoppingCart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addOtherProductToSoppingCart != null) {
      return addOtherProductToSoppingCart(
          item, titleScreen, typeAddProductToShoppingCart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return addOtherProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return addOtherProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addOtherProductToSoppingCart != null) {
      return addOtherProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class AddOtherProductToSoppingCartEvent implements ShoppingCartEvent {
  const factory AddOtherProductToSoppingCartEvent(
          {required final BasketInfoItemDataModel item,
          final String? titleScreen,
          final String? typeAddProductToShoppingCart}) =
      _$AddOtherProductToSoppingCartEventImpl;

  BasketInfoItemDataModel get item;
  String? get titleScreen;
  String? get typeAddProductToShoppingCart;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOtherProductToSoppingCartEventImplCopyWith<
          _$AddOtherProductToSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductToSoppingCartEventImplCopyWith<$Res> {
  factory _$$DeleteProductToSoppingCartEventImplCopyWith(
          _$DeleteProductToSoppingCartEventImpl value,
          $Res Function(_$DeleteProductToSoppingCartEventImpl) then) =
      __$$DeleteProductToSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasketInfoItemDataModel item, int index});

  $BasketInfoItemDataModelCopyWith<$Res> get item;
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

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? index = null,
  }) {
    return _then(_$DeleteProductToSoppingCartEventImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as BasketInfoItemDataModel,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasketInfoItemDataModelCopyWith<$Res> get item {
    return $BasketInfoItemDataModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$DeleteProductToSoppingCartEventImpl
    implements DeleteProductToSoppingCartEvent {
  const _$DeleteProductToSoppingCartEventImpl(
      {required this.item, required this.index});

  @override
  final BasketInfoItemDataModel item;
  @override
  final int index;

  @override
  String toString() {
    return 'ShoppingCartEvent.deleteProductToSoppingCart(item: $item, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductToSoppingCartEventImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, index);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductToSoppingCartEventImplCopyWith<
          _$DeleteProductToSoppingCartEventImpl>
      get copyWith => __$$DeleteProductToSoppingCartEventImplCopyWithImpl<
          _$DeleteProductToSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return deleteProductToSoppingCart(item, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return deleteProductToSoppingCart?.call(item, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (deleteProductToSoppingCart != null) {
      return deleteProductToSoppingCart(item, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return deleteProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return deleteProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (deleteProductToSoppingCart != null) {
      return deleteProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class DeleteProductToSoppingCartEvent implements ShoppingCartEvent {
  const factory DeleteProductToSoppingCartEvent(
      {required final BasketInfoItemDataModel item,
      required final int index}) = _$DeleteProductToSoppingCartEventImpl;

  BasketInfoItemDataModel get item;
  int get index;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  $Res call({BasketInfoItemDataModel item, int index});

  $BasketInfoItemDataModelCopyWith<$Res> get item;
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

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
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
              as BasketInfoItemDataModel,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasketInfoItemDataModelCopyWith<$Res> get item {
    return $BasketInfoItemDataModelCopyWith<$Res>(_value.item, (value) {
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
  final BasketInfoItemDataModel item;
  @override
  final int index;

  @override
  String toString() {
    return 'ShoppingCartEvent.updateProductToSoppingCart(item: $item, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductToSoppingCartEventImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, index);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductToSoppingCartEventImplCopyWith<
          _$UpdateProductToSoppingCartEventImpl>
      get copyWith => __$$UpdateProductToSoppingCartEventImplCopyWithImpl<
          _$UpdateProductToSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return updateProductToSoppingCart(item, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return updateProductToSoppingCart?.call(item, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
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
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return updateProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return updateProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
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
      {required final BasketInfoItemDataModel item,
      required final int index}) = _$UpdateProductToSoppingCartEventImpl;

  BasketInfoItemDataModel get item;
  int get index;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProductToSoppingCartEventImplCopyWith<
          _$UpdateProductToSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentBonusSoppingCartEventImplCopyWith<$Res> {
  factory _$$PaymentBonusSoppingCartEventImplCopyWith(
          _$PaymentBonusSoppingCartEventImpl value,
          $Res Function(_$PaymentBonusSoppingCartEventImpl) then) =
      __$$PaymentBonusSoppingCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentBonusSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$PaymentBonusSoppingCartEventImpl>
    implements _$$PaymentBonusSoppingCartEventImplCopyWith<$Res> {
  __$$PaymentBonusSoppingCartEventImplCopyWithImpl(
      _$PaymentBonusSoppingCartEventImpl _value,
      $Res Function(_$PaymentBonusSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentBonusSoppingCartEventImpl
    implements PaymentBonusSoppingCartEvent {
  const _$PaymentBonusSoppingCartEventImpl();

  @override
  String toString() {
    return 'ShoppingCartEvent.paymentBonus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentBonusSoppingCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return paymentBonus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return paymentBonus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (paymentBonus != null) {
      return paymentBonus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return paymentBonus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return paymentBonus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (paymentBonus != null) {
      return paymentBonus(this);
    }
    return orElse();
  }
}

abstract class PaymentBonusSoppingCartEvent implements ShoppingCartEvent {
  const factory PaymentBonusSoppingCartEvent() =
      _$PaymentBonusSoppingCartEventImpl;
}

/// @nodoc
abstract class _$$InitGiftCardSoppingCartEventImplCopyWith<$Res> {
  factory _$$InitGiftCardSoppingCartEventImplCopyWith(
          _$InitGiftCardSoppingCartEventImpl value,
          $Res Function(_$InitGiftCardSoppingCartEventImpl) then) =
      __$$InitGiftCardSoppingCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitGiftCardSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$InitGiftCardSoppingCartEventImpl>
    implements _$$InitGiftCardSoppingCartEventImplCopyWith<$Res> {
  __$$InitGiftCardSoppingCartEventImplCopyWithImpl(
      _$InitGiftCardSoppingCartEventImpl _value,
      $Res Function(_$InitGiftCardSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitGiftCardSoppingCartEventImpl
    implements InitGiftCardSoppingCartEvent {
  const _$InitGiftCardSoppingCartEventImpl();

  @override
  String toString() {
    return 'ShoppingCartEvent.initGiftCard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitGiftCardSoppingCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return initGiftCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return initGiftCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (initGiftCard != null) {
      return initGiftCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return initGiftCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return initGiftCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (initGiftCard != null) {
      return initGiftCard(this);
    }
    return orElse();
  }
}

abstract class InitGiftCardSoppingCartEvent implements ShoppingCartEvent {
  const factory InitGiftCardSoppingCartEvent() =
      _$InitGiftCardSoppingCartEventImpl;
}

/// @nodoc
abstract class _$$GiftCardSoppingCartEventImplCopyWith<$Res> {
  factory _$$GiftCardSoppingCartEventImplCopyWith(
          _$GiftCardSoppingCartEventImpl value,
          $Res Function(_$GiftCardSoppingCartEventImpl) then) =
      __$$GiftCardSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String number, String pin});
}

/// @nodoc
class __$$GiftCardSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$GiftCardSoppingCartEventImpl>
    implements _$$GiftCardSoppingCartEventImplCopyWith<$Res> {
  __$$GiftCardSoppingCartEventImplCopyWithImpl(
      _$GiftCardSoppingCartEventImpl _value,
      $Res Function(_$GiftCardSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? pin = null,
  }) {
    return _then(_$GiftCardSoppingCartEventImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GiftCardSoppingCartEventImpl implements GiftCardSoppingCartEvent {
  const _$GiftCardSoppingCartEventImpl(
      {required this.number, required this.pin});

  @override
  final String number;
  @override
  final String pin;

  @override
  String toString() {
    return 'ShoppingCartEvent.giftCard(number: $number, pin: $pin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftCardSoppingCartEventImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, pin);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftCardSoppingCartEventImplCopyWith<_$GiftCardSoppingCartEventImpl>
      get copyWith => __$$GiftCardSoppingCartEventImplCopyWithImpl<
          _$GiftCardSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return giftCard(number, pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return giftCard?.call(number, pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (giftCard != null) {
      return giftCard(number, pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return giftCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return giftCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (giftCard != null) {
      return giftCard(this);
    }
    return orElse();
  }
}

abstract class GiftCardSoppingCartEvent implements ShoppingCartEvent {
  const factory GiftCardSoppingCartEvent(
      {required final String number,
      required final String pin}) = _$GiftCardSoppingCartEventImpl;

  String get number;
  String get pin;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftCardSoppingCartEventImplCopyWith<_$GiftCardSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddGiftCardSoppingCartEventImplCopyWith<$Res> {
  factory _$$AddGiftCardSoppingCartEventImplCopyWith(
          _$AddGiftCardSoppingCartEventImpl value,
          $Res Function(_$AddGiftCardSoppingCartEventImpl) then) =
      __$$AddGiftCardSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasketSertDeliveryRequest giftCard});

  $BasketSertDeliveryRequestCopyWith<$Res> get giftCard;
}

/// @nodoc
class __$$AddGiftCardSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$AddGiftCardSoppingCartEventImpl>
    implements _$$AddGiftCardSoppingCartEventImplCopyWith<$Res> {
  __$$AddGiftCardSoppingCartEventImplCopyWithImpl(
      _$AddGiftCardSoppingCartEventImpl _value,
      $Res Function(_$AddGiftCardSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? giftCard = null,
  }) {
    return _then(_$AddGiftCardSoppingCartEventImpl(
      giftCard: null == giftCard
          ? _value.giftCard
          : giftCard // ignore: cast_nullable_to_non_nullable
              as BasketSertDeliveryRequest,
    ));
  }

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasketSertDeliveryRequestCopyWith<$Res> get giftCard {
    return $BasketSertDeliveryRequestCopyWith<$Res>(_value.giftCard, (value) {
      return _then(_value.copyWith(giftCard: value));
    });
  }
}

/// @nodoc

class _$AddGiftCardSoppingCartEventImpl implements AddGiftCardSoppingCartEvent {
  const _$AddGiftCardSoppingCartEventImpl({required this.giftCard});

  @override
  final BasketSertDeliveryRequest giftCard;

  @override
  String toString() {
    return 'ShoppingCartEvent.addGiftCard(giftCard: $giftCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGiftCardSoppingCartEventImpl &&
            (identical(other.giftCard, giftCard) ||
                other.giftCard == giftCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, giftCard);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGiftCardSoppingCartEventImplCopyWith<_$AddGiftCardSoppingCartEventImpl>
      get copyWith => __$$AddGiftCardSoppingCartEventImplCopyWithImpl<
          _$AddGiftCardSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return addGiftCard(this.giftCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return addGiftCard?.call(this.giftCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addGiftCard != null) {
      return addGiftCard(this.giftCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return addGiftCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return addGiftCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addGiftCard != null) {
      return addGiftCard(this);
    }
    return orElse();
  }
}

abstract class AddGiftCardSoppingCartEvent implements ShoppingCartEvent {
  const factory AddGiftCardSoppingCartEvent(
          {required final BasketSertDeliveryRequest giftCard}) =
      _$AddGiftCardSoppingCartEventImpl;

  BasketSertDeliveryRequest get giftCard;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddGiftCardSoppingCartEventImplCopyWith<_$AddGiftCardSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PromoCodeSoppingCartEventImplCopyWith<$Res> {
  factory _$$PromoCodeSoppingCartEventImplCopyWith(
          _$PromoCodeSoppingCartEventImpl value,
          $Res Function(_$PromoCodeSoppingCartEventImpl) then) =
      __$$PromoCodeSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String promoCode, String uid});
}

/// @nodoc
class __$$PromoCodeSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$PromoCodeSoppingCartEventImpl>
    implements _$$PromoCodeSoppingCartEventImplCopyWith<$Res> {
  __$$PromoCodeSoppingCartEventImplCopyWithImpl(
      _$PromoCodeSoppingCartEventImpl _value,
      $Res Function(_$PromoCodeSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promoCode = null,
    Object? uid = null,
  }) {
    return _then(_$PromoCodeSoppingCartEventImpl(
      promoCode: null == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PromoCodeSoppingCartEventImpl implements PromoCodeSoppingCartEvent {
  const _$PromoCodeSoppingCartEventImpl(
      {required this.promoCode, required this.uid});

  @override
  final String promoCode;
  @override
  final String uid;

  @override
  String toString() {
    return 'ShoppingCartEvent.promoCode(promoCode: $promoCode, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromoCodeSoppingCartEventImpl &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promoCode, uid);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromoCodeSoppingCartEventImplCopyWith<_$PromoCodeSoppingCartEventImpl>
      get copyWith => __$$PromoCodeSoppingCartEventImplCopyWithImpl<
          _$PromoCodeSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return promoCode(this.promoCode, uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return promoCode?.call(this.promoCode, uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (promoCode != null) {
      return promoCode(this.promoCode, uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return promoCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return promoCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (promoCode != null) {
      return promoCode(this);
    }
    return orElse();
  }
}

abstract class PromoCodeSoppingCartEvent implements ShoppingCartEvent {
  const factory PromoCodeSoppingCartEvent(
      {required final String promoCode,
      required final String uid}) = _$PromoCodeSoppingCartEventImpl;

  String get promoCode;
  String get uid;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromoCodeSoppingCartEventImplCopyWith<_$PromoCodeSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovePromoCodeSoppingCartEventImplCopyWith<$Res> {
  factory _$$RemovePromoCodeSoppingCartEventImplCopyWith(
          _$RemovePromoCodeSoppingCartEventImpl value,
          $Res Function(_$RemovePromoCodeSoppingCartEventImpl) then) =
      __$$RemovePromoCodeSoppingCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemovePromoCodeSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$RemovePromoCodeSoppingCartEventImpl>
    implements _$$RemovePromoCodeSoppingCartEventImplCopyWith<$Res> {
  __$$RemovePromoCodeSoppingCartEventImplCopyWithImpl(
      _$RemovePromoCodeSoppingCartEventImpl _value,
      $Res Function(_$RemovePromoCodeSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemovePromoCodeSoppingCartEventImpl
    implements RemovePromoCodeSoppingCartEvent {
  const _$RemovePromoCodeSoppingCartEventImpl();

  @override
  String toString() {
    return 'ShoppingCartEvent.removePromoCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovePromoCodeSoppingCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return removePromoCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return removePromoCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (removePromoCode != null) {
      return removePromoCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return removePromoCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return removePromoCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (removePromoCode != null) {
      return removePromoCode(this);
    }
    return orElse();
  }
}

abstract class RemovePromoCodeSoppingCartEvent implements ShoppingCartEvent {
  const factory RemovePromoCodeSoppingCartEvent() =
      _$RemovePromoCodeSoppingCartEventImpl;
}

/// @nodoc
abstract class _$$CreateOrderPromoCodeSoppingCartEventImplCopyWith<$Res> {
  factory _$$CreateOrderPromoCodeSoppingCartEventImplCopyWith(
          _$CreateOrderPromoCodeSoppingCartEventImpl value,
          $Res Function(_$CreateOrderPromoCodeSoppingCartEventImpl) then) =
      __$$CreateOrderPromoCodeSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasketOrderRequest request});

  $BasketOrderRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$CreateOrderPromoCodeSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$CreateOrderPromoCodeSoppingCartEventImpl>
    implements _$$CreateOrderPromoCodeSoppingCartEventImplCopyWith<$Res> {
  __$$CreateOrderPromoCodeSoppingCartEventImplCopyWithImpl(
      _$CreateOrderPromoCodeSoppingCartEventImpl _value,
      $Res Function(_$CreateOrderPromoCodeSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$CreateOrderPromoCodeSoppingCartEventImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as BasketOrderRequest,
    ));
  }

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasketOrderRequestCopyWith<$Res> get request {
    return $BasketOrderRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$CreateOrderPromoCodeSoppingCartEventImpl
    implements CreateOrderPromoCodeSoppingCartEvent {
  const _$CreateOrderPromoCodeSoppingCartEventImpl({required this.request});

  @override
  final BasketOrderRequest request;

  @override
  String toString() {
    return 'ShoppingCartEvent.createOrder(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderPromoCodeSoppingCartEventImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderPromoCodeSoppingCartEventImplCopyWith<
          _$CreateOrderPromoCodeSoppingCartEventImpl>
      get copyWith => __$$CreateOrderPromoCodeSoppingCartEventImplCopyWithImpl<
          _$CreateOrderPromoCodeSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return createOrder(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return createOrder?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class CreateOrderPromoCodeSoppingCartEvent
    implements ShoppingCartEvent {
  const factory CreateOrderPromoCodeSoppingCartEvent(
          {required final BasketOrderRequest request}) =
      _$CreateOrderPromoCodeSoppingCartEventImpl;

  BasketOrderRequest get request;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrderPromoCodeSoppingCartEventImplCopyWith<
          _$CreateOrderPromoCodeSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BonusesSoppingCartEventImplCopyWith<$Res> {
  factory _$$BonusesSoppingCartEventImplCopyWith(
          _$BonusesSoppingCartEventImpl value,
          $Res Function(_$BonusesSoppingCartEventImpl) then) =
      __$$BonusesSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bonuses});
}

/// @nodoc
class __$$BonusesSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res, _$BonusesSoppingCartEventImpl>
    implements _$$BonusesSoppingCartEventImplCopyWith<$Res> {
  __$$BonusesSoppingCartEventImplCopyWithImpl(
      _$BonusesSoppingCartEventImpl _value,
      $Res Function(_$BonusesSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bonuses = null,
  }) {
    return _then(_$BonusesSoppingCartEventImpl(
      bonuses: null == bonuses
          ? _value.bonuses
          : bonuses // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BonusesSoppingCartEventImpl implements BonusesSoppingCartEvent {
  const _$BonusesSoppingCartEventImpl({required this.bonuses});

  @override
  final int bonuses;

  @override
  String toString() {
    return 'ShoppingCartEvent.bonuses(bonuses: $bonuses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BonusesSoppingCartEventImpl &&
            (identical(other.bonuses, bonuses) || other.bonuses == bonuses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bonuses);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BonusesSoppingCartEventImplCopyWith<_$BonusesSoppingCartEventImpl>
      get copyWith => __$$BonusesSoppingCartEventImplCopyWithImpl<
          _$BonusesSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return bonuses(this.bonuses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return bonuses?.call(this.bonuses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (bonuses != null) {
      return bonuses(this.bonuses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return bonuses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return bonuses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (bonuses != null) {
      return bonuses(this);
    }
    return orElse();
  }
}

abstract class BonusesSoppingCartEvent implements ShoppingCartEvent {
  const factory BonusesSoppingCartEvent({required final int bonuses}) =
      _$BonusesSoppingCartEventImpl;

  int get bonuses;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BonusesSoppingCartEventImplCopyWith<_$BonusesSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInfoProductShoppingCartEventImplCopyWith<$Res> {
  factory _$$GetInfoProductShoppingCartEventImplCopyWith(
          _$GetInfoProductShoppingCartEventImpl value,
          $Res Function(_$GetInfoProductShoppingCartEventImpl) then) =
      __$$GetInfoProductShoppingCartEventImplCopyWithImpl<$Res>;
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
class __$$GetInfoProductShoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$GetInfoProductShoppingCartEventImpl>
    implements _$$GetInfoProductShoppingCartEventImplCopyWith<$Res> {
  __$$GetInfoProductShoppingCartEventImplCopyWithImpl(
      _$GetInfoProductShoppingCartEventImpl _value,
      $Res Function(_$GetInfoProductShoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
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
    return _then(_$GetInfoProductShoppingCartEventImpl(
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

  /// Create a copy of ShoppingCartEvent
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

class _$GetInfoProductShoppingCartEventImpl
    implements GetInfoProductShoppingCartEvent {
  const _$GetInfoProductShoppingCartEventImpl(
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
    return 'ShoppingCartEvent.getInfoProduct(code: $code, titleScreen: $titleScreen, typeAddProductToShoppingCart: $typeAddProductToShoppingCart, identifierAddProductToShoppingCart: $identifierAddProductToShoppingCart, size: $size, isUpdate: $isUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoProductShoppingCartEventImpl &&
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

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInfoProductShoppingCartEventImplCopyWith<
          _$GetInfoProductShoppingCartEventImpl>
      get copyWith => __$$GetInfoProductShoppingCartEventImplCopyWithImpl<
          _$GetInfoProductShoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return getInfoProduct(code, titleScreen, typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart, size, isUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return getInfoProduct?.call(code, titleScreen, typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart, size, isUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
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
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return getInfoProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return getInfoProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getInfoProduct != null) {
      return getInfoProduct(this);
    }
    return orElse();
  }
}

abstract class GetInfoProductShoppingCartEvent implements ShoppingCartEvent {
  const factory GetInfoProductShoppingCartEvent(
      {required final String code,
      required final String titleScreen,
      required final String typeAddProductToShoppingCart,
      required final String identifierAddProductToShoppingCart,
      final SkuProductDataModel? size,
      final bool? isUpdate}) = _$GetInfoProductShoppingCartEventImpl;

  String get code;
  String get titleScreen;
  String get typeAddProductToShoppingCart;
  String get identifierAddProductToShoppingCart;
  SkuProductDataModel? get size;
  bool? get isUpdate;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInfoProductShoppingCartEventImplCopyWith<
          _$GetInfoProductShoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoBackProductInfoCategotyShoppingCartEventImplCopyWith<$Res> {
  factory _$$GoBackProductInfoCategotyShoppingCartEventImplCopyWith(
          _$GoBackProductInfoCategotyShoppingCartEventImpl value,
          $Res Function(_$GoBackProductInfoCategotyShoppingCartEventImpl)
              then) =
      __$$GoBackProductInfoCategotyShoppingCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoBackProductInfoCategotyShoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$GoBackProductInfoCategotyShoppingCartEventImpl>
    implements _$$GoBackProductInfoCategotyShoppingCartEventImplCopyWith<$Res> {
  __$$GoBackProductInfoCategotyShoppingCartEventImplCopyWithImpl(
      _$GoBackProductInfoCategotyShoppingCartEventImpl _value,
      $Res Function(_$GoBackProductInfoCategotyShoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoBackProductInfoCategotyShoppingCartEventImpl
    implements GoBackProductInfoCategotyShoppingCartEvent {
  const _$GoBackProductInfoCategotyShoppingCartEventImpl();

  @override
  String toString() {
    return 'ShoppingCartEvent.goBackProductInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoBackProductInfoCategotyShoppingCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return goBackProductInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return goBackProductInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
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
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return goBackProductInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return goBackProductInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (goBackProductInfo != null) {
      return goBackProductInfo(this);
    }
    return orElse();
  }
}

abstract class GoBackProductInfoCategotyShoppingCartEvent
    implements ShoppingCartEvent {
  const factory GoBackProductInfoCategotyShoppingCartEvent() =
      _$GoBackProductInfoCategotyShoppingCartEventImpl;
}

/// @nodoc
abstract class _$$AddFavouriteProductShoppingCartEventImplCopyWith<$Res> {
  factory _$$AddFavouriteProductShoppingCartEventImplCopyWith(
          _$AddFavouriteProductShoppingCartEventImpl value,
          $Res Function(_$AddFavouriteProductShoppingCartEventImpl) then) =
      __$$AddFavouriteProductShoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, ProductDataModel product});

  $ProductDataModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddFavouriteProductShoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$AddFavouriteProductShoppingCartEventImpl>
    implements _$$AddFavouriteProductShoppingCartEventImplCopyWith<$Res> {
  __$$AddFavouriteProductShoppingCartEventImplCopyWithImpl(
      _$AddFavouriteProductShoppingCartEventImpl _value,
      $Res Function(_$AddFavouriteProductShoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? product = null,
  }) {
    return _then(_$AddFavouriteProductShoppingCartEventImpl(
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

  /// Create a copy of ShoppingCartEvent
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

class _$AddFavouriteProductShoppingCartEventImpl
    implements AddFavouriteProductShoppingCartEvent {
  const _$AddFavouriteProductShoppingCartEventImpl(
      {required this.index, required this.product});

  @override
  final int index;
  @override
  final ProductDataModel product;

  @override
  String toString() {
    return 'ShoppingCartEvent.addFavouriteProduct(index: $index, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavouriteProductShoppingCartEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, product);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavouriteProductShoppingCartEventImplCopyWith<
          _$AddFavouriteProductShoppingCartEventImpl>
      get copyWith => __$$AddFavouriteProductShoppingCartEventImplCopyWithImpl<
          _$AddFavouriteProductShoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return addFavouriteProduct(index, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return addFavouriteProduct?.call(index, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
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
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return addFavouriteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return addFavouriteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addFavouriteProduct != null) {
      return addFavouriteProduct(this);
    }
    return orElse();
  }
}

abstract class AddFavouriteProductShoppingCartEvent
    implements ShoppingCartEvent {
  const factory AddFavouriteProductShoppingCartEvent(
          {required final int index, required final ProductDataModel product}) =
      _$AddFavouriteProductShoppingCartEventImpl;

  int get index;
  ProductDataModel get product;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFavouriteProductShoppingCartEventImplCopyWith<
          _$AddFavouriteProductShoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFavouriteProductShoppingCartEventImplCopyWith<$Res> {
  factory _$$DeleteFavouriteProductShoppingCartEventImplCopyWith(
          _$DeleteFavouriteProductShoppingCartEventImpl value,
          $Res Function(_$DeleteFavouriteProductShoppingCartEventImpl) then) =
      __$$DeleteFavouriteProductShoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteFavouriteProductShoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$DeleteFavouriteProductShoppingCartEventImpl>
    implements _$$DeleteFavouriteProductShoppingCartEventImplCopyWith<$Res> {
  __$$DeleteFavouriteProductShoppingCartEventImplCopyWithImpl(
      _$DeleteFavouriteProductShoppingCartEventImpl _value,
      $Res Function(_$DeleteFavouriteProductShoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteFavouriteProductShoppingCartEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteFavouriteProductShoppingCartEventImpl
    implements DeleteFavouriteProductShoppingCartEvent {
  const _$DeleteFavouriteProductShoppingCartEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'ShoppingCartEvent.deleteFavouriteProduct(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavouriteProductShoppingCartEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFavouriteProductShoppingCartEventImplCopyWith<
          _$DeleteFavouriteProductShoppingCartEventImpl>
      get copyWith =>
          __$$DeleteFavouriteProductShoppingCartEventImplCopyWithImpl<
              _$DeleteFavouriteProductShoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return deleteFavouriteProduct(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return deleteFavouriteProduct?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
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
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return deleteFavouriteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return deleteFavouriteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (deleteFavouriteProduct != null) {
      return deleteFavouriteProduct(this);
    }
    return orElse();
  }
}

abstract class DeleteFavouriteProductShoppingCartEvent
    implements ShoppingCartEvent {
  const factory DeleteFavouriteProductShoppingCartEvent(
          {required final int index}) =
      _$DeleteFavouriteProductShoppingCartEventImpl;

  int get index;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFavouriteProductShoppingCartEventImplCopyWith<
          _$DeleteFavouriteProductShoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToSoppingCartInfoEventImplCopyWith<$Res> {
  factory _$$AddProductToSoppingCartInfoEventImplCopyWith(
          _$AddProductToSoppingCartInfoEventImpl value,
          $Res Function(_$AddProductToSoppingCartInfoEventImpl) then) =
      __$$AddProductToSoppingCartInfoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddProductToSoppingCartInfoEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$AddProductToSoppingCartInfoEventImpl>
    implements _$$AddProductToSoppingCartInfoEventImplCopyWith<$Res> {
  __$$AddProductToSoppingCartInfoEventImplCopyWithImpl(
      _$AddProductToSoppingCartInfoEventImpl _value,
      $Res Function(_$AddProductToSoppingCartInfoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddProductToSoppingCartInfoEventImpl
    implements AddProductToSoppingCartInfoEvent {
  const _$AddProductToSoppingCartInfoEventImpl();

  @override
  String toString() {
    return 'ShoppingCartEvent.addProductToSoppingCartInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToSoppingCartInfoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return addProductToSoppingCartInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return addProductToSoppingCartInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCartInfo != null) {
      return addProductToSoppingCartInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return addProductToSoppingCartInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return addProductToSoppingCartInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCartInfo != null) {
      return addProductToSoppingCartInfo(this);
    }
    return orElse();
  }
}

abstract class AddProductToSoppingCartInfoEvent implements ShoppingCartEvent {
  const factory AddProductToSoppingCartInfoEvent() =
      _$AddProductToSoppingCartInfoEventImpl;
}

/// @nodoc
abstract class _$$CheckProductToSoppingCartEventImplCopyWith<$Res> {
  factory _$$CheckProductToSoppingCartEventImplCopyWith(
          _$CheckProductToSoppingCartEventImpl value,
          $Res Function(_$CheckProductToSoppingCartEventImpl) then) =
      __$$CheckProductToSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SkuProductDataModel size});

  $SkuProductDataModelCopyWith<$Res> get size;
}

/// @nodoc
class __$$CheckProductToSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$CheckProductToSoppingCartEventImpl>
    implements _$$CheckProductToSoppingCartEventImplCopyWith<$Res> {
  __$$CheckProductToSoppingCartEventImplCopyWithImpl(
      _$CheckProductToSoppingCartEventImpl _value,
      $Res Function(_$CheckProductToSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_$CheckProductToSoppingCartEventImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as SkuProductDataModel,
    ));
  }

  /// Create a copy of ShoppingCartEvent
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

class _$CheckProductToSoppingCartEventImpl
    implements CheckProductToSoppingCartEvent {
  const _$CheckProductToSoppingCartEventImpl({required this.size});

  @override
  final SkuProductDataModel size;

  @override
  String toString() {
    return 'ShoppingCartEvent.checkProductToSoppingCart(size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckProductToSoppingCartEventImpl &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckProductToSoppingCartEventImplCopyWith<
          _$CheckProductToSoppingCartEventImpl>
      get copyWith => __$$CheckProductToSoppingCartEventImplCopyWithImpl<
          _$CheckProductToSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return checkProductToSoppingCart(size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return checkProductToSoppingCart?.call(size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
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
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return checkProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return checkProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (checkProductToSoppingCart != null) {
      return checkProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class CheckProductToSoppingCartEvent implements ShoppingCartEvent {
  const factory CheckProductToSoppingCartEvent(
          {required final SkuProductDataModel size}) =
      _$CheckProductToSoppingCartEventImpl;

  SkuProductDataModel get size;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckProductToSoppingCartEventImplCopyWith<
          _$CheckProductToSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSizeProductSoppingCartEventImplCopyWith<$Res> {
  factory _$$ChangeSizeProductSoppingCartEventImplCopyWith(
          _$ChangeSizeProductSoppingCartEventImpl value,
          $Res Function(_$ChangeSizeProductSoppingCartEventImpl) then) =
      __$$ChangeSizeProductSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SkuProductDataModel selectSizeProduct});

  $SkuProductDataModelCopyWith<$Res> get selectSizeProduct;
}

/// @nodoc
class __$$ChangeSizeProductSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$ChangeSizeProductSoppingCartEventImpl>
    implements _$$ChangeSizeProductSoppingCartEventImplCopyWith<$Res> {
  __$$ChangeSizeProductSoppingCartEventImplCopyWithImpl(
      _$ChangeSizeProductSoppingCartEventImpl _value,
      $Res Function(_$ChangeSizeProductSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectSizeProduct = null,
  }) {
    return _then(_$ChangeSizeProductSoppingCartEventImpl(
      selectSizeProduct: null == selectSizeProduct
          ? _value.selectSizeProduct
          : selectSizeProduct // ignore: cast_nullable_to_non_nullable
              as SkuProductDataModel,
    ));
  }

  /// Create a copy of ShoppingCartEvent
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

class _$ChangeSizeProductSoppingCartEventImpl
    implements ChangeSizeProductSoppingCartEvent {
  const _$ChangeSizeProductSoppingCartEventImpl(
      {required this.selectSizeProduct});

  @override
  final SkuProductDataModel selectSizeProduct;

  @override
  String toString() {
    return 'ShoppingCartEvent.changeSizeProduct(selectSizeProduct: $selectSizeProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSizeProductSoppingCartEventImpl &&
            (identical(other.selectSizeProduct, selectSizeProduct) ||
                other.selectSizeProduct == selectSizeProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectSizeProduct);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSizeProductSoppingCartEventImplCopyWith<
          _$ChangeSizeProductSoppingCartEventImpl>
      get copyWith => __$$ChangeSizeProductSoppingCartEventImplCopyWithImpl<
          _$ChangeSizeProductSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return changeSizeProduct(selectSizeProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return changeSizeProduct?.call(selectSizeProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
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
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return changeSizeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return changeSizeProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (changeSizeProduct != null) {
      return changeSizeProduct(this);
    }
    return orElse();
  }
}

abstract class ChangeSizeProductSoppingCartEvent implements ShoppingCartEvent {
  const factory ChangeSizeProductSoppingCartEvent(
          {required final SkuProductDataModel selectSizeProduct}) =
      _$ChangeSizeProductSoppingCartEventImpl;

  SkuProductDataModel get selectSizeProduct;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSizeProductSoppingCartEventImplCopyWith<
          _$ChangeSizeProductSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenAuthModelSoppingCartEventImplCopyWith<$Res> {
  factory _$$OpenAuthModelSoppingCartEventImplCopyWith(
          _$OpenAuthModelSoppingCartEventImpl value,
          $Res Function(_$OpenAuthModelSoppingCartEventImpl) then) =
      __$$OpenAuthModelSoppingCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenAuthModelSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$OpenAuthModelSoppingCartEventImpl>
    implements _$$OpenAuthModelSoppingCartEventImplCopyWith<$Res> {
  __$$OpenAuthModelSoppingCartEventImplCopyWithImpl(
      _$OpenAuthModelSoppingCartEventImpl _value,
      $Res Function(_$OpenAuthModelSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OpenAuthModelSoppingCartEventImpl
    implements OpenAuthModelSoppingCartEvent {
  const _$OpenAuthModelSoppingCartEventImpl();

  @override
  String toString() {
    return 'ShoppingCartEvent.openAuthModel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenAuthModelSoppingCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return openAuthModel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return openAuthModel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (openAuthModel != null) {
      return openAuthModel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return openAuthModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return openAuthModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (openAuthModel != null) {
      return openAuthModel(this);
    }
    return orElse();
  }
}

abstract class OpenAuthModelSoppingCartEvent implements ShoppingCartEvent {
  const factory OpenAuthModelSoppingCartEvent() =
      _$OpenAuthModelSoppingCartEventImpl;
}

/// @nodoc
abstract class _$$CloseAuthModelSoppingCartEventImplCopyWith<$Res> {
  factory _$$CloseAuthModelSoppingCartEventImplCopyWith(
          _$CloseAuthModelSoppingCartEventImpl value,
          $Res Function(_$CloseAuthModelSoppingCartEventImpl) then) =
      __$$CloseAuthModelSoppingCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseAuthModelSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$CloseAuthModelSoppingCartEventImpl>
    implements _$$CloseAuthModelSoppingCartEventImplCopyWith<$Res> {
  __$$CloseAuthModelSoppingCartEventImplCopyWithImpl(
      _$CloseAuthModelSoppingCartEventImpl _value,
      $Res Function(_$CloseAuthModelSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CloseAuthModelSoppingCartEventImpl
    implements CloseAuthModelSoppingCartEvent {
  const _$CloseAuthModelSoppingCartEventImpl();

  @override
  String toString() {
    return 'ShoppingCartEvent.closeAuthModel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloseAuthModelSoppingCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return closeAuthModel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return closeAuthModel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (closeAuthModel != null) {
      return closeAuthModel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return closeAuthModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return closeAuthModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (closeAuthModel != null) {
      return closeAuthModel(this);
    }
    return orElse();
  }
}

abstract class CloseAuthModelSoppingCartEvent implements ShoppingCartEvent {
  const factory CloseAuthModelSoppingCartEvent() =
      _$CloseAuthModelSoppingCartEventImpl;
}

/// @nodoc
abstract class _$$ChangeReceivingTypeSoppingCartEventImplCopyWith<$Res> {
  factory _$$ChangeReceivingTypeSoppingCartEventImplCopyWith(
          _$ChangeReceivingTypeSoppingCartEventImpl value,
          $Res Function(_$ChangeReceivingTypeSoppingCartEventImpl) then) =
      __$$ChangeReceivingTypeSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String receivingType});
}

/// @nodoc
class __$$ChangeReceivingTypeSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$ChangeReceivingTypeSoppingCartEventImpl>
    implements _$$ChangeReceivingTypeSoppingCartEventImplCopyWith<$Res> {
  __$$ChangeReceivingTypeSoppingCartEventImplCopyWithImpl(
      _$ChangeReceivingTypeSoppingCartEventImpl _value,
      $Res Function(_$ChangeReceivingTypeSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receivingType = null,
  }) {
    return _then(_$ChangeReceivingTypeSoppingCartEventImpl(
      receivingType: null == receivingType
          ? _value.receivingType
          : receivingType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeReceivingTypeSoppingCartEventImpl
    implements ChangeReceivingTypeSoppingCartEvent {
  const _$ChangeReceivingTypeSoppingCartEventImpl(
      {required this.receivingType});

  @override
  final String receivingType;

  @override
  String toString() {
    return 'ShoppingCartEvent.changeReceivingType(receivingType: $receivingType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeReceivingTypeSoppingCartEventImpl &&
            (identical(other.receivingType, receivingType) ||
                other.receivingType == receivingType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receivingType);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeReceivingTypeSoppingCartEventImplCopyWith<
          _$ChangeReceivingTypeSoppingCartEventImpl>
      get copyWith => __$$ChangeReceivingTypeSoppingCartEventImplCopyWithImpl<
          _$ChangeReceivingTypeSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return changeReceivingType(receivingType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return changeReceivingType?.call(receivingType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (changeReceivingType != null) {
      return changeReceivingType(receivingType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return changeReceivingType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return changeReceivingType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (changeReceivingType != null) {
      return changeReceivingType(this);
    }
    return orElse();
  }
}

abstract class ChangeReceivingTypeSoppingCartEvent
    implements ShoppingCartEvent {
  const factory ChangeReceivingTypeSoppingCartEvent(
          {required final String receivingType}) =
      _$ChangeReceivingTypeSoppingCartEventImpl;

  String get receivingType;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeReceivingTypeSoppingCartEventImplCopyWith<
          _$ChangeReceivingTypeSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeUidPickUpPointSoppingCartEventImplCopyWith<$Res> {
  factory _$$ChangeUidPickUpPointSoppingCartEventImplCopyWith(
          _$ChangeUidPickUpPointSoppingCartEventImpl value,
          $Res Function(_$ChangeUidPickUpPointSoppingCartEventImpl) then) =
      __$$ChangeUidPickUpPointSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uidPickUpPoint});
}

/// @nodoc
class __$$ChangeUidPickUpPointSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$ChangeUidPickUpPointSoppingCartEventImpl>
    implements _$$ChangeUidPickUpPointSoppingCartEventImplCopyWith<$Res> {
  __$$ChangeUidPickUpPointSoppingCartEventImplCopyWithImpl(
      _$ChangeUidPickUpPointSoppingCartEventImpl _value,
      $Res Function(_$ChangeUidPickUpPointSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uidPickUpPoint = null,
  }) {
    return _then(_$ChangeUidPickUpPointSoppingCartEventImpl(
      uidPickUpPoint: null == uidPickUpPoint
          ? _value.uidPickUpPoint
          : uidPickUpPoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeUidPickUpPointSoppingCartEventImpl
    implements ChangeUidPickUpPointSoppingCartEvent {
  const _$ChangeUidPickUpPointSoppingCartEventImpl(
      {required this.uidPickUpPoint});

  @override
  final String uidPickUpPoint;

  @override
  String toString() {
    return 'ShoppingCartEvent.changeUidPickUpPoint(uidPickUpPoint: $uidPickUpPoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUidPickUpPointSoppingCartEventImpl &&
            (identical(other.uidPickUpPoint, uidPickUpPoint) ||
                other.uidPickUpPoint == uidPickUpPoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uidPickUpPoint);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeUidPickUpPointSoppingCartEventImplCopyWith<
          _$ChangeUidPickUpPointSoppingCartEventImpl>
      get copyWith => __$$ChangeUidPickUpPointSoppingCartEventImplCopyWithImpl<
          _$ChangeUidPickUpPointSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return changeUidPickUpPoint(uidPickUpPoint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return changeUidPickUpPoint?.call(uidPickUpPoint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (changeUidPickUpPoint != null) {
      return changeUidPickUpPoint(uidPickUpPoint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return changeUidPickUpPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return changeUidPickUpPoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (changeUidPickUpPoint != null) {
      return changeUidPickUpPoint(this);
    }
    return orElse();
  }
}

abstract class ChangeUidPickUpPointSoppingCartEvent
    implements ShoppingCartEvent {
  const factory ChangeUidPickUpPointSoppingCartEvent(
          {required final String uidPickUpPoint}) =
      _$ChangeUidPickUpPointSoppingCartEventImpl;

  String get uidPickUpPoint;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeUidPickUpPointSoppingCartEventImplCopyWith<
          _$ChangeUidPickUpPointSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAddressDeliverySoppingCartEventImplCopyWith<$Res> {
  factory _$$SelectAddressDeliverySoppingCartEventImplCopyWith(
          _$SelectAddressDeliverySoppingCartEventImpl value,
          $Res Function(_$SelectAddressDeliverySoppingCartEventImpl) then) =
      __$$SelectAddressDeliverySoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectAddressDeliverySoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$SelectAddressDeliverySoppingCartEventImpl>
    implements _$$SelectAddressDeliverySoppingCartEventImplCopyWith<$Res> {
  __$$SelectAddressDeliverySoppingCartEventImplCopyWithImpl(
      _$SelectAddressDeliverySoppingCartEventImpl _value,
      $Res Function(_$SelectAddressDeliverySoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SelectAddressDeliverySoppingCartEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectAddressDeliverySoppingCartEventImpl
    implements SelectAddressDeliverySoppingCartEvent {
  const _$SelectAddressDeliverySoppingCartEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'ShoppingCartEvent.selectAddressDelivery(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAddressDeliverySoppingCartEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAddressDeliverySoppingCartEventImplCopyWith<
          _$SelectAddressDeliverySoppingCartEventImpl>
      get copyWith => __$$SelectAddressDeliverySoppingCartEventImplCopyWithImpl<
          _$SelectAddressDeliverySoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return selectAddressDelivery(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return selectAddressDelivery?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (selectAddressDelivery != null) {
      return selectAddressDelivery(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return selectAddressDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return selectAddressDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (selectAddressDelivery != null) {
      return selectAddressDelivery(this);
    }
    return orElse();
  }
}

abstract class SelectAddressDeliverySoppingCartEvent
    implements ShoppingCartEvent {
  const factory SelectAddressDeliverySoppingCartEvent(
      {required final int index}) = _$SelectAddressDeliverySoppingCartEventImpl;

  int get index;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectAddressDeliverySoppingCartEventImplCopyWith<
          _$SelectAddressDeliverySoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAddressDeliverySoppingCartEventImplCopyWith<$Res> {
  factory _$$AddAddressDeliverySoppingCartEventImplCopyWith(
          _$AddAddressDeliverySoppingCartEventImpl value,
          $Res Function(_$AddAddressDeliverySoppingCartEventImpl) then) =
      __$$AddAddressDeliverySoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BasketAddressDataModel addressDelivery, int delivery, String cityId});
}

/// @nodoc
class __$$AddAddressDeliverySoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$AddAddressDeliverySoppingCartEventImpl>
    implements _$$AddAddressDeliverySoppingCartEventImplCopyWith<$Res> {
  __$$AddAddressDeliverySoppingCartEventImplCopyWithImpl(
      _$AddAddressDeliverySoppingCartEventImpl _value,
      $Res Function(_$AddAddressDeliverySoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressDelivery = null,
    Object? delivery = null,
    Object? cityId = null,
  }) {
    return _then(_$AddAddressDeliverySoppingCartEventImpl(
      addressDelivery: null == addressDelivery
          ? _value.addressDelivery
          : addressDelivery // ignore: cast_nullable_to_non_nullable
              as BasketAddressDataModel,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddAddressDeliverySoppingCartEventImpl
    implements AddAddressDeliverySoppingCartEvent {
  const _$AddAddressDeliverySoppingCartEventImpl(
      {required this.addressDelivery,
      required this.delivery,
      required this.cityId});

  @override
  final BasketAddressDataModel addressDelivery;
  @override
  final int delivery;
  @override
  final String cityId;

  @override
  String toString() {
    return 'ShoppingCartEvent.addAddressDelivery(addressDelivery: $addressDelivery, delivery: $delivery, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressDeliverySoppingCartEventImpl &&
            (identical(other.addressDelivery, addressDelivery) ||
                other.addressDelivery == addressDelivery) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, addressDelivery, delivery, cityId);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressDeliverySoppingCartEventImplCopyWith<
          _$AddAddressDeliverySoppingCartEventImpl>
      get copyWith => __$$AddAddressDeliverySoppingCartEventImplCopyWithImpl<
          _$AddAddressDeliverySoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return addAddressDelivery(addressDelivery, delivery, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return addAddressDelivery?.call(addressDelivery, delivery, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addAddressDelivery != null) {
      return addAddressDelivery(addressDelivery, delivery, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return addAddressDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return addAddressDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (addAddressDelivery != null) {
      return addAddressDelivery(this);
    }
    return orElse();
  }
}

abstract class AddAddressDeliverySoppingCartEvent implements ShoppingCartEvent {
  const factory AddAddressDeliverySoppingCartEvent(
      {required final BasketAddressDataModel addressDelivery,
      required final int delivery,
      required final String cityId}) = _$AddAddressDeliverySoppingCartEventImpl;

  BasketAddressDataModel get addressDelivery;
  int get delivery;
  String get cityId;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAddressDeliverySoppingCartEventImplCopyWith<
          _$AddAddressDeliverySoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAddressDeliverySoppingCartEventImplCopyWith<$Res> {
  factory _$$DeleteAddressDeliverySoppingCartEventImplCopyWith(
          _$DeleteAddressDeliverySoppingCartEventImpl value,
          $Res Function(_$DeleteAddressDeliverySoppingCartEventImpl) then) =
      __$$DeleteAddressDeliverySoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteAddressDeliverySoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$DeleteAddressDeliverySoppingCartEventImpl>
    implements _$$DeleteAddressDeliverySoppingCartEventImplCopyWith<$Res> {
  __$$DeleteAddressDeliverySoppingCartEventImplCopyWithImpl(
      _$DeleteAddressDeliverySoppingCartEventImpl _value,
      $Res Function(_$DeleteAddressDeliverySoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteAddressDeliverySoppingCartEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAddressDeliverySoppingCartEventImpl
    implements DeleteAddressDeliverySoppingCartEvent {
  const _$DeleteAddressDeliverySoppingCartEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ShoppingCartEvent.deleteAddressDelivery(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAddressDeliverySoppingCartEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAddressDeliverySoppingCartEventImplCopyWith<
          _$DeleteAddressDeliverySoppingCartEventImpl>
      get copyWith => __$$DeleteAddressDeliverySoppingCartEventImplCopyWithImpl<
          _$DeleteAddressDeliverySoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return deleteAddressDelivery(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return deleteAddressDelivery?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (deleteAddressDelivery != null) {
      return deleteAddressDelivery(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return deleteAddressDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return deleteAddressDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (deleteAddressDelivery != null) {
      return deleteAddressDelivery(this);
    }
    return orElse();
  }
}

abstract class DeleteAddressDeliverySoppingCartEvent
    implements ShoppingCartEvent {
  const factory DeleteAddressDeliverySoppingCartEvent(
      {required final String id}) = _$DeleteAddressDeliverySoppingCartEventImpl;

  String get id;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAddressDeliverySoppingCartEventImplCopyWith<
          _$DeleteAddressDeliverySoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePaymentTypeSoppingCartEventImplCopyWith<$Res> {
  factory _$$ChangePaymentTypeSoppingCartEventImplCopyWith(
          _$ChangePaymentTypeSoppingCartEventImpl value,
          $Res Function(_$ChangePaymentTypeSoppingCartEventImpl) then) =
      __$$ChangePaymentTypeSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentId, String typePay});
}

/// @nodoc
class __$$ChangePaymentTypeSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$ChangePaymentTypeSoppingCartEventImpl>
    implements _$$ChangePaymentTypeSoppingCartEventImplCopyWith<$Res> {
  __$$ChangePaymentTypeSoppingCartEventImplCopyWithImpl(
      _$ChangePaymentTypeSoppingCartEventImpl _value,
      $Res Function(_$ChangePaymentTypeSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? typePay = null,
  }) {
    return _then(_$ChangePaymentTypeSoppingCartEventImpl(
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      typePay: null == typePay
          ? _value.typePay
          : typePay // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePaymentTypeSoppingCartEventImpl
    implements ChangePaymentTypeSoppingCartEvent {
  const _$ChangePaymentTypeSoppingCartEventImpl(
      {required this.paymentId, required this.typePay});

  @override
  final String paymentId;
  @override
  final String typePay;

  @override
  String toString() {
    return 'ShoppingCartEvent.changePaymentType(paymentId: $paymentId, typePay: $typePay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePaymentTypeSoppingCartEventImpl &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.typePay, typePay) || other.typePay == typePay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentId, typePay);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePaymentTypeSoppingCartEventImplCopyWith<
          _$ChangePaymentTypeSoppingCartEventImpl>
      get copyWith => __$$ChangePaymentTypeSoppingCartEventImplCopyWithImpl<
          _$ChangePaymentTypeSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return changePaymentType(paymentId, typePay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return changePaymentType?.call(paymentId, typePay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (changePaymentType != null) {
      return changePaymentType(paymentId, typePay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return changePaymentType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return changePaymentType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (changePaymentType != null) {
      return changePaymentType(this);
    }
    return orElse();
  }
}

abstract class ChangePaymentTypeSoppingCartEvent implements ShoppingCartEvent {
  const factory ChangePaymentTypeSoppingCartEvent(
      {required final String paymentId,
      required final String typePay}) = _$ChangePaymentTypeSoppingCartEventImpl;

  String get paymentId;
  String get typePay;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePaymentTypeSoppingCartEventImplCopyWith<
          _$ChangePaymentTypeSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTitlePromocodeSoppingCartEventImplCopyWith<$Res> {
  factory _$$ChangeTitlePromocodeSoppingCartEventImplCopyWith(
          _$ChangeTitlePromocodeSoppingCartEventImpl value,
          $Res Function(_$ChangeTitlePromocodeSoppingCartEventImpl) then) =
      __$$ChangeTitlePromocodeSoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String titlePromocode});
}

/// @nodoc
class __$$ChangeTitlePromocodeSoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$ChangeTitlePromocodeSoppingCartEventImpl>
    implements _$$ChangeTitlePromocodeSoppingCartEventImplCopyWith<$Res> {
  __$$ChangeTitlePromocodeSoppingCartEventImplCopyWithImpl(
      _$ChangeTitlePromocodeSoppingCartEventImpl _value,
      $Res Function(_$ChangeTitlePromocodeSoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titlePromocode = null,
  }) {
    return _then(_$ChangeTitlePromocodeSoppingCartEventImpl(
      titlePromocode: null == titlePromocode
          ? _value.titlePromocode
          : titlePromocode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeTitlePromocodeSoppingCartEventImpl
    implements ChangeTitlePromocodeSoppingCartEvent {
  const _$ChangeTitlePromocodeSoppingCartEventImpl(
      {required this.titlePromocode});

  @override
  final String titlePromocode;

  @override
  String toString() {
    return 'ShoppingCartEvent.changeTitlePromocode(titlePromocode: $titlePromocode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTitlePromocodeSoppingCartEventImpl &&
            (identical(other.titlePromocode, titlePromocode) ||
                other.titlePromocode == titlePromocode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, titlePromocode);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTitlePromocodeSoppingCartEventImplCopyWith<
          _$ChangeTitlePromocodeSoppingCartEventImpl>
      get copyWith => __$$ChangeTitlePromocodeSoppingCartEventImplCopyWithImpl<
          _$ChangeTitlePromocodeSoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return changeTitlePromocode(titlePromocode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return changeTitlePromocode?.call(titlePromocode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
    TResult Function(String code, bool isShop)? getInfoProductSize,
    required TResult orElse(),
  }) {
    if (changeTitlePromocode != null) {
      return changeTitlePromocode(titlePromocode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return changeTitlePromocode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return changeTitlePromocode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (changeTitlePromocode != null) {
      return changeTitlePromocode(this);
    }
    return orElse();
  }
}

abstract class ChangeTitlePromocodeSoppingCartEvent
    implements ShoppingCartEvent {
  const factory ChangeTitlePromocodeSoppingCartEvent(
          {required final String titlePromocode}) =
      _$ChangeTitlePromocodeSoppingCartEventImpl;

  String get titlePromocode;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTitlePromocodeSoppingCartEventImplCopyWith<
          _$ChangeTitlePromocodeSoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInfoProductSizeShoppingCartEventImplCopyWith<$Res> {
  factory _$$GetInfoProductSizeShoppingCartEventImplCopyWith(
          _$GetInfoProductSizeShoppingCartEventImpl value,
          $Res Function(_$GetInfoProductSizeShoppingCartEventImpl) then) =
      __$$GetInfoProductSizeShoppingCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, bool isShop});
}

/// @nodoc
class __$$GetInfoProductSizeShoppingCartEventImplCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$GetInfoProductSizeShoppingCartEventImpl>
    implements _$$GetInfoProductSizeShoppingCartEventImplCopyWith<$Res> {
  __$$GetInfoProductSizeShoppingCartEventImplCopyWithImpl(
      _$GetInfoProductSizeShoppingCartEventImpl _value,
      $Res Function(_$GetInfoProductSizeShoppingCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? isShop = null,
  }) {
    return _then(_$GetInfoProductSizeShoppingCartEventImpl(
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

class _$GetInfoProductSizeShoppingCartEventImpl
    implements GetInfoProductSizeShoppingCartEvent {
  const _$GetInfoProductSizeShoppingCartEventImpl(
      {required this.code, required this.isShop});

  @override
  final String code;
  @override
  final bool isShop;

  @override
  String toString() {
    return 'ShoppingCartEvent.getInfoProductSize(code: $code, isShop: $isShop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoProductSizeShoppingCartEventImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isShop, isShop) || other.isShop == isShop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, isShop);

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInfoProductSizeShoppingCartEventImplCopyWith<
          _$GetInfoProductSizeShoppingCartEventImpl>
      get copyWith => __$$GetInfoProductSizeShoppingCartEventImplCopyWithImpl<
          _$GetInfoProductSizeShoppingCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(BasketInfoItemDataModel item)
        addProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)
        addOtherProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        deleteProductToSoppingCart,
    required TResult Function(BasketInfoItemDataModel item, int index)
        updateProductToSoppingCart,
    required TResult Function() paymentBonus,
    required TResult Function() initGiftCard,
    required TResult Function(String number, String pin) giftCard,
    required TResult Function(BasketSertDeliveryRequest giftCard) addGiftCard,
    required TResult Function(String promoCode, String uid) promoCode,
    required TResult Function() removePromoCode,
    required TResult Function(BasketOrderRequest request) createOrder,
    required TResult Function(int bonuses) bonuses,
    required TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)
        getInfoProduct,
    required TResult Function() goBackProductInfo,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function() addProductToSoppingCartInfo,
    required TResult Function(SkuProductDataModel size)
        checkProductToSoppingCart,
    required TResult Function(SkuProductDataModel selectSizeProduct)
        changeSizeProduct,
    required TResult Function() openAuthModel,
    required TResult Function() closeAuthModel,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String paymentId, String typePay)
        changePaymentType,
    required TResult Function(String titlePromocode) changeTitlePromocode,
    required TResult Function(String code, bool isShop) getInfoProductSize,
  }) {
    return getInfoProductSize(code, isShop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult? Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult? Function()? paymentBonus,
    TResult? Function()? initGiftCard,
    TResult? Function(String number, String pin)? giftCard,
    TResult? Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult? Function(String promoCode, String uid)? promoCode,
    TResult? Function()? removePromoCode,
    TResult? Function(BasketOrderRequest request)? createOrder,
    TResult? Function(int bonuses)? bonuses,
    TResult? Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult? Function()? goBackProductInfo,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function()? addProductToSoppingCartInfo,
    TResult? Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult? Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult? Function()? openAuthModel,
    TResult? Function()? closeAuthModel,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String paymentId, String typePay)? changePaymentType,
    TResult? Function(String titlePromocode)? changeTitlePromocode,
    TResult? Function(String code, bool isShop)? getInfoProductSize,
  }) {
    return getInfoProductSize?.call(code, isShop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(BasketInfoItemDataModel item)? addProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, String? titleScreen,
            String? typeAddProductToShoppingCart)?
        addOtherProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        deleteProductToSoppingCart,
    TResult Function(BasketInfoItemDataModel item, int index)?
        updateProductToSoppingCart,
    TResult Function()? paymentBonus,
    TResult Function()? initGiftCard,
    TResult Function(String number, String pin)? giftCard,
    TResult Function(BasketSertDeliveryRequest giftCard)? addGiftCard,
    TResult Function(String promoCode, String uid)? promoCode,
    TResult Function()? removePromoCode,
    TResult Function(BasketOrderRequest request)? createOrder,
    TResult Function(int bonuses)? bonuses,
    TResult Function(
            String code,
            String titleScreen,
            String typeAddProductToShoppingCart,
            String identifierAddProductToShoppingCart,
            SkuProductDataModel? size,
            bool? isUpdate)?
        getInfoProduct,
    TResult Function()? goBackProductInfo,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function()? addProductToSoppingCartInfo,
    TResult Function(SkuProductDataModel size)? checkProductToSoppingCart,
    TResult Function(SkuProductDataModel selectSizeProduct)? changeSizeProduct,
    TResult Function()? openAuthModel,
    TResult Function()? closeAuthModel,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String paymentId, String typePay)? changePaymentType,
    TResult Function(String titlePromocode)? changeTitlePromocode,
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
    required TResult Function(InitShoppingCartEvent value) init,
    required TResult Function(PreloadDataShoppingCartEvent value) preloadData,
    required TResult Function(AddProductToSoppingCartEvent value)
        addProductToSoppingCart,
    required TResult Function(AddOtherProductToSoppingCartEvent value)
        addOtherProductToSoppingCart,
    required TResult Function(DeleteProductToSoppingCartEvent value)
        deleteProductToSoppingCart,
    required TResult Function(UpdateProductToSoppingCartEvent value)
        updateProductToSoppingCart,
    required TResult Function(PaymentBonusSoppingCartEvent value) paymentBonus,
    required TResult Function(InitGiftCardSoppingCartEvent value) initGiftCard,
    required TResult Function(GiftCardSoppingCartEvent value) giftCard,
    required TResult Function(AddGiftCardSoppingCartEvent value) addGiftCard,
    required TResult Function(PromoCodeSoppingCartEvent value) promoCode,
    required TResult Function(RemovePromoCodeSoppingCartEvent value)
        removePromoCode,
    required TResult Function(CreateOrderPromoCodeSoppingCartEvent value)
        createOrder,
    required TResult Function(BonusesSoppingCartEvent value) bonuses,
    required TResult Function(GetInfoProductShoppingCartEvent value)
        getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)
        goBackProductInfo,
    required TResult Function(AddFavouriteProductShoppingCartEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductShoppingCartEvent value)
        deleteFavouriteProduct,
    required TResult Function(AddProductToSoppingCartInfoEvent value)
        addProductToSoppingCartInfo,
    required TResult Function(CheckProductToSoppingCartEvent value)
        checkProductToSoppingCart,
    required TResult Function(ChangeSizeProductSoppingCartEvent value)
        changeSizeProduct,
    required TResult Function(OpenAuthModelSoppingCartEvent value)
        openAuthModel,
    required TResult Function(CloseAuthModelSoppingCartEvent value)
        closeAuthModel,
    required TResult Function(ChangeReceivingTypeSoppingCartEvent value)
        changeReceivingType,
    required TResult Function(ChangeUidPickUpPointSoppingCartEvent value)
        changeUidPickUpPoint,
    required TResult Function(SelectAddressDeliverySoppingCartEvent value)
        selectAddressDelivery,
    required TResult Function(AddAddressDeliverySoppingCartEvent value)
        addAddressDelivery,
    required TResult Function(DeleteAddressDeliverySoppingCartEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangePaymentTypeSoppingCartEvent value)
        changePaymentType,
    required TResult Function(ChangeTitlePromocodeSoppingCartEvent value)
        changeTitlePromocode,
    required TResult Function(GetInfoProductSizeShoppingCartEvent value)
        getInfoProductSize,
  }) {
    return getInfoProductSize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartEvent value)? init,
    TResult? Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult? Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult? Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult? Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult? Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult? Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult? Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult? Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult? Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult? Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult? Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult? Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult? Function(BonusesSoppingCartEvent value)? bonuses,
    TResult? Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult? Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult? Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult? Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult? Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult? Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult? Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult? Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult? Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult? Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult? Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult? Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult? Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult? Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
  }) {
    return getInfoProductSize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartEvent value)? init,
    TResult Function(PreloadDataShoppingCartEvent value)? preloadData,
    TResult Function(AddProductToSoppingCartEvent value)?
        addProductToSoppingCart,
    TResult Function(AddOtherProductToSoppingCartEvent value)?
        addOtherProductToSoppingCart,
    TResult Function(DeleteProductToSoppingCartEvent value)?
        deleteProductToSoppingCart,
    TResult Function(UpdateProductToSoppingCartEvent value)?
        updateProductToSoppingCart,
    TResult Function(PaymentBonusSoppingCartEvent value)? paymentBonus,
    TResult Function(InitGiftCardSoppingCartEvent value)? initGiftCard,
    TResult Function(GiftCardSoppingCartEvent value)? giftCard,
    TResult Function(AddGiftCardSoppingCartEvent value)? addGiftCard,
    TResult Function(PromoCodeSoppingCartEvent value)? promoCode,
    TResult Function(RemovePromoCodeSoppingCartEvent value)? removePromoCode,
    TResult Function(CreateOrderPromoCodeSoppingCartEvent value)? createOrder,
    TResult Function(BonusesSoppingCartEvent value)? bonuses,
    TResult Function(GetInfoProductShoppingCartEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyShoppingCartEvent value)?
        goBackProductInfo,
    TResult Function(AddFavouriteProductShoppingCartEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductShoppingCartEvent value)?
        deleteFavouriteProduct,
    TResult Function(AddProductToSoppingCartInfoEvent value)?
        addProductToSoppingCartInfo,
    TResult Function(CheckProductToSoppingCartEvent value)?
        checkProductToSoppingCart,
    TResult Function(ChangeSizeProductSoppingCartEvent value)?
        changeSizeProduct,
    TResult Function(OpenAuthModelSoppingCartEvent value)? openAuthModel,
    TResult Function(CloseAuthModelSoppingCartEvent value)? closeAuthModel,
    TResult Function(ChangeReceivingTypeSoppingCartEvent value)?
        changeReceivingType,
    TResult Function(ChangeUidPickUpPointSoppingCartEvent value)?
        changeUidPickUpPoint,
    TResult Function(SelectAddressDeliverySoppingCartEvent value)?
        selectAddressDelivery,
    TResult Function(AddAddressDeliverySoppingCartEvent value)?
        addAddressDelivery,
    TResult Function(DeleteAddressDeliverySoppingCartEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangePaymentTypeSoppingCartEvent value)?
        changePaymentType,
    TResult Function(ChangeTitlePromocodeSoppingCartEvent value)?
        changeTitlePromocode,
    TResult Function(GetInfoProductSizeShoppingCartEvent value)?
        getInfoProductSize,
    required TResult orElse(),
  }) {
    if (getInfoProductSize != null) {
      return getInfoProductSize(this);
    }
    return orElse();
  }
}

abstract class GetInfoProductSizeShoppingCartEvent
    implements ShoppingCartEvent {
  const factory GetInfoProductSizeShoppingCartEvent(
      {required final String code,
      required final bool isShop}) = _$GetInfoProductSizeShoppingCartEventImpl;

  String get code;
  bool get isShop;

  /// Create a copy of ShoppingCartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInfoProductSizeShoppingCartEventImplCopyWith<
          _$GetInfoProductSizeShoppingCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShoppingCartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(
            String errorMessage,
            BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart,
            String? titleScreen)
        error,
    required TResult Function(int orderId) createOrderSuccessfully,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(int bonuses) openShowDialog,
    required TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)
        productsShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult? Function(int orderId)? createOrderSuccessfully,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(int bonuses)? openShowDialog,
    TResult? Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult Function(int orderId)? createOrderSuccessfully,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(int bonuses)? openShowDialog,
    TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(LoadingErrorButtonShoppingCartState value)
        loadErrorButton,
    required TResult Function(ErrorShoppingCartState value) error,
    required TResult Function(CreateOrderSuccessfullyShoppingCartState value)
        createOrderSuccessfully,
    required TResult Function(OpenSoppingCartShoppingCartState value)
        openSoppingCart,
    required TResult Function(GetSizeProductShoppingCartState value)
        getSizeProduct,
    required TResult Function(AddProductShoppingCartState value)
        addProductToSoppingCart,
    required TResult Function(OpenShowDialogShoppingCartState value)
        openShowDialog,
    required TResult Function(ProductsShoppingCartState value)
        productsShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartState value)? init,
    TResult? Function(LoadingShoppingCartState value)? load,
    TResult? Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult? Function(ErrorShoppingCartState value)? error,
    TResult? Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult? Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult? Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult? Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult? Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult Function(ErrorShoppingCartState value)? error,
    TResult Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult Function(OpenShowDialogShoppingCartState value)? openShowDialog,
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

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitShoppingCartStateImpl implements InitShoppingCartState {
  const _$InitShoppingCartStateImpl();

  @override
  String toString() {
    return 'ShoppingCartState.init()';
  }

  @override
  bool operator ==(Object other) {
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
    required TResult Function() loadErrorButton,
    required TResult Function(
            String errorMessage,
            BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart,
            String? titleScreen)
        error,
    required TResult Function(int orderId) createOrderSuccessfully,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(int bonuses) openShowDialog,
    required TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)
        productsShoppingCart,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult? Function(int orderId)? createOrderSuccessfully,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(int bonuses)? openShowDialog,
    TResult? Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult Function(int orderId)? createOrderSuccessfully,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(int bonuses)? openShowDialog,
    TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
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
    required TResult Function(LoadingErrorButtonShoppingCartState value)
        loadErrorButton,
    required TResult Function(ErrorShoppingCartState value) error,
    required TResult Function(CreateOrderSuccessfullyShoppingCartState value)
        createOrderSuccessfully,
    required TResult Function(OpenSoppingCartShoppingCartState value)
        openSoppingCart,
    required TResult Function(GetSizeProductShoppingCartState value)
        getSizeProduct,
    required TResult Function(AddProductShoppingCartState value)
        addProductToSoppingCart,
    required TResult Function(OpenShowDialogShoppingCartState value)
        openShowDialog,
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
    TResult? Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult? Function(ErrorShoppingCartState value)? error,
    TResult? Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult? Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult? Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult? Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult? Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult Function(ErrorShoppingCartState value)? error,
    TResult Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult Function(OpenShowDialogShoppingCartState value)? openShowDialog,
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

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingShoppingCartStateImpl implements LoadingShoppingCartState {
  const _$LoadingShoppingCartStateImpl();

  @override
  String toString() {
    return 'ShoppingCartState.load()';
  }

  @override
  bool operator ==(Object other) {
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
    required TResult Function() loadErrorButton,
    required TResult Function(
            String errorMessage,
            BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart,
            String? titleScreen)
        error,
    required TResult Function(int orderId) createOrderSuccessfully,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(int bonuses) openShowDialog,
    required TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)
        productsShoppingCart,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult? Function(int orderId)? createOrderSuccessfully,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(int bonuses)? openShowDialog,
    TResult? Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult Function(int orderId)? createOrderSuccessfully,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(int bonuses)? openShowDialog,
    TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
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
    required TResult Function(LoadingErrorButtonShoppingCartState value)
        loadErrorButton,
    required TResult Function(ErrorShoppingCartState value) error,
    required TResult Function(CreateOrderSuccessfullyShoppingCartState value)
        createOrderSuccessfully,
    required TResult Function(OpenSoppingCartShoppingCartState value)
        openSoppingCart,
    required TResult Function(GetSizeProductShoppingCartState value)
        getSizeProduct,
    required TResult Function(AddProductShoppingCartState value)
        addProductToSoppingCart,
    required TResult Function(OpenShowDialogShoppingCartState value)
        openShowDialog,
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
    TResult? Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult? Function(ErrorShoppingCartState value)? error,
    TResult? Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult? Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult? Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult? Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult? Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult Function(ErrorShoppingCartState value)? error,
    TResult Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult Function(OpenShowDialogShoppingCartState value)? openShowDialog,
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
abstract class _$$LoadingErrorButtonShoppingCartStateImplCopyWith<$Res> {
  factory _$$LoadingErrorButtonShoppingCartStateImplCopyWith(
          _$LoadingErrorButtonShoppingCartStateImpl value,
          $Res Function(_$LoadingErrorButtonShoppingCartStateImpl) then) =
      __$$LoadingErrorButtonShoppingCartStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingErrorButtonShoppingCartStateImplCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res,
        _$LoadingErrorButtonShoppingCartStateImpl>
    implements _$$LoadingErrorButtonShoppingCartStateImplCopyWith<$Res> {
  __$$LoadingErrorButtonShoppingCartStateImplCopyWithImpl(
      _$LoadingErrorButtonShoppingCartStateImpl _value,
      $Res Function(_$LoadingErrorButtonShoppingCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingErrorButtonShoppingCartStateImpl
    implements LoadingErrorButtonShoppingCartState {
  const _$LoadingErrorButtonShoppingCartStateImpl();

  @override
  String toString() {
    return 'ShoppingCartState.loadErrorButton()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingErrorButtonShoppingCartStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(
            String errorMessage,
            BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart,
            String? titleScreen)
        error,
    required TResult Function(int orderId) createOrderSuccessfully,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(int bonuses) openShowDialog,
    required TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)
        productsShoppingCart,
  }) {
    return loadErrorButton();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult? Function(int orderId)? createOrderSuccessfully,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(int bonuses)? openShowDialog,
    TResult? Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
  }) {
    return loadErrorButton?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult Function(int orderId)? createOrderSuccessfully,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(int bonuses)? openShowDialog,
    TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
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
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(LoadingErrorButtonShoppingCartState value)
        loadErrorButton,
    required TResult Function(ErrorShoppingCartState value) error,
    required TResult Function(CreateOrderSuccessfullyShoppingCartState value)
        createOrderSuccessfully,
    required TResult Function(OpenSoppingCartShoppingCartState value)
        openSoppingCart,
    required TResult Function(GetSizeProductShoppingCartState value)
        getSizeProduct,
    required TResult Function(AddProductShoppingCartState value)
        addProductToSoppingCart,
    required TResult Function(OpenShowDialogShoppingCartState value)
        openShowDialog,
    required TResult Function(ProductsShoppingCartState value)
        productsShoppingCart,
  }) {
    return loadErrorButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartState value)? init,
    TResult? Function(LoadingShoppingCartState value)? load,
    TResult? Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult? Function(ErrorShoppingCartState value)? error,
    TResult? Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult? Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult? Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult? Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult? Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return loadErrorButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult Function(ErrorShoppingCartState value)? error,
    TResult Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult Function(ProductsShoppingCartState value)? productsShoppingCart,
    required TResult orElse(),
  }) {
    if (loadErrorButton != null) {
      return loadErrorButton(this);
    }
    return orElse();
  }
}

abstract class LoadingErrorButtonShoppingCartState
    implements ShoppingCartState {
  const factory LoadingErrorButtonShoppingCartState() =
      _$LoadingErrorButtonShoppingCartStateImpl;
}

/// @nodoc
abstract class _$$ErrorShoppingCartStateImplCopyWith<$Res> {
  factory _$$ErrorShoppingCartStateImplCopyWith(
          _$ErrorShoppingCartStateImpl value,
          $Res Function(_$ErrorShoppingCartStateImpl) then) =
      __$$ErrorShoppingCartStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String errorMessage,
      BasketInfoItemDataModel? item,
      String? typeAddProductToShoppingCart,
      String? titleScreen});

  $BasketInfoItemDataModelCopyWith<$Res>? get item;
}

/// @nodoc
class __$$ErrorShoppingCartStateImplCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res, _$ErrorShoppingCartStateImpl>
    implements _$$ErrorShoppingCartStateImplCopyWith<$Res> {
  __$$ErrorShoppingCartStateImplCopyWithImpl(
      _$ErrorShoppingCartStateImpl _value,
      $Res Function(_$ErrorShoppingCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? item = freezed,
    Object? typeAddProductToShoppingCart = freezed,
    Object? titleScreen = freezed,
  }) {
    return _then(_$ErrorShoppingCartStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as BasketInfoItemDataModel?,
      typeAddProductToShoppingCart: freezed == typeAddProductToShoppingCart
          ? _value.typeAddProductToShoppingCart
          : typeAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String?,
      titleScreen: freezed == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasketInfoItemDataModelCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $BasketInfoItemDataModelCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$ErrorShoppingCartStateImpl implements ErrorShoppingCartState {
  const _$ErrorShoppingCartStateImpl(
      {required this.errorMessage,
      this.item,
      this.typeAddProductToShoppingCart,
      this.titleScreen});

  @override
  final String errorMessage;
  @override
  final BasketInfoItemDataModel? item;
  @override
  final String? typeAddProductToShoppingCart;
  @override
  final String? titleScreen;

  @override
  String toString() {
    return 'ShoppingCartState.error(errorMessage: $errorMessage, item: $item, typeAddProductToShoppingCart: $typeAddProductToShoppingCart, titleScreen: $titleScreen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorShoppingCartStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.typeAddProductToShoppingCart,
                    typeAddProductToShoppingCart) ||
                other.typeAddProductToShoppingCart ==
                    typeAddProductToShoppingCart) &&
            (identical(other.titleScreen, titleScreen) ||
                other.titleScreen == titleScreen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, item,
      typeAddProductToShoppingCart, titleScreen);

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorShoppingCartStateImplCopyWith<_$ErrorShoppingCartStateImpl>
      get copyWith => __$$ErrorShoppingCartStateImplCopyWithImpl<
          _$ErrorShoppingCartStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(
            String errorMessage,
            BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart,
            String? titleScreen)
        error,
    required TResult Function(int orderId) createOrderSuccessfully,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(int bonuses) openShowDialog,
    required TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)
        productsShoppingCart,
  }) {
    return error(errorMessage, item, typeAddProductToShoppingCart, titleScreen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult? Function(int orderId)? createOrderSuccessfully,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(int bonuses)? openShowDialog,
    TResult? Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
  }) {
    return error?.call(
        errorMessage, item, typeAddProductToShoppingCart, titleScreen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult Function(int orderId)? createOrderSuccessfully,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(int bonuses)? openShowDialog,
    TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(
          errorMessage, item, typeAddProductToShoppingCart, titleScreen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(LoadingErrorButtonShoppingCartState value)
        loadErrorButton,
    required TResult Function(ErrorShoppingCartState value) error,
    required TResult Function(CreateOrderSuccessfullyShoppingCartState value)
        createOrderSuccessfully,
    required TResult Function(OpenSoppingCartShoppingCartState value)
        openSoppingCart,
    required TResult Function(GetSizeProductShoppingCartState value)
        getSizeProduct,
    required TResult Function(AddProductShoppingCartState value)
        addProductToSoppingCart,
    required TResult Function(OpenShowDialogShoppingCartState value)
        openShowDialog,
    required TResult Function(ProductsShoppingCartState value)
        productsShoppingCart,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartState value)? init,
    TResult? Function(LoadingShoppingCartState value)? load,
    TResult? Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult? Function(ErrorShoppingCartState value)? error,
    TResult? Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult? Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult? Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult? Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult? Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult Function(ErrorShoppingCartState value)? error,
    TResult Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult Function(ProductsShoppingCartState value)? productsShoppingCart,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorShoppingCartState implements ShoppingCartState {
  const factory ErrorShoppingCartState(
      {required final String errorMessage,
      final BasketInfoItemDataModel? item,
      final String? typeAddProductToShoppingCart,
      final String? titleScreen}) = _$ErrorShoppingCartStateImpl;

  String get errorMessage;
  BasketInfoItemDataModel? get item;
  String? get typeAddProductToShoppingCart;
  String? get titleScreen;

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorShoppingCartStateImplCopyWith<_$ErrorShoppingCartStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateOrderSuccessfullyShoppingCartStateImplCopyWith<$Res> {
  factory _$$CreateOrderSuccessfullyShoppingCartStateImplCopyWith(
          _$CreateOrderSuccessfullyShoppingCartStateImpl value,
          $Res Function(_$CreateOrderSuccessfullyShoppingCartStateImpl) then) =
      __$$CreateOrderSuccessfullyShoppingCartStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$CreateOrderSuccessfullyShoppingCartStateImplCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res,
        _$CreateOrderSuccessfullyShoppingCartStateImpl>
    implements _$$CreateOrderSuccessfullyShoppingCartStateImplCopyWith<$Res> {
  __$$CreateOrderSuccessfullyShoppingCartStateImplCopyWithImpl(
      _$CreateOrderSuccessfullyShoppingCartStateImpl _value,
      $Res Function(_$CreateOrderSuccessfullyShoppingCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$CreateOrderSuccessfullyShoppingCartStateImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateOrderSuccessfullyShoppingCartStateImpl
    implements CreateOrderSuccessfullyShoppingCartState {
  const _$CreateOrderSuccessfullyShoppingCartStateImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'ShoppingCartState.createOrderSuccessfully(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderSuccessfullyShoppingCartStateImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderSuccessfullyShoppingCartStateImplCopyWith<
          _$CreateOrderSuccessfullyShoppingCartStateImpl>
      get copyWith =>
          __$$CreateOrderSuccessfullyShoppingCartStateImplCopyWithImpl<
              _$CreateOrderSuccessfullyShoppingCartStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(
            String errorMessage,
            BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart,
            String? titleScreen)
        error,
    required TResult Function(int orderId) createOrderSuccessfully,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(int bonuses) openShowDialog,
    required TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)
        productsShoppingCart,
  }) {
    return createOrderSuccessfully(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult? Function(int orderId)? createOrderSuccessfully,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(int bonuses)? openShowDialog,
    TResult? Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
  }) {
    return createOrderSuccessfully?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult Function(int orderId)? createOrderSuccessfully,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(int bonuses)? openShowDialog,
    TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
    required TResult orElse(),
  }) {
    if (createOrderSuccessfully != null) {
      return createOrderSuccessfully(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(LoadingErrorButtonShoppingCartState value)
        loadErrorButton,
    required TResult Function(ErrorShoppingCartState value) error,
    required TResult Function(CreateOrderSuccessfullyShoppingCartState value)
        createOrderSuccessfully,
    required TResult Function(OpenSoppingCartShoppingCartState value)
        openSoppingCart,
    required TResult Function(GetSizeProductShoppingCartState value)
        getSizeProduct,
    required TResult Function(AddProductShoppingCartState value)
        addProductToSoppingCart,
    required TResult Function(OpenShowDialogShoppingCartState value)
        openShowDialog,
    required TResult Function(ProductsShoppingCartState value)
        productsShoppingCart,
  }) {
    return createOrderSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartState value)? init,
    TResult? Function(LoadingShoppingCartState value)? load,
    TResult? Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult? Function(ErrorShoppingCartState value)? error,
    TResult? Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult? Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult? Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult? Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult? Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return createOrderSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult Function(ErrorShoppingCartState value)? error,
    TResult Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult Function(ProductsShoppingCartState value)? productsShoppingCart,
    required TResult orElse(),
  }) {
    if (createOrderSuccessfully != null) {
      return createOrderSuccessfully(this);
    }
    return orElse();
  }
}

abstract class CreateOrderSuccessfullyShoppingCartState
    implements ShoppingCartState {
  const factory CreateOrderSuccessfullyShoppingCartState(
          {required final int orderId}) =
      _$CreateOrderSuccessfullyShoppingCartStateImpl;

  int get orderId;

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrderSuccessfullyShoppingCartStateImplCopyWith<
          _$CreateOrderSuccessfullyShoppingCartStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenSoppingCartShoppingCartStateImplCopyWith<$Res> {
  factory _$$OpenSoppingCartShoppingCartStateImplCopyWith(
          _$OpenSoppingCartShoppingCartStateImpl value,
          $Res Function(_$OpenSoppingCartShoppingCartStateImpl) then) =
      __$$OpenSoppingCartShoppingCartStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenSoppingCartShoppingCartStateImplCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res,
        _$OpenSoppingCartShoppingCartStateImpl>
    implements _$$OpenSoppingCartShoppingCartStateImplCopyWith<$Res> {
  __$$OpenSoppingCartShoppingCartStateImplCopyWithImpl(
      _$OpenSoppingCartShoppingCartStateImpl _value,
      $Res Function(_$OpenSoppingCartShoppingCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OpenSoppingCartShoppingCartStateImpl
    implements OpenSoppingCartShoppingCartState {
  const _$OpenSoppingCartShoppingCartStateImpl();

  @override
  String toString() {
    return 'ShoppingCartState.openSoppingCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenSoppingCartShoppingCartStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(
            String errorMessage,
            BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart,
            String? titleScreen)
        error,
    required TResult Function(int orderId) createOrderSuccessfully,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(int bonuses) openShowDialog,
    required TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)
        productsShoppingCart,
  }) {
    return openSoppingCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult? Function(int orderId)? createOrderSuccessfully,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(int bonuses)? openShowDialog,
    TResult? Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
  }) {
    return openSoppingCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult Function(int orderId)? createOrderSuccessfully,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(int bonuses)? openShowDialog,
    TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
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
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(LoadingErrorButtonShoppingCartState value)
        loadErrorButton,
    required TResult Function(ErrorShoppingCartState value) error,
    required TResult Function(CreateOrderSuccessfullyShoppingCartState value)
        createOrderSuccessfully,
    required TResult Function(OpenSoppingCartShoppingCartState value)
        openSoppingCart,
    required TResult Function(GetSizeProductShoppingCartState value)
        getSizeProduct,
    required TResult Function(AddProductShoppingCartState value)
        addProductToSoppingCart,
    required TResult Function(OpenShowDialogShoppingCartState value)
        openShowDialog,
    required TResult Function(ProductsShoppingCartState value)
        productsShoppingCart,
  }) {
    return openSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartState value)? init,
    TResult? Function(LoadingShoppingCartState value)? load,
    TResult? Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult? Function(ErrorShoppingCartState value)? error,
    TResult? Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult? Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult? Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult? Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult? Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return openSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult Function(ErrorShoppingCartState value)? error,
    TResult Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult Function(ProductsShoppingCartState value)? productsShoppingCart,
    required TResult orElse(),
  }) {
    if (openSoppingCart != null) {
      return openSoppingCart(this);
    }
    return orElse();
  }
}

abstract class OpenSoppingCartShoppingCartState implements ShoppingCartState {
  const factory OpenSoppingCartShoppingCartState() =
      _$OpenSoppingCartShoppingCartStateImpl;
}

/// @nodoc
abstract class _$$GetSizeProductShoppingCartStateImplCopyWith<$Res> {
  factory _$$GetSizeProductShoppingCartStateImplCopyWith(
          _$GetSizeProductShoppingCartStateImpl value,
          $Res Function(_$GetSizeProductShoppingCartStateImpl) then) =
      __$$GetSizeProductShoppingCartStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String code,
      List<SkuProductDataModel> listSize,
      List<SkuProductDataModel> listSizeToSoppingCart});
}

/// @nodoc
class __$$GetSizeProductShoppingCartStateImplCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res,
        _$GetSizeProductShoppingCartStateImpl>
    implements _$$GetSizeProductShoppingCartStateImplCopyWith<$Res> {
  __$$GetSizeProductShoppingCartStateImplCopyWithImpl(
      _$GetSizeProductShoppingCartStateImpl _value,
      $Res Function(_$GetSizeProductShoppingCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? listSize = null,
    Object? listSizeToSoppingCart = null,
  }) {
    return _then(_$GetSizeProductShoppingCartStateImpl(
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

class _$GetSizeProductShoppingCartStateImpl
    implements GetSizeProductShoppingCartState {
  const _$GetSizeProductShoppingCartStateImpl(
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
    return 'ShoppingCartState.getSizeProduct(code: $code, listSize: $listSize, listSizeToSoppingCart: $listSizeToSoppingCart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSizeProductShoppingCartStateImpl &&
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

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSizeProductShoppingCartStateImplCopyWith<
          _$GetSizeProductShoppingCartStateImpl>
      get copyWith => __$$GetSizeProductShoppingCartStateImplCopyWithImpl<
          _$GetSizeProductShoppingCartStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(
            String errorMessage,
            BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart,
            String? titleScreen)
        error,
    required TResult Function(int orderId) createOrderSuccessfully,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(int bonuses) openShowDialog,
    required TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)
        productsShoppingCart,
  }) {
    return getSizeProduct(code, listSize, listSizeToSoppingCart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult? Function(int orderId)? createOrderSuccessfully,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(int bonuses)? openShowDialog,
    TResult? Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
  }) {
    return getSizeProduct?.call(code, listSize, listSizeToSoppingCart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult Function(int orderId)? createOrderSuccessfully,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(int bonuses)? openShowDialog,
    TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
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
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(LoadingErrorButtonShoppingCartState value)
        loadErrorButton,
    required TResult Function(ErrorShoppingCartState value) error,
    required TResult Function(CreateOrderSuccessfullyShoppingCartState value)
        createOrderSuccessfully,
    required TResult Function(OpenSoppingCartShoppingCartState value)
        openSoppingCart,
    required TResult Function(GetSizeProductShoppingCartState value)
        getSizeProduct,
    required TResult Function(AddProductShoppingCartState value)
        addProductToSoppingCart,
    required TResult Function(OpenShowDialogShoppingCartState value)
        openShowDialog,
    required TResult Function(ProductsShoppingCartState value)
        productsShoppingCart,
  }) {
    return getSizeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartState value)? init,
    TResult? Function(LoadingShoppingCartState value)? load,
    TResult? Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult? Function(ErrorShoppingCartState value)? error,
    TResult? Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult? Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult? Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult? Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult? Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return getSizeProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult Function(ErrorShoppingCartState value)? error,
    TResult Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult Function(ProductsShoppingCartState value)? productsShoppingCart,
    required TResult orElse(),
  }) {
    if (getSizeProduct != null) {
      return getSizeProduct(this);
    }
    return orElse();
  }
}

abstract class GetSizeProductShoppingCartState implements ShoppingCartState {
  const factory GetSizeProductShoppingCartState(
          {required final String code,
          required final List<SkuProductDataModel> listSize,
          required final List<SkuProductDataModel> listSizeToSoppingCart}) =
      _$GetSizeProductShoppingCartStateImpl;

  String get code;
  List<SkuProductDataModel> get listSize;
  List<SkuProductDataModel> get listSizeToSoppingCart;

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSizeProductShoppingCartStateImplCopyWith<
          _$GetSizeProductShoppingCartStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductShoppingCartStateImplCopyWith<$Res> {
  factory _$$AddProductShoppingCartStateImplCopyWith(
          _$AddProductShoppingCartStateImpl value,
          $Res Function(_$AddProductShoppingCartStateImpl) then) =
      __$$AddProductShoppingCartStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$AddProductShoppingCartStateImplCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res,
        _$AddProductShoppingCartStateImpl>
    implements _$$AddProductShoppingCartStateImplCopyWith<$Res> {
  __$$AddProductShoppingCartStateImplCopyWithImpl(
      _$AddProductShoppingCartStateImpl _value,
      $Res Function(_$AddProductShoppingCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$AddProductShoppingCartStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProductShoppingCartStateImpl implements AddProductShoppingCartState {
  const _$AddProductShoppingCartStateImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'ShoppingCartState.addProductToSoppingCart(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductShoppingCartStateImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductShoppingCartStateImplCopyWith<_$AddProductShoppingCartStateImpl>
      get copyWith => __$$AddProductShoppingCartStateImplCopyWithImpl<
          _$AddProductShoppingCartStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(
            String errorMessage,
            BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart,
            String? titleScreen)
        error,
    required TResult Function(int orderId) createOrderSuccessfully,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(int bonuses) openShowDialog,
    required TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)
        productsShoppingCart,
  }) {
    return addProductToSoppingCart(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult? Function(int orderId)? createOrderSuccessfully,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(int bonuses)? openShowDialog,
    TResult? Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
  }) {
    return addProductToSoppingCart?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult Function(int orderId)? createOrderSuccessfully,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(int bonuses)? openShowDialog,
    TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
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
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(LoadingErrorButtonShoppingCartState value)
        loadErrorButton,
    required TResult Function(ErrorShoppingCartState value) error,
    required TResult Function(CreateOrderSuccessfullyShoppingCartState value)
        createOrderSuccessfully,
    required TResult Function(OpenSoppingCartShoppingCartState value)
        openSoppingCart,
    required TResult Function(GetSizeProductShoppingCartState value)
        getSizeProduct,
    required TResult Function(AddProductShoppingCartState value)
        addProductToSoppingCart,
    required TResult Function(OpenShowDialogShoppingCartState value)
        openShowDialog,
    required TResult Function(ProductsShoppingCartState value)
        productsShoppingCart,
  }) {
    return addProductToSoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartState value)? init,
    TResult? Function(LoadingShoppingCartState value)? load,
    TResult? Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult? Function(ErrorShoppingCartState value)? error,
    TResult? Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult? Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult? Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult? Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult? Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return addProductToSoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult Function(ErrorShoppingCartState value)? error,
    TResult Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult Function(ProductsShoppingCartState value)? productsShoppingCart,
    required TResult orElse(),
  }) {
    if (addProductToSoppingCart != null) {
      return addProductToSoppingCart(this);
    }
    return orElse();
  }
}

abstract class AddProductShoppingCartState implements ShoppingCartState {
  const factory AddProductShoppingCartState({required final String code}) =
      _$AddProductShoppingCartStateImpl;

  String get code;

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductShoppingCartStateImplCopyWith<_$AddProductShoppingCartStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenShowDialogShoppingCartStateImplCopyWith<$Res> {
  factory _$$OpenShowDialogShoppingCartStateImplCopyWith(
          _$OpenShowDialogShoppingCartStateImpl value,
          $Res Function(_$OpenShowDialogShoppingCartStateImpl) then) =
      __$$OpenShowDialogShoppingCartStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bonuses});
}

/// @nodoc
class __$$OpenShowDialogShoppingCartStateImplCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res,
        _$OpenShowDialogShoppingCartStateImpl>
    implements _$$OpenShowDialogShoppingCartStateImplCopyWith<$Res> {
  __$$OpenShowDialogShoppingCartStateImplCopyWithImpl(
      _$OpenShowDialogShoppingCartStateImpl _value,
      $Res Function(_$OpenShowDialogShoppingCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bonuses = null,
  }) {
    return _then(_$OpenShowDialogShoppingCartStateImpl(
      bonuses: null == bonuses
          ? _value.bonuses
          : bonuses // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OpenShowDialogShoppingCartStateImpl
    implements OpenShowDialogShoppingCartState {
  const _$OpenShowDialogShoppingCartStateImpl({required this.bonuses});

  @override
  final int bonuses;

  @override
  String toString() {
    return 'ShoppingCartState.openShowDialog(bonuses: $bonuses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenShowDialogShoppingCartStateImpl &&
            (identical(other.bonuses, bonuses) || other.bonuses == bonuses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bonuses);

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenShowDialogShoppingCartStateImplCopyWith<
          _$OpenShowDialogShoppingCartStateImpl>
      get copyWith => __$$OpenShowDialogShoppingCartStateImplCopyWithImpl<
          _$OpenShowDialogShoppingCartStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(
            String errorMessage,
            BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart,
            String? titleScreen)
        error,
    required TResult Function(int orderId) createOrderSuccessfully,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(int bonuses) openShowDialog,
    required TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)
        productsShoppingCart,
  }) {
    return openShowDialog(bonuses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult? Function(int orderId)? createOrderSuccessfully,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(int bonuses)? openShowDialog,
    TResult? Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
  }) {
    return openShowDialog?.call(bonuses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult Function(int orderId)? createOrderSuccessfully,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(int bonuses)? openShowDialog,
    TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
    required TResult orElse(),
  }) {
    if (openShowDialog != null) {
      return openShowDialog(bonuses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(LoadingErrorButtonShoppingCartState value)
        loadErrorButton,
    required TResult Function(ErrorShoppingCartState value) error,
    required TResult Function(CreateOrderSuccessfullyShoppingCartState value)
        createOrderSuccessfully,
    required TResult Function(OpenSoppingCartShoppingCartState value)
        openSoppingCart,
    required TResult Function(GetSizeProductShoppingCartState value)
        getSizeProduct,
    required TResult Function(AddProductShoppingCartState value)
        addProductToSoppingCart,
    required TResult Function(OpenShowDialogShoppingCartState value)
        openShowDialog,
    required TResult Function(ProductsShoppingCartState value)
        productsShoppingCart,
  }) {
    return openShowDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitShoppingCartState value)? init,
    TResult? Function(LoadingShoppingCartState value)? load,
    TResult? Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult? Function(ErrorShoppingCartState value)? error,
    TResult? Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult? Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult? Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult? Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult? Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return openShowDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult Function(ErrorShoppingCartState value)? error,
    TResult Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult Function(ProductsShoppingCartState value)? productsShoppingCart,
    required TResult orElse(),
  }) {
    if (openShowDialog != null) {
      return openShowDialog(this);
    }
    return orElse();
  }
}

abstract class OpenShowDialogShoppingCartState implements ShoppingCartState {
  const factory OpenShowDialogShoppingCartState({required final int bonuses}) =
      _$OpenShowDialogShoppingCartStateImpl;

  int get bonuses;

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenShowDialogShoppingCartStateImplCopyWith<
          _$OpenShowDialogShoppingCartStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsShoppingCartStateImplCopyWith<$Res> {
  factory _$$ProductsShoppingCartStateImplCopyWith(
          _$ProductsShoppingCartStateImpl value,
          $Res Function(_$ProductsShoppingCartStateImpl) then) =
      __$$ProductsShoppingCartStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BasketFullInfoDataModel shoppingCart,
      List<PaymentItemDataModel> payments,
      String promoCodeMessage,
      int numberProducts,
      int amountPaid,
      int giftCards,
      int bonuses,
      bool isLoadPaymentBonus,
      bool isLoadPaymentGift,
      bool isLoadPaymentPromoCode,
      bool isActivePromoCode,
      bool isLoadCreateOrder,
      String promoCode,
      String pickup,
      String receivingType,
      BoutiquesDataModel boutiques,
      bool isUponReceipt,
      bool isPayInstallmentsSberbank,
      List<BasketSertDeliveryRequest> listGiftCard,
      String address,
      BasketAddressDataModel addressDelivery,
      String uidPickUpPoint,
      String paymentId,
      String typePay,
      String titlePromocode,
      int? delivery,
      String? creatOrderMessage,
      PaymentBonusDataModel? paymentBonus,
      PaymentBonusDataModel? paymentGift,
      bool? isRemovePromoCode,
      List<ProductDataModel> favouritesProducts,
      List<String> listProductsCode,
      List<ProductDataModel> listProdcutsStyle,
      List<ProductDataModel> listProdcutsAlso,
      List<ProductDataModel> listProdcutsBrand,
      List<ProductDataModel> listProdcutsComplect,
      List<SkuProductDataModel> listSize,
      List<int> favouritesProductsId,
      bool isAuth,
      bool isLoadGetSizeProduct,
      bool isLoadAddProductToShopingCart,
      bool isBlocBackBotton,
      String? codeProduct,
      SkuProductDataModel? selectSizeProduct,
      bool? isShoppingCart,
      bool? isShoppingCartDetailsProduct,
      bool? isAuthModel,
      FavouritesCatalogInfoDataModel? favouritesProductsInfo,
      DetailProductDataModel? detailsProduct,
      BasketInfoItemDataModel? itemInfo,
      ProductDataModel? product,
      int? indexItem,
      bool? isLoadErrorButton,
      String? errorMessage,
      String? typeError,
      bool? isError,
      String? titleScreen,
      String? typeAddProductToShoppingCart,
      String? identifierAddProductToShoppingCart,
      bool? isShopGetSizeProduct,
      DeliveryDataModel? deliveryInfo,
      BoutiqueDataModel? boutique,
      int? selectIndexAddress,
      int? deleteIndexAddress,
      bool? isLoadDeleteAddress});

  $BasketFullInfoDataModelCopyWith<$Res> get shoppingCart;
  $BoutiquesDataModelCopyWith<$Res> get boutiques;
  $PaymentBonusDataModelCopyWith<$Res>? get paymentBonus;
  $PaymentBonusDataModelCopyWith<$Res>? get paymentGift;
  $SkuProductDataModelCopyWith<$Res>? get selectSizeProduct;
  $FavouritesCatalogInfoDataModelCopyWith<$Res>? get favouritesProductsInfo;
  $DetailProductDataModelCopyWith<$Res>? get detailsProduct;
  $BasketInfoItemDataModelCopyWith<$Res>? get itemInfo;
  $ProductDataModelCopyWith<$Res>? get product;
  $DeliveryDataModelCopyWith<$Res>? get deliveryInfo;
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

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoppingCart = null,
    Object? payments = null,
    Object? promoCodeMessage = null,
    Object? numberProducts = null,
    Object? amountPaid = null,
    Object? giftCards = null,
    Object? bonuses = null,
    Object? isLoadPaymentBonus = null,
    Object? isLoadPaymentGift = null,
    Object? isLoadPaymentPromoCode = null,
    Object? isActivePromoCode = null,
    Object? isLoadCreateOrder = null,
    Object? promoCode = null,
    Object? pickup = null,
    Object? receivingType = null,
    Object? boutiques = null,
    Object? isUponReceipt = null,
    Object? isPayInstallmentsSberbank = null,
    Object? listGiftCard = null,
    Object? address = null,
    Object? addressDelivery = null,
    Object? uidPickUpPoint = null,
    Object? paymentId = null,
    Object? typePay = null,
    Object? titlePromocode = null,
    Object? delivery = freezed,
    Object? creatOrderMessage = freezed,
    Object? paymentBonus = freezed,
    Object? paymentGift = freezed,
    Object? isRemovePromoCode = freezed,
    Object? favouritesProducts = null,
    Object? listProductsCode = null,
    Object? listProdcutsStyle = null,
    Object? listProdcutsAlso = null,
    Object? listProdcutsBrand = null,
    Object? listProdcutsComplect = null,
    Object? listSize = null,
    Object? favouritesProductsId = null,
    Object? isAuth = null,
    Object? isLoadGetSizeProduct = null,
    Object? isLoadAddProductToShopingCart = null,
    Object? isBlocBackBotton = null,
    Object? codeProduct = freezed,
    Object? selectSizeProduct = freezed,
    Object? isShoppingCart = freezed,
    Object? isShoppingCartDetailsProduct = freezed,
    Object? isAuthModel = freezed,
    Object? favouritesProductsInfo = freezed,
    Object? detailsProduct = freezed,
    Object? itemInfo = freezed,
    Object? product = freezed,
    Object? indexItem = freezed,
    Object? isLoadErrorButton = freezed,
    Object? errorMessage = freezed,
    Object? typeError = freezed,
    Object? isError = freezed,
    Object? titleScreen = freezed,
    Object? typeAddProductToShoppingCart = freezed,
    Object? identifierAddProductToShoppingCart = freezed,
    Object? isShopGetSizeProduct = freezed,
    Object? deliveryInfo = freezed,
    Object? boutique = freezed,
    Object? selectIndexAddress = freezed,
    Object? deleteIndexAddress = freezed,
    Object? isLoadDeleteAddress = freezed,
  }) {
    return _then(_$ProductsShoppingCartStateImpl(
      shoppingCart: null == shoppingCart
          ? _value.shoppingCart
          : shoppingCart // ignore: cast_nullable_to_non_nullable
              as BasketFullInfoDataModel,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentItemDataModel>,
      promoCodeMessage: null == promoCodeMessage
          ? _value.promoCodeMessage
          : promoCodeMessage // ignore: cast_nullable_to_non_nullable
              as String,
      numberProducts: null == numberProducts
          ? _value.numberProducts
          : numberProducts // ignore: cast_nullable_to_non_nullable
              as int,
      amountPaid: null == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int,
      giftCards: null == giftCards
          ? _value.giftCards
          : giftCards // ignore: cast_nullable_to_non_nullable
              as int,
      bonuses: null == bonuses
          ? _value.bonuses
          : bonuses // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadPaymentBonus: null == isLoadPaymentBonus
          ? _value.isLoadPaymentBonus
          : isLoadPaymentBonus // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadPaymentGift: null == isLoadPaymentGift
          ? _value.isLoadPaymentGift
          : isLoadPaymentGift // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadPaymentPromoCode: null == isLoadPaymentPromoCode
          ? _value.isLoadPaymentPromoCode
          : isLoadPaymentPromoCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivePromoCode: null == isActivePromoCode
          ? _value.isActivePromoCode
          : isActivePromoCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadCreateOrder: null == isLoadCreateOrder
          ? _value.isLoadCreateOrder
          : isLoadCreateOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      promoCode: null == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String,
      pickup: null == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String,
      receivingType: null == receivingType
          ? _value.receivingType
          : receivingType // ignore: cast_nullable_to_non_nullable
              as String,
      boutiques: null == boutiques
          ? _value.boutiques
          : boutiques // ignore: cast_nullable_to_non_nullable
              as BoutiquesDataModel,
      isUponReceipt: null == isUponReceipt
          ? _value.isUponReceipt
          : isUponReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      isPayInstallmentsSberbank: null == isPayInstallmentsSberbank
          ? _value.isPayInstallmentsSberbank
          : isPayInstallmentsSberbank // ignore: cast_nullable_to_non_nullable
              as bool,
      listGiftCard: null == listGiftCard
          ? _value._listGiftCard
          : listGiftCard // ignore: cast_nullable_to_non_nullable
              as List<BasketSertDeliveryRequest>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      addressDelivery: null == addressDelivery
          ? _value.addressDelivery
          : addressDelivery // ignore: cast_nullable_to_non_nullable
              as BasketAddressDataModel,
      uidPickUpPoint: null == uidPickUpPoint
          ? _value.uidPickUpPoint
          : uidPickUpPoint // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      typePay: null == typePay
          ? _value.typePay
          : typePay // ignore: cast_nullable_to_non_nullable
              as String,
      titlePromocode: null == titlePromocode
          ? _value.titlePromocode
          : titlePromocode // ignore: cast_nullable_to_non_nullable
              as String,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as int?,
      creatOrderMessage: freezed == creatOrderMessage
          ? _value.creatOrderMessage
          : creatOrderMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentBonus: freezed == paymentBonus
          ? _value.paymentBonus
          : paymentBonus // ignore: cast_nullable_to_non_nullable
              as PaymentBonusDataModel?,
      paymentGift: freezed == paymentGift
          ? _value.paymentGift
          : paymentGift // ignore: cast_nullable_to_non_nullable
              as PaymentBonusDataModel?,
      isRemovePromoCode: freezed == isRemovePromoCode
          ? _value.isRemovePromoCode
          : isRemovePromoCode // ignore: cast_nullable_to_non_nullable
              as bool?,
      favouritesProducts: null == favouritesProducts
          ? _value._favouritesProducts
          : favouritesProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
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
      listSize: null == listSize
          ? _value._listSize
          : listSize // ignore: cast_nullable_to_non_nullable
              as List<SkuProductDataModel>,
      favouritesProductsId: null == favouritesProductsId
          ? _value._favouritesProductsId
          : favouritesProductsId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isAuth: null == isAuth
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadGetSizeProduct: null == isLoadGetSizeProduct
          ? _value.isLoadGetSizeProduct
          : isLoadGetSizeProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadAddProductToShopingCart: null == isLoadAddProductToShopingCart
          ? _value.isLoadAddProductToShopingCart
          : isLoadAddProductToShopingCart // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocBackBotton: null == isBlocBackBotton
          ? _value.isBlocBackBotton
          : isBlocBackBotton // ignore: cast_nullable_to_non_nullable
              as bool,
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
      isShoppingCartDetailsProduct: freezed == isShoppingCartDetailsProduct
          ? _value.isShoppingCartDetailsProduct
          : isShoppingCartDetailsProduct // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAuthModel: freezed == isAuthModel
          ? _value.isAuthModel
          : isAuthModel // ignore: cast_nullable_to_non_nullable
              as bool?,
      favouritesProductsInfo: freezed == favouritesProductsInfo
          ? _value.favouritesProductsInfo
          : favouritesProductsInfo // ignore: cast_nullable_to_non_nullable
              as FavouritesCatalogInfoDataModel?,
      detailsProduct: freezed == detailsProduct
          ? _value.detailsProduct
          : detailsProduct // ignore: cast_nullable_to_non_nullable
              as DetailProductDataModel?,
      itemInfo: freezed == itemInfo
          ? _value.itemInfo
          : itemInfo // ignore: cast_nullable_to_non_nullable
              as BasketInfoItemDataModel?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel?,
      indexItem: freezed == indexItem
          ? _value.indexItem
          : indexItem // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoadErrorButton: freezed == isLoadErrorButton
          ? _value.isLoadErrorButton
          : isLoadErrorButton // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      typeError: freezed == typeError
          ? _value.typeError
          : typeError // ignore: cast_nullable_to_non_nullable
              as String?,
      isError: freezed == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
      titleScreen: freezed == titleScreen
          ? _value.titleScreen
          : titleScreen // ignore: cast_nullable_to_non_nullable
              as String?,
      typeAddProductToShoppingCart: freezed == typeAddProductToShoppingCart
          ? _value.typeAddProductToShoppingCart
          : typeAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String?,
      identifierAddProductToShoppingCart: freezed ==
              identifierAddProductToShoppingCart
          ? _value.identifierAddProductToShoppingCart
          : identifierAddProductToShoppingCart // ignore: cast_nullable_to_non_nullable
              as String?,
      isShopGetSizeProduct: freezed == isShopGetSizeProduct
          ? _value.isShopGetSizeProduct
          : isShopGetSizeProduct // ignore: cast_nullable_to_non_nullable
              as bool?,
      deliveryInfo: freezed == deliveryInfo
          ? _value.deliveryInfo
          : deliveryInfo // ignore: cast_nullable_to_non_nullable
              as DeliveryDataModel?,
      boutique: freezed == boutique
          ? _value.boutique
          : boutique // ignore: cast_nullable_to_non_nullable
              as BoutiqueDataModel?,
      selectIndexAddress: freezed == selectIndexAddress
          ? _value.selectIndexAddress
          : selectIndexAddress // ignore: cast_nullable_to_non_nullable
              as int?,
      deleteIndexAddress: freezed == deleteIndexAddress
          ? _value.deleteIndexAddress
          : deleteIndexAddress // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoadDeleteAddress: freezed == isLoadDeleteAddress
          ? _value.isLoadDeleteAddress
          : isLoadDeleteAddress // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasketFullInfoDataModelCopyWith<$Res> get shoppingCart {
    return $BasketFullInfoDataModelCopyWith<$Res>(_value.shoppingCart, (value) {
      return _then(_value.copyWith(shoppingCart: value));
    });
  }

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BoutiquesDataModelCopyWith<$Res> get boutiques {
    return $BoutiquesDataModelCopyWith<$Res>(_value.boutiques, (value) {
      return _then(_value.copyWith(boutiques: value));
    });
  }

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentBonusDataModelCopyWith<$Res>? get paymentBonus {
    if (_value.paymentBonus == null) {
      return null;
    }

    return $PaymentBonusDataModelCopyWith<$Res>(_value.paymentBonus!, (value) {
      return _then(_value.copyWith(paymentBonus: value));
    });
  }

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentBonusDataModelCopyWith<$Res>? get paymentGift {
    if (_value.paymentGift == null) {
      return null;
    }

    return $PaymentBonusDataModelCopyWith<$Res>(_value.paymentGift!, (value) {
      return _then(_value.copyWith(paymentGift: value));
    });
  }

  /// Create a copy of ShoppingCartState
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

  /// Create a copy of ShoppingCartState
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

  /// Create a copy of ShoppingCartState
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

  /// Create a copy of ShoppingCartState
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

  /// Create a copy of ShoppingCartState
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

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryDataModelCopyWith<$Res>? get deliveryInfo {
    if (_value.deliveryInfo == null) {
      return null;
    }

    return $DeliveryDataModelCopyWith<$Res>(_value.deliveryInfo!, (value) {
      return _then(_value.copyWith(deliveryInfo: value));
    });
  }
}

/// @nodoc

class _$ProductsShoppingCartStateImpl implements ProductsShoppingCartState {
  const _$ProductsShoppingCartStateImpl(
      {required this.shoppingCart,
      required final List<PaymentItemDataModel> payments,
      required this.promoCodeMessage,
      required this.numberProducts,
      required this.amountPaid,
      required this.giftCards,
      required this.bonuses,
      required this.isLoadPaymentBonus,
      required this.isLoadPaymentGift,
      required this.isLoadPaymentPromoCode,
      required this.isActivePromoCode,
      required this.isLoadCreateOrder,
      required this.promoCode,
      required this.pickup,
      required this.receivingType,
      required this.boutiques,
      required this.isUponReceipt,
      required this.isPayInstallmentsSberbank,
      required final List<BasketSertDeliveryRequest> listGiftCard,
      required this.address,
      required this.addressDelivery,
      required this.uidPickUpPoint,
      required this.paymentId,
      required this.typePay,
      required this.titlePromocode,
      this.delivery,
      this.creatOrderMessage,
      this.paymentBonus,
      this.paymentGift,
      this.isRemovePromoCode,
      required final List<ProductDataModel> favouritesProducts,
      required final List<String> listProductsCode,
      required final List<ProductDataModel> listProdcutsStyle,
      required final List<ProductDataModel> listProdcutsAlso,
      required final List<ProductDataModel> listProdcutsBrand,
      required final List<ProductDataModel> listProdcutsComplect,
      required final List<SkuProductDataModel> listSize,
      required final List<int> favouritesProductsId,
      required this.isAuth,
      required this.isLoadGetSizeProduct,
      required this.isLoadAddProductToShopingCart,
      required this.isBlocBackBotton,
      this.codeProduct,
      this.selectSizeProduct,
      this.isShoppingCart,
      this.isShoppingCartDetailsProduct,
      this.isAuthModel,
      this.favouritesProductsInfo,
      this.detailsProduct,
      this.itemInfo,
      this.product,
      this.indexItem,
      this.isLoadErrorButton,
      this.errorMessage,
      this.typeError,
      this.isError,
      this.titleScreen,
      this.typeAddProductToShoppingCart,
      this.identifierAddProductToShoppingCart,
      this.isShopGetSizeProduct,
      this.deliveryInfo,
      this.boutique,
      this.selectIndexAddress,
      this.deleteIndexAddress,
      this.isLoadDeleteAddress})
      : _payments = payments,
        _listGiftCard = listGiftCard,
        _favouritesProducts = favouritesProducts,
        _listProductsCode = listProductsCode,
        _listProdcutsStyle = listProdcutsStyle,
        _listProdcutsAlso = listProdcutsAlso,
        _listProdcutsBrand = listProdcutsBrand,
        _listProdcutsComplect = listProdcutsComplect,
        _listSize = listSize,
        _favouritesProductsId = favouritesProductsId;

  @override
  final BasketFullInfoDataModel shoppingCart;
  final List<PaymentItemDataModel> _payments;
  @override
  List<PaymentItemDataModel> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  final String promoCodeMessage;
  @override
  final int numberProducts;
  @override
  final int amountPaid;
  @override
  final int giftCards;
  @override
  final int bonuses;
  @override
  final bool isLoadPaymentBonus;
  @override
  final bool isLoadPaymentGift;
  @override
  final bool isLoadPaymentPromoCode;
  @override
  final bool isActivePromoCode;
  @override
  final bool isLoadCreateOrder;
  @override
  final String promoCode;
  @override
  final String pickup;
  @override
  final String receivingType;
  @override
  final BoutiquesDataModel boutiques;
  @override
  final bool isUponReceipt;
  @override
  final bool isPayInstallmentsSberbank;
  final List<BasketSertDeliveryRequest> _listGiftCard;
  @override
  List<BasketSertDeliveryRequest> get listGiftCard {
    if (_listGiftCard is EqualUnmodifiableListView) return _listGiftCard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listGiftCard);
  }

  @override
  final String address;
  @override
  final BasketAddressDataModel addressDelivery;
  @override
  final String uidPickUpPoint;
  @override
  final String paymentId;
  @override
  final String typePay;
  @override
  final String titlePromocode;
  @override
  final int? delivery;
  @override
  final String? creatOrderMessage;
  @override
  final PaymentBonusDataModel? paymentBonus;
  @override
  final PaymentBonusDataModel? paymentGift;
  @override
  final bool? isRemovePromoCode;
  final List<ProductDataModel> _favouritesProducts;
  @override
  List<ProductDataModel> get favouritesProducts {
    if (_favouritesProducts is EqualUnmodifiableListView)
      return _favouritesProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesProducts);
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

  final List<SkuProductDataModel> _listSize;
  @override
  List<SkuProductDataModel> get listSize {
    if (_listSize is EqualUnmodifiableListView) return _listSize;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSize);
  }

  final List<int> _favouritesProductsId;
  @override
  List<int> get favouritesProductsId {
    if (_favouritesProductsId is EqualUnmodifiableListView)
      return _favouritesProductsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesProductsId);
  }

  @override
  final bool isAuth;
  @override
  final bool isLoadGetSizeProduct;
  @override
  final bool isLoadAddProductToShopingCart;
  @override
  final bool isBlocBackBotton;
// нужна для блокировки навигации назад при переходе из каталога
  @override
  final String? codeProduct;
  @override
  final SkuProductDataModel? selectSizeProduct;
  @override
  final bool? isShoppingCart;
  @override
  final bool? isShoppingCartDetailsProduct;
  @override
  final bool? isAuthModel;
  @override
  final FavouritesCatalogInfoDataModel? favouritesProductsInfo;
  @override
  final DetailProductDataModel? detailsProduct;
  @override
  final BasketInfoItemDataModel? itemInfo;
  @override
  final ProductDataModel? product;
  @override
  final int? indexItem;
  @override
  final bool? isLoadErrorButton;
  @override
  final String? errorMessage;
  @override
  final String? typeError;
  @override
  final bool? isError;
  @override
  final String? titleScreen;
  @override
  final String? typeAddProductToShoppingCart;
  @override
  final String? identifierAddProductToShoppingCart;
  @override
  final bool? isShopGetSizeProduct;
  @override
  final DeliveryDataModel? deliveryInfo;
  @override
  final BoutiqueDataModel? boutique;
  @override
  final int? selectIndexAddress;
  @override
  final int? deleteIndexAddress;
  @override
  final bool? isLoadDeleteAddress;

  @override
  String toString() {
    return 'ShoppingCartState.productsShoppingCart(shoppingCart: $shoppingCart, payments: $payments, promoCodeMessage: $promoCodeMessage, numberProducts: $numberProducts, amountPaid: $amountPaid, giftCards: $giftCards, bonuses: $bonuses, isLoadPaymentBonus: $isLoadPaymentBonus, isLoadPaymentGift: $isLoadPaymentGift, isLoadPaymentPromoCode: $isLoadPaymentPromoCode, isActivePromoCode: $isActivePromoCode, isLoadCreateOrder: $isLoadCreateOrder, promoCode: $promoCode, pickup: $pickup, receivingType: $receivingType, boutiques: $boutiques, isUponReceipt: $isUponReceipt, isPayInstallmentsSberbank: $isPayInstallmentsSberbank, listGiftCard: $listGiftCard, address: $address, addressDelivery: $addressDelivery, uidPickUpPoint: $uidPickUpPoint, paymentId: $paymentId, typePay: $typePay, titlePromocode: $titlePromocode, delivery: $delivery, creatOrderMessage: $creatOrderMessage, paymentBonus: $paymentBonus, paymentGift: $paymentGift, isRemovePromoCode: $isRemovePromoCode, favouritesProducts: $favouritesProducts, listProductsCode: $listProductsCode, listProdcutsStyle: $listProdcutsStyle, listProdcutsAlso: $listProdcutsAlso, listProdcutsBrand: $listProdcutsBrand, listProdcutsComplect: $listProdcutsComplect, listSize: $listSize, favouritesProductsId: $favouritesProductsId, isAuth: $isAuth, isLoadGetSizeProduct: $isLoadGetSizeProduct, isLoadAddProductToShopingCart: $isLoadAddProductToShopingCart, isBlocBackBotton: $isBlocBackBotton, codeProduct: $codeProduct, selectSizeProduct: $selectSizeProduct, isShoppingCart: $isShoppingCart, isShoppingCartDetailsProduct: $isShoppingCartDetailsProduct, isAuthModel: $isAuthModel, favouritesProductsInfo: $favouritesProductsInfo, detailsProduct: $detailsProduct, itemInfo: $itemInfo, product: $product, indexItem: $indexItem, isLoadErrorButton: $isLoadErrorButton, errorMessage: $errorMessage, typeError: $typeError, isError: $isError, titleScreen: $titleScreen, typeAddProductToShoppingCart: $typeAddProductToShoppingCart, identifierAddProductToShoppingCart: $identifierAddProductToShoppingCart, isShopGetSizeProduct: $isShopGetSizeProduct, deliveryInfo: $deliveryInfo, boutique: $boutique, selectIndexAddress: $selectIndexAddress, deleteIndexAddress: $deleteIndexAddress, isLoadDeleteAddress: $isLoadDeleteAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsShoppingCartStateImpl &&
            (identical(other.shoppingCart, shoppingCart) ||
                other.shoppingCart == shoppingCart) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.promoCodeMessage, promoCodeMessage) ||
                other.promoCodeMessage == promoCodeMessage) &&
            (identical(other.numberProducts, numberProducts) ||
                other.numberProducts == numberProducts) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid) &&
            (identical(other.giftCards, giftCards) ||
                other.giftCards == giftCards) &&
            (identical(other.bonuses, bonuses) || other.bonuses == bonuses) &&
            (identical(other.isLoadPaymentBonus, isLoadPaymentBonus) ||
                other.isLoadPaymentBonus == isLoadPaymentBonus) &&
            (identical(other.isLoadPaymentGift, isLoadPaymentGift) ||
                other.isLoadPaymentGift == isLoadPaymentGift) &&
            (identical(other.isLoadPaymentPromoCode, isLoadPaymentPromoCode) ||
                other.isLoadPaymentPromoCode == isLoadPaymentPromoCode) &&
            (identical(other.isActivePromoCode, isActivePromoCode) ||
                other.isActivePromoCode == isActivePromoCode) &&
            (identical(other.isLoadCreateOrder, isLoadCreateOrder) ||
                other.isLoadCreateOrder == isLoadCreateOrder) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.receivingType, receivingType) ||
                other.receivingType == receivingType) &&
            (identical(other.boutiques, boutiques) ||
                other.boutiques == boutiques) &&
            (identical(other.isUponReceipt, isUponReceipt) ||
                other.isUponReceipt == isUponReceipt) &&
            (identical(other.isPayInstallmentsSberbank, isPayInstallmentsSberbank) ||
                other.isPayInstallmentsSberbank == isPayInstallmentsSberbank) &&
            const DeepCollectionEquality()
                .equals(other._listGiftCard, _listGiftCard) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressDelivery, addressDelivery) ||
                other.addressDelivery == addressDelivery) &&
            (identical(other.uidPickUpPoint, uidPickUpPoint) ||
                other.uidPickUpPoint == uidPickUpPoint) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.typePay, typePay) || other.typePay == typePay) &&
            (identical(other.titlePromocode, titlePromocode) ||
                other.titlePromocode == titlePromocode) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.creatOrderMessage, creatOrderMessage) ||
                other.creatOrderMessage == creatOrderMessage) &&
            (identical(other.paymentBonus, paymentBonus) ||
                other.paymentBonus == paymentBonus) &&
            (identical(other.paymentGift, paymentGift) ||
                other.paymentGift == paymentGift) &&
            (identical(other.isRemovePromoCode, isRemovePromoCode) ||
                other.isRemovePromoCode == isRemovePromoCode) &&
            const DeepCollectionEquality()
                .equals(other._favouritesProducts, _favouritesProducts) &&
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
            const DeepCollectionEquality().equals(other._listSize, _listSize) &&
            const DeepCollectionEquality()
                .equals(other._favouritesProductsId, _favouritesProductsId) &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth) &&
            (identical(other.isLoadGetSizeProduct, isLoadGetSizeProduct) ||
                other.isLoadGetSizeProduct == isLoadGetSizeProduct) &&
            (identical(other.isLoadAddProductToShopingCart, isLoadAddProductToShopingCart) ||
                other.isLoadAddProductToShopingCart ==
                    isLoadAddProductToShopingCart) &&
            (identical(other.isBlocBackBotton, isBlocBackBotton) ||
                other.isBlocBackBotton == isBlocBackBotton) &&
            (identical(other.codeProduct, codeProduct) ||
                other.codeProduct == codeProduct) &&
            (identical(other.selectSizeProduct, selectSizeProduct) || other.selectSizeProduct == selectSizeProduct) &&
            (identical(other.isShoppingCart, isShoppingCart) || other.isShoppingCart == isShoppingCart) &&
            (identical(other.isShoppingCartDetailsProduct, isShoppingCartDetailsProduct) || other.isShoppingCartDetailsProduct == isShoppingCartDetailsProduct) &&
            (identical(other.isAuthModel, isAuthModel) || other.isAuthModel == isAuthModel) &&
            (identical(other.favouritesProductsInfo, favouritesProductsInfo) || other.favouritesProductsInfo == favouritesProductsInfo) &&
            (identical(other.detailsProduct, detailsProduct) || other.detailsProduct == detailsProduct) &&
            (identical(other.itemInfo, itemInfo) || other.itemInfo == itemInfo) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.indexItem, indexItem) || other.indexItem == indexItem) &&
            (identical(other.isLoadErrorButton, isLoadErrorButton) || other.isLoadErrorButton == isLoadErrorButton) &&
            (identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage) &&
            (identical(other.typeError, typeError) || other.typeError == typeError) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.titleScreen, titleScreen) || other.titleScreen == titleScreen) &&
            (identical(other.typeAddProductToShoppingCart, typeAddProductToShoppingCart) || other.typeAddProductToShoppingCart == typeAddProductToShoppingCart) &&
            (identical(other.identifierAddProductToShoppingCart, identifierAddProductToShoppingCart) || other.identifierAddProductToShoppingCart == identifierAddProductToShoppingCart) &&
            (identical(other.isShopGetSizeProduct, isShopGetSizeProduct) || other.isShopGetSizeProduct == isShopGetSizeProduct) &&
            (identical(other.deliveryInfo, deliveryInfo) || other.deliveryInfo == deliveryInfo) &&
            (identical(other.boutique, boutique) || other.boutique == boutique) &&
            (identical(other.selectIndexAddress, selectIndexAddress) || other.selectIndexAddress == selectIndexAddress) &&
            (identical(other.deleteIndexAddress, deleteIndexAddress) || other.deleteIndexAddress == deleteIndexAddress) &&
            (identical(other.isLoadDeleteAddress, isLoadDeleteAddress) || other.isLoadDeleteAddress == isLoadDeleteAddress));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        shoppingCart,
        const DeepCollectionEquality().hash(_payments),
        promoCodeMessage,
        numberProducts,
        amountPaid,
        giftCards,
        bonuses,
        isLoadPaymentBonus,
        isLoadPaymentGift,
        isLoadPaymentPromoCode,
        isActivePromoCode,
        isLoadCreateOrder,
        promoCode,
        pickup,
        receivingType,
        boutiques,
        isUponReceipt,
        isPayInstallmentsSberbank,
        const DeepCollectionEquality().hash(_listGiftCard),
        address,
        addressDelivery,
        uidPickUpPoint,
        paymentId,
        typePay,
        titlePromocode,
        delivery,
        creatOrderMessage,
        paymentBonus,
        paymentGift,
        isRemovePromoCode,
        const DeepCollectionEquality().hash(_favouritesProducts),
        const DeepCollectionEquality().hash(_listProductsCode),
        const DeepCollectionEquality().hash(_listProdcutsStyle),
        const DeepCollectionEquality().hash(_listProdcutsAlso),
        const DeepCollectionEquality().hash(_listProdcutsBrand),
        const DeepCollectionEquality().hash(_listProdcutsComplect),
        const DeepCollectionEquality().hash(_listSize),
        const DeepCollectionEquality().hash(_favouritesProductsId),
        isAuth,
        isLoadGetSizeProduct,
        isLoadAddProductToShopingCart,
        isBlocBackBotton,
        codeProduct,
        selectSizeProduct,
        isShoppingCart,
        isShoppingCartDetailsProduct,
        isAuthModel,
        favouritesProductsInfo,
        detailsProduct,
        itemInfo,
        product,
        indexItem,
        isLoadErrorButton,
        errorMessage,
        typeError,
        isError,
        titleScreen,
        typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart,
        isShopGetSizeProduct,
        deliveryInfo,
        boutique,
        selectIndexAddress,
        deleteIndexAddress,
        isLoadDeleteAddress
      ]);

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function() loadErrorButton,
    required TResult Function(
            String errorMessage,
            BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart,
            String? titleScreen)
        error,
    required TResult Function(int orderId) createOrderSuccessfully,
    required TResult Function() openSoppingCart,
    required TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)
        getSizeProduct,
    required TResult Function(String code) addProductToSoppingCart,
    required TResult Function(int bonuses) openShowDialog,
    required TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)
        productsShoppingCart,
  }) {
    return productsShoppingCart(
        shoppingCart,
        payments,
        promoCodeMessage,
        numberProducts,
        amountPaid,
        giftCards,
        bonuses,
        isLoadPaymentBonus,
        isLoadPaymentGift,
        isLoadPaymentPromoCode,
        isActivePromoCode,
        isLoadCreateOrder,
        promoCode,
        pickup,
        receivingType,
        boutiques,
        isUponReceipt,
        isPayInstallmentsSberbank,
        listGiftCard,
        address,
        addressDelivery,
        uidPickUpPoint,
        paymentId,
        typePay,
        titlePromocode,
        delivery,
        creatOrderMessage,
        paymentBonus,
        paymentGift,
        isRemovePromoCode,
        favouritesProducts,
        listProductsCode,
        listProdcutsStyle,
        listProdcutsAlso,
        listProdcutsBrand,
        listProdcutsComplect,
        listSize,
        favouritesProductsId,
        isAuth,
        isLoadGetSizeProduct,
        isLoadAddProductToShopingCart,
        isBlocBackBotton,
        codeProduct,
        selectSizeProduct,
        isShoppingCart,
        isShoppingCartDetailsProduct,
        isAuthModel,
        favouritesProductsInfo,
        detailsProduct,
        itemInfo,
        product,
        indexItem,
        isLoadErrorButton,
        errorMessage,
        typeError,
        isError,
        titleScreen,
        typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart,
        isShopGetSizeProduct,
        deliveryInfo,
        boutique,
        selectIndexAddress,
        deleteIndexAddress,
        isLoadDeleteAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult? Function(int orderId)? createOrderSuccessfully,
    TResult? Function()? openSoppingCart,
    TResult? Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult? Function(String code)? addProductToSoppingCart,
    TResult? Function(int bonuses)? openShowDialog,
    TResult? Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
  }) {
    return productsShoppingCart?.call(
        shoppingCart,
        payments,
        promoCodeMessage,
        numberProducts,
        amountPaid,
        giftCards,
        bonuses,
        isLoadPaymentBonus,
        isLoadPaymentGift,
        isLoadPaymentPromoCode,
        isActivePromoCode,
        isLoadCreateOrder,
        promoCode,
        pickup,
        receivingType,
        boutiques,
        isUponReceipt,
        isPayInstallmentsSberbank,
        listGiftCard,
        address,
        addressDelivery,
        uidPickUpPoint,
        paymentId,
        typePay,
        titlePromocode,
        delivery,
        creatOrderMessage,
        paymentBonus,
        paymentGift,
        isRemovePromoCode,
        favouritesProducts,
        listProductsCode,
        listProdcutsStyle,
        listProdcutsAlso,
        listProdcutsBrand,
        listProdcutsComplect,
        listSize,
        favouritesProductsId,
        isAuth,
        isLoadGetSizeProduct,
        isLoadAddProductToShopingCart,
        isBlocBackBotton,
        codeProduct,
        selectSizeProduct,
        isShoppingCart,
        isShoppingCartDetailsProduct,
        isAuthModel,
        favouritesProductsInfo,
        detailsProduct,
        itemInfo,
        product,
        indexItem,
        isLoadErrorButton,
        errorMessage,
        typeError,
        isError,
        titleScreen,
        typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart,
        isShopGetSizeProduct,
        deliveryInfo,
        boutique,
        selectIndexAddress,
        deleteIndexAddress,
        isLoadDeleteAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage, BasketInfoItemDataModel? item,
            String? typeAddProductToShoppingCart, String? titleScreen)?
        error,
    TResult Function(int orderId)? createOrderSuccessfully,
    TResult Function()? openSoppingCart,
    TResult Function(String code, List<SkuProductDataModel> listSize,
            List<SkuProductDataModel> listSizeToSoppingCart)?
        getSizeProduct,
    TResult Function(String code)? addProductToSoppingCart,
    TResult Function(int bonuses)? openShowDialog,
    TResult Function(
            BasketFullInfoDataModel shoppingCart,
            List<PaymentItemDataModel> payments,
            String promoCodeMessage,
            int numberProducts,
            int amountPaid,
            int giftCards,
            int bonuses,
            bool isLoadPaymentBonus,
            bool isLoadPaymentGift,
            bool isLoadPaymentPromoCode,
            bool isActivePromoCode,
            bool isLoadCreateOrder,
            String promoCode,
            String pickup,
            String receivingType,
            BoutiquesDataModel boutiques,
            bool isUponReceipt,
            bool isPayInstallmentsSberbank,
            List<BasketSertDeliveryRequest> listGiftCard,
            String address,
            BasketAddressDataModel addressDelivery,
            String uidPickUpPoint,
            String paymentId,
            String typePay,
            String titlePromocode,
            int? delivery,
            String? creatOrderMessage,
            PaymentBonusDataModel? paymentBonus,
            PaymentBonusDataModel? paymentGift,
            bool? isRemovePromoCode,
            List<ProductDataModel> favouritesProducts,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            List<ProductDataModel> listProdcutsComplect,
            List<SkuProductDataModel> listSize,
            List<int> favouritesProductsId,
            bool isAuth,
            bool isLoadGetSizeProduct,
            bool isLoadAddProductToShopingCart,
            bool isBlocBackBotton,
            String? codeProduct,
            SkuProductDataModel? selectSizeProduct,
            bool? isShoppingCart,
            bool? isShoppingCartDetailsProduct,
            bool? isAuthModel,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            BasketInfoItemDataModel? itemInfo,
            ProductDataModel? product,
            int? indexItem,
            bool? isLoadErrorButton,
            String? errorMessage,
            String? typeError,
            bool? isError,
            String? titleScreen,
            String? typeAddProductToShoppingCart,
            String? identifierAddProductToShoppingCart,
            bool? isShopGetSizeProduct,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            bool? isLoadDeleteAddress)?
        productsShoppingCart,
    required TResult orElse(),
  }) {
    if (productsShoppingCart != null) {
      return productsShoppingCart(
          shoppingCart,
          payments,
          promoCodeMessage,
          numberProducts,
          amountPaid,
          giftCards,
          bonuses,
          isLoadPaymentBonus,
          isLoadPaymentGift,
          isLoadPaymentPromoCode,
          isActivePromoCode,
          isLoadCreateOrder,
          promoCode,
          pickup,
          receivingType,
          boutiques,
          isUponReceipt,
          isPayInstallmentsSberbank,
          listGiftCard,
          address,
          addressDelivery,
          uidPickUpPoint,
          paymentId,
          typePay,
          titlePromocode,
          delivery,
          creatOrderMessage,
          paymentBonus,
          paymentGift,
          isRemovePromoCode,
          favouritesProducts,
          listProductsCode,
          listProdcutsStyle,
          listProdcutsAlso,
          listProdcutsBrand,
          listProdcutsComplect,
          listSize,
          favouritesProductsId,
          isAuth,
          isLoadGetSizeProduct,
          isLoadAddProductToShopingCart,
          isBlocBackBotton,
          codeProduct,
          selectSizeProduct,
          isShoppingCart,
          isShoppingCartDetailsProduct,
          isAuthModel,
          favouritesProductsInfo,
          detailsProduct,
          itemInfo,
          product,
          indexItem,
          isLoadErrorButton,
          errorMessage,
          typeError,
          isError,
          titleScreen,
          typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart,
          isShopGetSizeProduct,
          deliveryInfo,
          boutique,
          selectIndexAddress,
          deleteIndexAddress,
          isLoadDeleteAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitShoppingCartState value) init,
    required TResult Function(LoadingShoppingCartState value) load,
    required TResult Function(LoadingErrorButtonShoppingCartState value)
        loadErrorButton,
    required TResult Function(ErrorShoppingCartState value) error,
    required TResult Function(CreateOrderSuccessfullyShoppingCartState value)
        createOrderSuccessfully,
    required TResult Function(OpenSoppingCartShoppingCartState value)
        openSoppingCart,
    required TResult Function(GetSizeProductShoppingCartState value)
        getSizeProduct,
    required TResult Function(AddProductShoppingCartState value)
        addProductToSoppingCart,
    required TResult Function(OpenShowDialogShoppingCartState value)
        openShowDialog,
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
    TResult? Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult? Function(ErrorShoppingCartState value)? error,
    TResult? Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult? Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult? Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult? Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult? Function(OpenShowDialogShoppingCartState value)? openShowDialog,
    TResult? Function(ProductsShoppingCartState value)? productsShoppingCart,
  }) {
    return productsShoppingCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitShoppingCartState value)? init,
    TResult Function(LoadingShoppingCartState value)? load,
    TResult Function(LoadingErrorButtonShoppingCartState value)?
        loadErrorButton,
    TResult Function(ErrorShoppingCartState value)? error,
    TResult Function(CreateOrderSuccessfullyShoppingCartState value)?
        createOrderSuccessfully,
    TResult Function(OpenSoppingCartShoppingCartState value)? openSoppingCart,
    TResult Function(GetSizeProductShoppingCartState value)? getSizeProduct,
    TResult Function(AddProductShoppingCartState value)?
        addProductToSoppingCart,
    TResult Function(OpenShowDialogShoppingCartState value)? openShowDialog,
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
      {required final BasketFullInfoDataModel shoppingCart,
      required final List<PaymentItemDataModel> payments,
      required final String promoCodeMessage,
      required final int numberProducts,
      required final int amountPaid,
      required final int giftCards,
      required final int bonuses,
      required final bool isLoadPaymentBonus,
      required final bool isLoadPaymentGift,
      required final bool isLoadPaymentPromoCode,
      required final bool isActivePromoCode,
      required final bool isLoadCreateOrder,
      required final String promoCode,
      required final String pickup,
      required final String receivingType,
      required final BoutiquesDataModel boutiques,
      required final bool isUponReceipt,
      required final bool isPayInstallmentsSberbank,
      required final List<BasketSertDeliveryRequest> listGiftCard,
      required final String address,
      required final BasketAddressDataModel addressDelivery,
      required final String uidPickUpPoint,
      required final String paymentId,
      required final String typePay,
      required final String titlePromocode,
      final int? delivery,
      final String? creatOrderMessage,
      final PaymentBonusDataModel? paymentBonus,
      final PaymentBonusDataModel? paymentGift,
      final bool? isRemovePromoCode,
      required final List<ProductDataModel> favouritesProducts,
      required final List<String> listProductsCode,
      required final List<ProductDataModel> listProdcutsStyle,
      required final List<ProductDataModel> listProdcutsAlso,
      required final List<ProductDataModel> listProdcutsBrand,
      required final List<ProductDataModel> listProdcutsComplect,
      required final List<SkuProductDataModel> listSize,
      required final List<int> favouritesProductsId,
      required final bool isAuth,
      required final bool isLoadGetSizeProduct,
      required final bool isLoadAddProductToShopingCart,
      required final bool isBlocBackBotton,
      final String? codeProduct,
      final SkuProductDataModel? selectSizeProduct,
      final bool? isShoppingCart,
      final bool? isShoppingCartDetailsProduct,
      final bool? isAuthModel,
      final FavouritesCatalogInfoDataModel? favouritesProductsInfo,
      final DetailProductDataModel? detailsProduct,
      final BasketInfoItemDataModel? itemInfo,
      final ProductDataModel? product,
      final int? indexItem,
      final bool? isLoadErrorButton,
      final String? errorMessage,
      final String? typeError,
      final bool? isError,
      final String? titleScreen,
      final String? typeAddProductToShoppingCart,
      final String? identifierAddProductToShoppingCart,
      final bool? isShopGetSizeProduct,
      final DeliveryDataModel? deliveryInfo,
      final BoutiqueDataModel? boutique,
      final int? selectIndexAddress,
      final int? deleteIndexAddress,
      final bool? isLoadDeleteAddress}) = _$ProductsShoppingCartStateImpl;

  BasketFullInfoDataModel get shoppingCart;
  List<PaymentItemDataModel> get payments;
  String get promoCodeMessage;
  int get numberProducts;
  int get amountPaid;
  int get giftCards;
  int get bonuses;
  bool get isLoadPaymentBonus;
  bool get isLoadPaymentGift;
  bool get isLoadPaymentPromoCode;
  bool get isActivePromoCode;
  bool get isLoadCreateOrder;
  String get promoCode;
  String get pickup;
  String get receivingType;
  BoutiquesDataModel get boutiques;
  bool get isUponReceipt;
  bool get isPayInstallmentsSberbank;
  List<BasketSertDeliveryRequest> get listGiftCard;
  String get address;
  BasketAddressDataModel get addressDelivery;
  String get uidPickUpPoint;
  String get paymentId;
  String get typePay;
  String get titlePromocode;
  int? get delivery;
  String? get creatOrderMessage;
  PaymentBonusDataModel? get paymentBonus;
  PaymentBonusDataModel? get paymentGift;
  bool? get isRemovePromoCode;
  List<ProductDataModel> get favouritesProducts;
  List<String> get listProductsCode;
  List<ProductDataModel> get listProdcutsStyle;
  List<ProductDataModel> get listProdcutsAlso;
  List<ProductDataModel> get listProdcutsBrand;
  List<ProductDataModel> get listProdcutsComplect;
  List<SkuProductDataModel> get listSize;
  List<int> get favouritesProductsId;
  bool get isAuth;
  bool get isLoadGetSizeProduct;
  bool get isLoadAddProductToShopingCart;
  bool
      get isBlocBackBotton; // нужна для блокировки навигации назад при переходе из каталога
  String? get codeProduct;
  SkuProductDataModel? get selectSizeProduct;
  bool? get isShoppingCart;
  bool? get isShoppingCartDetailsProduct;
  bool? get isAuthModel;
  FavouritesCatalogInfoDataModel? get favouritesProductsInfo;
  DetailProductDataModel? get detailsProduct;
  BasketInfoItemDataModel? get itemInfo;
  ProductDataModel? get product;
  int? get indexItem;
  bool? get isLoadErrorButton;
  String? get errorMessage;
  String? get typeError;
  bool? get isError;
  String? get titleScreen;
  String? get typeAddProductToShoppingCart;
  String? get identifierAddProductToShoppingCart;
  bool? get isShopGetSizeProduct;
  DeliveryDataModel? get deliveryInfo;
  BoutiqueDataModel? get boutique;
  int? get selectIndexAddress;
  int? get deleteIndexAddress;
  bool? get isLoadDeleteAddress;

  /// Create a copy of ShoppingCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsShoppingCartStateImplCopyWith<_$ProductsShoppingCartStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
