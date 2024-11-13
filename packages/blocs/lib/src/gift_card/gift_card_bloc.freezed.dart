// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GiftCardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isNotification, String searchQuery, String? messageId)
        preloadData,
    required TResult Function(String typeGiftCard) changeTypeGiftCard,
    required TResult Function(int amountPaid) changeAmountPaid,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(PaymentItemDataModel typePay) changePaymentType,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult? Function(String typeGiftCard)? changeTypeGiftCard,
    TResult? Function(int amountPaid)? changeAmountPaid,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult Function(String typeGiftCard)? changeTypeGiftCard,
    TResult Function(int amountPaid)? changeAmountPaid,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(ChangeTypeGiftCardGiftCardEvent value)
        changeTypeGiftCard,
    required TResult Function(ChangeAmountPaidGiftCardEvent value)
        changeAmountPaid,
    required TResult Function(ChangeReceivingTypeGiftCardEvent value)
        changeReceivingType,
    required TResult Function(AddAddressDeliveryGiftCardEvent value)
        addAddressDelivery,
    required TResult Function(SelectAddressDeliveryGiftCardEvent value)
        selectAddressDelivery,
    required TResult Function(DeleteAddressDeliveryGiftCardEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangeUidPickUpPointGiftCardEvent value)
        changeUidPickUpPoint,
    required TResult Function(ChangePaymentTypeGiftCardEvent value)
        changePaymentType,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(ChangeTypeGiftCardGiftCardEvent value)?
        changeTypeGiftCard,
    TResult? Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult? Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult? Function(AddAddressDeliveryGiftCardEvent value)?
        addAddressDelivery,
    TResult? Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult? Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult? Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(ChangeTypeGiftCardGiftCardEvent value)? changeTypeGiftCard,
    TResult Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult Function(AddAddressDeliveryGiftCardEvent value)? addAddressDelivery,
    TResult Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult Function(CreateOrderGiftCardEvent value)? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardEventCopyWith<$Res> {
  factory $GiftCardEventCopyWith(
          GiftCardEvent value, $Res Function(GiftCardEvent) then) =
      _$GiftCardEventCopyWithImpl<$Res, GiftCardEvent>;
}

/// @nodoc
class _$GiftCardEventCopyWithImpl<$Res, $Val extends GiftCardEvent>
    implements $GiftCardEventCopyWith<$Res> {
  _$GiftCardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitGiftCardEventImplCopyWith<$Res> {
  factory _$$InitGiftCardEventImplCopyWith(_$InitGiftCardEventImpl value,
          $Res Function(_$InitGiftCardEventImpl) then) =
      __$$InitGiftCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isNotification, String searchQuery, String? messageId});
}

/// @nodoc
class __$$InitGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res, _$InitGiftCardEventImpl>
    implements _$$InitGiftCardEventImplCopyWith<$Res> {
  __$$InitGiftCardEventImplCopyWithImpl(_$InitGiftCardEventImpl _value,
      $Res Function(_$InitGiftCardEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNotification = null,
    Object? searchQuery = null,
    Object? messageId = freezed,
  }) {
    return _then(_$InitGiftCardEventImpl(
      isNotification: null == isNotification
          ? _value.isNotification
          : isNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitGiftCardEventImpl implements InitGiftCardEvent {
  const _$InitGiftCardEventImpl(
      {required this.isNotification,
      required this.searchQuery,
      this.messageId});

  @override
  final bool isNotification;
  @override
  final String searchQuery;
  @override
  final String? messageId;

  @override
  String toString() {
    return 'GiftCardEvent.preloadData(isNotification: $isNotification, searchQuery: $searchQuery, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitGiftCardEventImpl &&
            (identical(other.isNotification, isNotification) ||
                other.isNotification == isNotification) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isNotification, searchQuery, messageId);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitGiftCardEventImplCopyWith<_$InitGiftCardEventImpl> get copyWith =>
      __$$InitGiftCardEventImplCopyWithImpl<_$InitGiftCardEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isNotification, String searchQuery, String? messageId)
        preloadData,
    required TResult Function(String typeGiftCard) changeTypeGiftCard,
    required TResult Function(int amountPaid) changeAmountPaid,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(PaymentItemDataModel typePay) changePaymentType,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) {
    return preloadData(isNotification, searchQuery, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult? Function(String typeGiftCard)? changeTypeGiftCard,
    TResult? Function(int amountPaid)? changeAmountPaid,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) {
    return preloadData?.call(isNotification, searchQuery, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult Function(String typeGiftCard)? changeTypeGiftCard,
    TResult Function(int amountPaid)? changeAmountPaid,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(isNotification, searchQuery, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(ChangeTypeGiftCardGiftCardEvent value)
        changeTypeGiftCard,
    required TResult Function(ChangeAmountPaidGiftCardEvent value)
        changeAmountPaid,
    required TResult Function(ChangeReceivingTypeGiftCardEvent value)
        changeReceivingType,
    required TResult Function(AddAddressDeliveryGiftCardEvent value)
        addAddressDelivery,
    required TResult Function(SelectAddressDeliveryGiftCardEvent value)
        selectAddressDelivery,
    required TResult Function(DeleteAddressDeliveryGiftCardEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangeUidPickUpPointGiftCardEvent value)
        changeUidPickUpPoint,
    required TResult Function(ChangePaymentTypeGiftCardEvent value)
        changePaymentType,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(ChangeTypeGiftCardGiftCardEvent value)?
        changeTypeGiftCard,
    TResult? Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult? Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult? Function(AddAddressDeliveryGiftCardEvent value)?
        addAddressDelivery,
    TResult? Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult? Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult? Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(ChangeTypeGiftCardGiftCardEvent value)? changeTypeGiftCard,
    TResult Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult Function(AddAddressDeliveryGiftCardEvent value)? addAddressDelivery,
    TResult Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult Function(CreateOrderGiftCardEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class InitGiftCardEvent implements GiftCardEvent {
  const factory InitGiftCardEvent(
      {required final bool isNotification,
      required final String searchQuery,
      final String? messageId}) = _$InitGiftCardEventImpl;

  bool get isNotification;
  String get searchQuery;
  String? get messageId;

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitGiftCardEventImplCopyWith<_$InitGiftCardEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTypeGiftCardGiftCardEventImplCopyWith<$Res> {
  factory _$$ChangeTypeGiftCardGiftCardEventImplCopyWith(
          _$ChangeTypeGiftCardGiftCardEventImpl value,
          $Res Function(_$ChangeTypeGiftCardGiftCardEventImpl) then) =
      __$$ChangeTypeGiftCardGiftCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String typeGiftCard});
}

/// @nodoc
class __$$ChangeTypeGiftCardGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res,
        _$ChangeTypeGiftCardGiftCardEventImpl>
    implements _$$ChangeTypeGiftCardGiftCardEventImplCopyWith<$Res> {
  __$$ChangeTypeGiftCardGiftCardEventImplCopyWithImpl(
      _$ChangeTypeGiftCardGiftCardEventImpl _value,
      $Res Function(_$ChangeTypeGiftCardGiftCardEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeGiftCard = null,
  }) {
    return _then(_$ChangeTypeGiftCardGiftCardEventImpl(
      typeGiftCard: null == typeGiftCard
          ? _value.typeGiftCard
          : typeGiftCard // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeTypeGiftCardGiftCardEventImpl
    implements ChangeTypeGiftCardGiftCardEvent {
  const _$ChangeTypeGiftCardGiftCardEventImpl({required this.typeGiftCard});

  @override
  final String typeGiftCard;

  @override
  String toString() {
    return 'GiftCardEvent.changeTypeGiftCard(typeGiftCard: $typeGiftCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTypeGiftCardGiftCardEventImpl &&
            (identical(other.typeGiftCard, typeGiftCard) ||
                other.typeGiftCard == typeGiftCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeGiftCard);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTypeGiftCardGiftCardEventImplCopyWith<
          _$ChangeTypeGiftCardGiftCardEventImpl>
      get copyWith => __$$ChangeTypeGiftCardGiftCardEventImplCopyWithImpl<
          _$ChangeTypeGiftCardGiftCardEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isNotification, String searchQuery, String? messageId)
        preloadData,
    required TResult Function(String typeGiftCard) changeTypeGiftCard,
    required TResult Function(int amountPaid) changeAmountPaid,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(PaymentItemDataModel typePay) changePaymentType,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) {
    return changeTypeGiftCard(typeGiftCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult? Function(String typeGiftCard)? changeTypeGiftCard,
    TResult? Function(int amountPaid)? changeAmountPaid,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) {
    return changeTypeGiftCard?.call(typeGiftCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult Function(String typeGiftCard)? changeTypeGiftCard,
    TResult Function(int amountPaid)? changeAmountPaid,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
    required TResult orElse(),
  }) {
    if (changeTypeGiftCard != null) {
      return changeTypeGiftCard(typeGiftCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(ChangeTypeGiftCardGiftCardEvent value)
        changeTypeGiftCard,
    required TResult Function(ChangeAmountPaidGiftCardEvent value)
        changeAmountPaid,
    required TResult Function(ChangeReceivingTypeGiftCardEvent value)
        changeReceivingType,
    required TResult Function(AddAddressDeliveryGiftCardEvent value)
        addAddressDelivery,
    required TResult Function(SelectAddressDeliveryGiftCardEvent value)
        selectAddressDelivery,
    required TResult Function(DeleteAddressDeliveryGiftCardEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangeUidPickUpPointGiftCardEvent value)
        changeUidPickUpPoint,
    required TResult Function(ChangePaymentTypeGiftCardEvent value)
        changePaymentType,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) {
    return changeTypeGiftCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(ChangeTypeGiftCardGiftCardEvent value)?
        changeTypeGiftCard,
    TResult? Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult? Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult? Function(AddAddressDeliveryGiftCardEvent value)?
        addAddressDelivery,
    TResult? Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult? Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult? Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) {
    return changeTypeGiftCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(ChangeTypeGiftCardGiftCardEvent value)? changeTypeGiftCard,
    TResult Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult Function(AddAddressDeliveryGiftCardEvent value)? addAddressDelivery,
    TResult Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult Function(CreateOrderGiftCardEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (changeTypeGiftCard != null) {
      return changeTypeGiftCard(this);
    }
    return orElse();
  }
}

abstract class ChangeTypeGiftCardGiftCardEvent implements GiftCardEvent {
  const factory ChangeTypeGiftCardGiftCardEvent(
          {required final String typeGiftCard}) =
      _$ChangeTypeGiftCardGiftCardEventImpl;

  String get typeGiftCard;

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTypeGiftCardGiftCardEventImplCopyWith<
          _$ChangeTypeGiftCardGiftCardEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAmountPaidGiftCardEventImplCopyWith<$Res> {
  factory _$$ChangeAmountPaidGiftCardEventImplCopyWith(
          _$ChangeAmountPaidGiftCardEventImpl value,
          $Res Function(_$ChangeAmountPaidGiftCardEventImpl) then) =
      __$$ChangeAmountPaidGiftCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int amountPaid});
}

/// @nodoc
class __$$ChangeAmountPaidGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res,
        _$ChangeAmountPaidGiftCardEventImpl>
    implements _$$ChangeAmountPaidGiftCardEventImplCopyWith<$Res> {
  __$$ChangeAmountPaidGiftCardEventImplCopyWithImpl(
      _$ChangeAmountPaidGiftCardEventImpl _value,
      $Res Function(_$ChangeAmountPaidGiftCardEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountPaid = null,
  }) {
    return _then(_$ChangeAmountPaidGiftCardEventImpl(
      amountPaid: null == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeAmountPaidGiftCardEventImpl
    implements ChangeAmountPaidGiftCardEvent {
  const _$ChangeAmountPaidGiftCardEventImpl({required this.amountPaid});

  @override
  final int amountPaid;

  @override
  String toString() {
    return 'GiftCardEvent.changeAmountPaid(amountPaid: $amountPaid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAmountPaidGiftCardEventImpl &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountPaid);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAmountPaidGiftCardEventImplCopyWith<
          _$ChangeAmountPaidGiftCardEventImpl>
      get copyWith => __$$ChangeAmountPaidGiftCardEventImplCopyWithImpl<
          _$ChangeAmountPaidGiftCardEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isNotification, String searchQuery, String? messageId)
        preloadData,
    required TResult Function(String typeGiftCard) changeTypeGiftCard,
    required TResult Function(int amountPaid) changeAmountPaid,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(PaymentItemDataModel typePay) changePaymentType,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) {
    return changeAmountPaid(amountPaid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult? Function(String typeGiftCard)? changeTypeGiftCard,
    TResult? Function(int amountPaid)? changeAmountPaid,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) {
    return changeAmountPaid?.call(amountPaid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult Function(String typeGiftCard)? changeTypeGiftCard,
    TResult Function(int amountPaid)? changeAmountPaid,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
    required TResult orElse(),
  }) {
    if (changeAmountPaid != null) {
      return changeAmountPaid(amountPaid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(ChangeTypeGiftCardGiftCardEvent value)
        changeTypeGiftCard,
    required TResult Function(ChangeAmountPaidGiftCardEvent value)
        changeAmountPaid,
    required TResult Function(ChangeReceivingTypeGiftCardEvent value)
        changeReceivingType,
    required TResult Function(AddAddressDeliveryGiftCardEvent value)
        addAddressDelivery,
    required TResult Function(SelectAddressDeliveryGiftCardEvent value)
        selectAddressDelivery,
    required TResult Function(DeleteAddressDeliveryGiftCardEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangeUidPickUpPointGiftCardEvent value)
        changeUidPickUpPoint,
    required TResult Function(ChangePaymentTypeGiftCardEvent value)
        changePaymentType,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) {
    return changeAmountPaid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(ChangeTypeGiftCardGiftCardEvent value)?
        changeTypeGiftCard,
    TResult? Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult? Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult? Function(AddAddressDeliveryGiftCardEvent value)?
        addAddressDelivery,
    TResult? Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult? Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult? Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) {
    return changeAmountPaid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(ChangeTypeGiftCardGiftCardEvent value)? changeTypeGiftCard,
    TResult Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult Function(AddAddressDeliveryGiftCardEvent value)? addAddressDelivery,
    TResult Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult Function(CreateOrderGiftCardEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (changeAmountPaid != null) {
      return changeAmountPaid(this);
    }
    return orElse();
  }
}

abstract class ChangeAmountPaidGiftCardEvent implements GiftCardEvent {
  const factory ChangeAmountPaidGiftCardEvent({required final int amountPaid}) =
      _$ChangeAmountPaidGiftCardEventImpl;

  int get amountPaid;

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAmountPaidGiftCardEventImplCopyWith<
          _$ChangeAmountPaidGiftCardEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeReceivingTypeGiftCardEventImplCopyWith<$Res> {
  factory _$$ChangeReceivingTypeGiftCardEventImplCopyWith(
          _$ChangeReceivingTypeGiftCardEventImpl value,
          $Res Function(_$ChangeReceivingTypeGiftCardEventImpl) then) =
      __$$ChangeReceivingTypeGiftCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String receivingType});
}

/// @nodoc
class __$$ChangeReceivingTypeGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res,
        _$ChangeReceivingTypeGiftCardEventImpl>
    implements _$$ChangeReceivingTypeGiftCardEventImplCopyWith<$Res> {
  __$$ChangeReceivingTypeGiftCardEventImplCopyWithImpl(
      _$ChangeReceivingTypeGiftCardEventImpl _value,
      $Res Function(_$ChangeReceivingTypeGiftCardEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receivingType = null,
  }) {
    return _then(_$ChangeReceivingTypeGiftCardEventImpl(
      receivingType: null == receivingType
          ? _value.receivingType
          : receivingType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeReceivingTypeGiftCardEventImpl
    implements ChangeReceivingTypeGiftCardEvent {
  const _$ChangeReceivingTypeGiftCardEventImpl({required this.receivingType});

  @override
  final String receivingType;

  @override
  String toString() {
    return 'GiftCardEvent.changeReceivingType(receivingType: $receivingType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeReceivingTypeGiftCardEventImpl &&
            (identical(other.receivingType, receivingType) ||
                other.receivingType == receivingType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receivingType);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeReceivingTypeGiftCardEventImplCopyWith<
          _$ChangeReceivingTypeGiftCardEventImpl>
      get copyWith => __$$ChangeReceivingTypeGiftCardEventImplCopyWithImpl<
          _$ChangeReceivingTypeGiftCardEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isNotification, String searchQuery, String? messageId)
        preloadData,
    required TResult Function(String typeGiftCard) changeTypeGiftCard,
    required TResult Function(int amountPaid) changeAmountPaid,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(PaymentItemDataModel typePay) changePaymentType,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) {
    return changeReceivingType(receivingType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult? Function(String typeGiftCard)? changeTypeGiftCard,
    TResult? Function(int amountPaid)? changeAmountPaid,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) {
    return changeReceivingType?.call(receivingType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult Function(String typeGiftCard)? changeTypeGiftCard,
    TResult Function(int amountPaid)? changeAmountPaid,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
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
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(ChangeTypeGiftCardGiftCardEvent value)
        changeTypeGiftCard,
    required TResult Function(ChangeAmountPaidGiftCardEvent value)
        changeAmountPaid,
    required TResult Function(ChangeReceivingTypeGiftCardEvent value)
        changeReceivingType,
    required TResult Function(AddAddressDeliveryGiftCardEvent value)
        addAddressDelivery,
    required TResult Function(SelectAddressDeliveryGiftCardEvent value)
        selectAddressDelivery,
    required TResult Function(DeleteAddressDeliveryGiftCardEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangeUidPickUpPointGiftCardEvent value)
        changeUidPickUpPoint,
    required TResult Function(ChangePaymentTypeGiftCardEvent value)
        changePaymentType,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) {
    return changeReceivingType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(ChangeTypeGiftCardGiftCardEvent value)?
        changeTypeGiftCard,
    TResult? Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult? Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult? Function(AddAddressDeliveryGiftCardEvent value)?
        addAddressDelivery,
    TResult? Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult? Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult? Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) {
    return changeReceivingType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(ChangeTypeGiftCardGiftCardEvent value)? changeTypeGiftCard,
    TResult Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult Function(AddAddressDeliveryGiftCardEvent value)? addAddressDelivery,
    TResult Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult Function(CreateOrderGiftCardEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (changeReceivingType != null) {
      return changeReceivingType(this);
    }
    return orElse();
  }
}

abstract class ChangeReceivingTypeGiftCardEvent implements GiftCardEvent {
  const factory ChangeReceivingTypeGiftCardEvent(
          {required final String receivingType}) =
      _$ChangeReceivingTypeGiftCardEventImpl;

  String get receivingType;

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeReceivingTypeGiftCardEventImplCopyWith<
          _$ChangeReceivingTypeGiftCardEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAddressDeliveryGiftCardEventImplCopyWith<$Res> {
  factory _$$AddAddressDeliveryGiftCardEventImplCopyWith(
          _$AddAddressDeliveryGiftCardEventImpl value,
          $Res Function(_$AddAddressDeliveryGiftCardEventImpl) then) =
      __$$AddAddressDeliveryGiftCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BasketAddressDataModel addressDelivery, int delivery, String cityId});
}

/// @nodoc
class __$$AddAddressDeliveryGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res,
        _$AddAddressDeliveryGiftCardEventImpl>
    implements _$$AddAddressDeliveryGiftCardEventImplCopyWith<$Res> {
  __$$AddAddressDeliveryGiftCardEventImplCopyWithImpl(
      _$AddAddressDeliveryGiftCardEventImpl _value,
      $Res Function(_$AddAddressDeliveryGiftCardEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressDelivery = null,
    Object? delivery = null,
    Object? cityId = null,
  }) {
    return _then(_$AddAddressDeliveryGiftCardEventImpl(
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

class _$AddAddressDeliveryGiftCardEventImpl
    implements AddAddressDeliveryGiftCardEvent {
  const _$AddAddressDeliveryGiftCardEventImpl(
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
    return 'GiftCardEvent.addAddressDelivery(addressDelivery: $addressDelivery, delivery: $delivery, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressDeliveryGiftCardEventImpl &&
            (identical(other.addressDelivery, addressDelivery) ||
                other.addressDelivery == addressDelivery) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, addressDelivery, delivery, cityId);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressDeliveryGiftCardEventImplCopyWith<
          _$AddAddressDeliveryGiftCardEventImpl>
      get copyWith => __$$AddAddressDeliveryGiftCardEventImplCopyWithImpl<
          _$AddAddressDeliveryGiftCardEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isNotification, String searchQuery, String? messageId)
        preloadData,
    required TResult Function(String typeGiftCard) changeTypeGiftCard,
    required TResult Function(int amountPaid) changeAmountPaid,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(PaymentItemDataModel typePay) changePaymentType,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) {
    return addAddressDelivery(addressDelivery, delivery, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult? Function(String typeGiftCard)? changeTypeGiftCard,
    TResult? Function(int amountPaid)? changeAmountPaid,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) {
    return addAddressDelivery?.call(addressDelivery, delivery, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult Function(String typeGiftCard)? changeTypeGiftCard,
    TResult Function(int amountPaid)? changeAmountPaid,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
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
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(ChangeTypeGiftCardGiftCardEvent value)
        changeTypeGiftCard,
    required TResult Function(ChangeAmountPaidGiftCardEvent value)
        changeAmountPaid,
    required TResult Function(ChangeReceivingTypeGiftCardEvent value)
        changeReceivingType,
    required TResult Function(AddAddressDeliveryGiftCardEvent value)
        addAddressDelivery,
    required TResult Function(SelectAddressDeliveryGiftCardEvent value)
        selectAddressDelivery,
    required TResult Function(DeleteAddressDeliveryGiftCardEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangeUidPickUpPointGiftCardEvent value)
        changeUidPickUpPoint,
    required TResult Function(ChangePaymentTypeGiftCardEvent value)
        changePaymentType,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) {
    return addAddressDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(ChangeTypeGiftCardGiftCardEvent value)?
        changeTypeGiftCard,
    TResult? Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult? Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult? Function(AddAddressDeliveryGiftCardEvent value)?
        addAddressDelivery,
    TResult? Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult? Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult? Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) {
    return addAddressDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(ChangeTypeGiftCardGiftCardEvent value)? changeTypeGiftCard,
    TResult Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult Function(AddAddressDeliveryGiftCardEvent value)? addAddressDelivery,
    TResult Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult Function(CreateOrderGiftCardEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (addAddressDelivery != null) {
      return addAddressDelivery(this);
    }
    return orElse();
  }
}

abstract class AddAddressDeliveryGiftCardEvent implements GiftCardEvent {
  const factory AddAddressDeliveryGiftCardEvent(
      {required final BasketAddressDataModel addressDelivery,
      required final int delivery,
      required final String cityId}) = _$AddAddressDeliveryGiftCardEventImpl;

  BasketAddressDataModel get addressDelivery;
  int get delivery;
  String get cityId;

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAddressDeliveryGiftCardEventImplCopyWith<
          _$AddAddressDeliveryGiftCardEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAddressDeliveryGiftCardEventImplCopyWith<$Res> {
  factory _$$SelectAddressDeliveryGiftCardEventImplCopyWith(
          _$SelectAddressDeliveryGiftCardEventImpl value,
          $Res Function(_$SelectAddressDeliveryGiftCardEventImpl) then) =
      __$$SelectAddressDeliveryGiftCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectAddressDeliveryGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res,
        _$SelectAddressDeliveryGiftCardEventImpl>
    implements _$$SelectAddressDeliveryGiftCardEventImplCopyWith<$Res> {
  __$$SelectAddressDeliveryGiftCardEventImplCopyWithImpl(
      _$SelectAddressDeliveryGiftCardEventImpl _value,
      $Res Function(_$SelectAddressDeliveryGiftCardEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SelectAddressDeliveryGiftCardEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectAddressDeliveryGiftCardEventImpl
    implements SelectAddressDeliveryGiftCardEvent {
  const _$SelectAddressDeliveryGiftCardEventImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'GiftCardEvent.selectAddressDelivery(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAddressDeliveryGiftCardEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAddressDeliveryGiftCardEventImplCopyWith<
          _$SelectAddressDeliveryGiftCardEventImpl>
      get copyWith => __$$SelectAddressDeliveryGiftCardEventImplCopyWithImpl<
          _$SelectAddressDeliveryGiftCardEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isNotification, String searchQuery, String? messageId)
        preloadData,
    required TResult Function(String typeGiftCard) changeTypeGiftCard,
    required TResult Function(int amountPaid) changeAmountPaid,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(PaymentItemDataModel typePay) changePaymentType,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) {
    return selectAddressDelivery(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult? Function(String typeGiftCard)? changeTypeGiftCard,
    TResult? Function(int amountPaid)? changeAmountPaid,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) {
    return selectAddressDelivery?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult Function(String typeGiftCard)? changeTypeGiftCard,
    TResult Function(int amountPaid)? changeAmountPaid,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
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
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(ChangeTypeGiftCardGiftCardEvent value)
        changeTypeGiftCard,
    required TResult Function(ChangeAmountPaidGiftCardEvent value)
        changeAmountPaid,
    required TResult Function(ChangeReceivingTypeGiftCardEvent value)
        changeReceivingType,
    required TResult Function(AddAddressDeliveryGiftCardEvent value)
        addAddressDelivery,
    required TResult Function(SelectAddressDeliveryGiftCardEvent value)
        selectAddressDelivery,
    required TResult Function(DeleteAddressDeliveryGiftCardEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangeUidPickUpPointGiftCardEvent value)
        changeUidPickUpPoint,
    required TResult Function(ChangePaymentTypeGiftCardEvent value)
        changePaymentType,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) {
    return selectAddressDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(ChangeTypeGiftCardGiftCardEvent value)?
        changeTypeGiftCard,
    TResult? Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult? Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult? Function(AddAddressDeliveryGiftCardEvent value)?
        addAddressDelivery,
    TResult? Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult? Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult? Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) {
    return selectAddressDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(ChangeTypeGiftCardGiftCardEvent value)? changeTypeGiftCard,
    TResult Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult Function(AddAddressDeliveryGiftCardEvent value)? addAddressDelivery,
    TResult Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult Function(CreateOrderGiftCardEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (selectAddressDelivery != null) {
      return selectAddressDelivery(this);
    }
    return orElse();
  }
}

abstract class SelectAddressDeliveryGiftCardEvent implements GiftCardEvent {
  const factory SelectAddressDeliveryGiftCardEvent({required final int index}) =
      _$SelectAddressDeliveryGiftCardEventImpl;

  int get index;

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectAddressDeliveryGiftCardEventImplCopyWith<
          _$SelectAddressDeliveryGiftCardEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAddressDeliveryGiftCardEventImplCopyWith<$Res> {
  factory _$$DeleteAddressDeliveryGiftCardEventImplCopyWith(
          _$DeleteAddressDeliveryGiftCardEventImpl value,
          $Res Function(_$DeleteAddressDeliveryGiftCardEventImpl) then) =
      __$$DeleteAddressDeliveryGiftCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteAddressDeliveryGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res,
        _$DeleteAddressDeliveryGiftCardEventImpl>
    implements _$$DeleteAddressDeliveryGiftCardEventImplCopyWith<$Res> {
  __$$DeleteAddressDeliveryGiftCardEventImplCopyWithImpl(
      _$DeleteAddressDeliveryGiftCardEventImpl _value,
      $Res Function(_$DeleteAddressDeliveryGiftCardEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteAddressDeliveryGiftCardEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAddressDeliveryGiftCardEventImpl
    implements DeleteAddressDeliveryGiftCardEvent {
  const _$DeleteAddressDeliveryGiftCardEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'GiftCardEvent.deleteAddressDelivery(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAddressDeliveryGiftCardEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAddressDeliveryGiftCardEventImplCopyWith<
          _$DeleteAddressDeliveryGiftCardEventImpl>
      get copyWith => __$$DeleteAddressDeliveryGiftCardEventImplCopyWithImpl<
          _$DeleteAddressDeliveryGiftCardEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isNotification, String searchQuery, String? messageId)
        preloadData,
    required TResult Function(String typeGiftCard) changeTypeGiftCard,
    required TResult Function(int amountPaid) changeAmountPaid,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(PaymentItemDataModel typePay) changePaymentType,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) {
    return deleteAddressDelivery(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult? Function(String typeGiftCard)? changeTypeGiftCard,
    TResult? Function(int amountPaid)? changeAmountPaid,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) {
    return deleteAddressDelivery?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult Function(String typeGiftCard)? changeTypeGiftCard,
    TResult Function(int amountPaid)? changeAmountPaid,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
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
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(ChangeTypeGiftCardGiftCardEvent value)
        changeTypeGiftCard,
    required TResult Function(ChangeAmountPaidGiftCardEvent value)
        changeAmountPaid,
    required TResult Function(ChangeReceivingTypeGiftCardEvent value)
        changeReceivingType,
    required TResult Function(AddAddressDeliveryGiftCardEvent value)
        addAddressDelivery,
    required TResult Function(SelectAddressDeliveryGiftCardEvent value)
        selectAddressDelivery,
    required TResult Function(DeleteAddressDeliveryGiftCardEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangeUidPickUpPointGiftCardEvent value)
        changeUidPickUpPoint,
    required TResult Function(ChangePaymentTypeGiftCardEvent value)
        changePaymentType,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) {
    return deleteAddressDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(ChangeTypeGiftCardGiftCardEvent value)?
        changeTypeGiftCard,
    TResult? Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult? Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult? Function(AddAddressDeliveryGiftCardEvent value)?
        addAddressDelivery,
    TResult? Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult? Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult? Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) {
    return deleteAddressDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(ChangeTypeGiftCardGiftCardEvent value)? changeTypeGiftCard,
    TResult Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult Function(AddAddressDeliveryGiftCardEvent value)? addAddressDelivery,
    TResult Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult Function(CreateOrderGiftCardEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (deleteAddressDelivery != null) {
      return deleteAddressDelivery(this);
    }
    return orElse();
  }
}

abstract class DeleteAddressDeliveryGiftCardEvent implements GiftCardEvent {
  const factory DeleteAddressDeliveryGiftCardEvent({required final String id}) =
      _$DeleteAddressDeliveryGiftCardEventImpl;

  String get id;

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAddressDeliveryGiftCardEventImplCopyWith<
          _$DeleteAddressDeliveryGiftCardEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeUidPickUpPointGiftCardEventImplCopyWith<$Res> {
  factory _$$ChangeUidPickUpPointGiftCardEventImplCopyWith(
          _$ChangeUidPickUpPointGiftCardEventImpl value,
          $Res Function(_$ChangeUidPickUpPointGiftCardEventImpl) then) =
      __$$ChangeUidPickUpPointGiftCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uidPickUpPoint});
}

/// @nodoc
class __$$ChangeUidPickUpPointGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res,
        _$ChangeUidPickUpPointGiftCardEventImpl>
    implements _$$ChangeUidPickUpPointGiftCardEventImplCopyWith<$Res> {
  __$$ChangeUidPickUpPointGiftCardEventImplCopyWithImpl(
      _$ChangeUidPickUpPointGiftCardEventImpl _value,
      $Res Function(_$ChangeUidPickUpPointGiftCardEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uidPickUpPoint = null,
  }) {
    return _then(_$ChangeUidPickUpPointGiftCardEventImpl(
      uidPickUpPoint: null == uidPickUpPoint
          ? _value.uidPickUpPoint
          : uidPickUpPoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeUidPickUpPointGiftCardEventImpl
    implements ChangeUidPickUpPointGiftCardEvent {
  const _$ChangeUidPickUpPointGiftCardEventImpl({required this.uidPickUpPoint});

  @override
  final String uidPickUpPoint;

  @override
  String toString() {
    return 'GiftCardEvent.changeUidPickUpPoint(uidPickUpPoint: $uidPickUpPoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUidPickUpPointGiftCardEventImpl &&
            (identical(other.uidPickUpPoint, uidPickUpPoint) ||
                other.uidPickUpPoint == uidPickUpPoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uidPickUpPoint);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeUidPickUpPointGiftCardEventImplCopyWith<
          _$ChangeUidPickUpPointGiftCardEventImpl>
      get copyWith => __$$ChangeUidPickUpPointGiftCardEventImplCopyWithImpl<
          _$ChangeUidPickUpPointGiftCardEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isNotification, String searchQuery, String? messageId)
        preloadData,
    required TResult Function(String typeGiftCard) changeTypeGiftCard,
    required TResult Function(int amountPaid) changeAmountPaid,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(PaymentItemDataModel typePay) changePaymentType,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) {
    return changeUidPickUpPoint(uidPickUpPoint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult? Function(String typeGiftCard)? changeTypeGiftCard,
    TResult? Function(int amountPaid)? changeAmountPaid,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) {
    return changeUidPickUpPoint?.call(uidPickUpPoint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult Function(String typeGiftCard)? changeTypeGiftCard,
    TResult Function(int amountPaid)? changeAmountPaid,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
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
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(ChangeTypeGiftCardGiftCardEvent value)
        changeTypeGiftCard,
    required TResult Function(ChangeAmountPaidGiftCardEvent value)
        changeAmountPaid,
    required TResult Function(ChangeReceivingTypeGiftCardEvent value)
        changeReceivingType,
    required TResult Function(AddAddressDeliveryGiftCardEvent value)
        addAddressDelivery,
    required TResult Function(SelectAddressDeliveryGiftCardEvent value)
        selectAddressDelivery,
    required TResult Function(DeleteAddressDeliveryGiftCardEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangeUidPickUpPointGiftCardEvent value)
        changeUidPickUpPoint,
    required TResult Function(ChangePaymentTypeGiftCardEvent value)
        changePaymentType,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) {
    return changeUidPickUpPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(ChangeTypeGiftCardGiftCardEvent value)?
        changeTypeGiftCard,
    TResult? Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult? Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult? Function(AddAddressDeliveryGiftCardEvent value)?
        addAddressDelivery,
    TResult? Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult? Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult? Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) {
    return changeUidPickUpPoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(ChangeTypeGiftCardGiftCardEvent value)? changeTypeGiftCard,
    TResult Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult Function(AddAddressDeliveryGiftCardEvent value)? addAddressDelivery,
    TResult Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult Function(CreateOrderGiftCardEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (changeUidPickUpPoint != null) {
      return changeUidPickUpPoint(this);
    }
    return orElse();
  }
}

abstract class ChangeUidPickUpPointGiftCardEvent implements GiftCardEvent {
  const factory ChangeUidPickUpPointGiftCardEvent(
          {required final String uidPickUpPoint}) =
      _$ChangeUidPickUpPointGiftCardEventImpl;

  String get uidPickUpPoint;

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeUidPickUpPointGiftCardEventImplCopyWith<
          _$ChangeUidPickUpPointGiftCardEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePaymentTypeGiftCardEventImplCopyWith<$Res> {
  factory _$$ChangePaymentTypeGiftCardEventImplCopyWith(
          _$ChangePaymentTypeGiftCardEventImpl value,
          $Res Function(_$ChangePaymentTypeGiftCardEventImpl) then) =
      __$$ChangePaymentTypeGiftCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentItemDataModel typePay});

  $PaymentItemDataModelCopyWith<$Res> get typePay;
}

/// @nodoc
class __$$ChangePaymentTypeGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res,
        _$ChangePaymentTypeGiftCardEventImpl>
    implements _$$ChangePaymentTypeGiftCardEventImplCopyWith<$Res> {
  __$$ChangePaymentTypeGiftCardEventImplCopyWithImpl(
      _$ChangePaymentTypeGiftCardEventImpl _value,
      $Res Function(_$ChangePaymentTypeGiftCardEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typePay = null,
  }) {
    return _then(_$ChangePaymentTypeGiftCardEventImpl(
      typePay: null == typePay
          ? _value.typePay
          : typePay // ignore: cast_nullable_to_non_nullable
              as PaymentItemDataModel,
    ));
  }

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentItemDataModelCopyWith<$Res> get typePay {
    return $PaymentItemDataModelCopyWith<$Res>(_value.typePay, (value) {
      return _then(_value.copyWith(typePay: value));
    });
  }
}

/// @nodoc

class _$ChangePaymentTypeGiftCardEventImpl
    implements ChangePaymentTypeGiftCardEvent {
  const _$ChangePaymentTypeGiftCardEventImpl({required this.typePay});

  @override
  final PaymentItemDataModel typePay;

  @override
  String toString() {
    return 'GiftCardEvent.changePaymentType(typePay: $typePay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePaymentTypeGiftCardEventImpl &&
            (identical(other.typePay, typePay) || other.typePay == typePay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typePay);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePaymentTypeGiftCardEventImplCopyWith<
          _$ChangePaymentTypeGiftCardEventImpl>
      get copyWith => __$$ChangePaymentTypeGiftCardEventImplCopyWithImpl<
          _$ChangePaymentTypeGiftCardEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isNotification, String searchQuery, String? messageId)
        preloadData,
    required TResult Function(String typeGiftCard) changeTypeGiftCard,
    required TResult Function(int amountPaid) changeAmountPaid,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(PaymentItemDataModel typePay) changePaymentType,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) {
    return changePaymentType(typePay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult? Function(String typeGiftCard)? changeTypeGiftCard,
    TResult? Function(int amountPaid)? changeAmountPaid,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) {
    return changePaymentType?.call(typePay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult Function(String typeGiftCard)? changeTypeGiftCard,
    TResult Function(int amountPaid)? changeAmountPaid,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
    required TResult orElse(),
  }) {
    if (changePaymentType != null) {
      return changePaymentType(typePay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(ChangeTypeGiftCardGiftCardEvent value)
        changeTypeGiftCard,
    required TResult Function(ChangeAmountPaidGiftCardEvent value)
        changeAmountPaid,
    required TResult Function(ChangeReceivingTypeGiftCardEvent value)
        changeReceivingType,
    required TResult Function(AddAddressDeliveryGiftCardEvent value)
        addAddressDelivery,
    required TResult Function(SelectAddressDeliveryGiftCardEvent value)
        selectAddressDelivery,
    required TResult Function(DeleteAddressDeliveryGiftCardEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangeUidPickUpPointGiftCardEvent value)
        changeUidPickUpPoint,
    required TResult Function(ChangePaymentTypeGiftCardEvent value)
        changePaymentType,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) {
    return changePaymentType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(ChangeTypeGiftCardGiftCardEvent value)?
        changeTypeGiftCard,
    TResult? Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult? Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult? Function(AddAddressDeliveryGiftCardEvent value)?
        addAddressDelivery,
    TResult? Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult? Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult? Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) {
    return changePaymentType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(ChangeTypeGiftCardGiftCardEvent value)? changeTypeGiftCard,
    TResult Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult Function(AddAddressDeliveryGiftCardEvent value)? addAddressDelivery,
    TResult Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult Function(CreateOrderGiftCardEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (changePaymentType != null) {
      return changePaymentType(this);
    }
    return orElse();
  }
}

abstract class ChangePaymentTypeGiftCardEvent implements GiftCardEvent {
  const factory ChangePaymentTypeGiftCardEvent(
          {required final PaymentItemDataModel typePay}) =
      _$ChangePaymentTypeGiftCardEventImpl;

  PaymentItemDataModel get typePay;

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePaymentTypeGiftCardEventImplCopyWith<
          _$ChangePaymentTypeGiftCardEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateOrderGiftCardEventImplCopyWith<$Res> {
  factory _$$CreateOrderGiftCardEventImplCopyWith(
          _$CreateOrderGiftCardEventImpl value,
          $Res Function(_$CreateOrderGiftCardEventImpl) then) =
      __$$CreateOrderGiftCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CatalogGiftCardRequest request});

  $CatalogGiftCardRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$CreateOrderGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res, _$CreateOrderGiftCardEventImpl>
    implements _$$CreateOrderGiftCardEventImplCopyWith<$Res> {
  __$$CreateOrderGiftCardEventImplCopyWithImpl(
      _$CreateOrderGiftCardEventImpl _value,
      $Res Function(_$CreateOrderGiftCardEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$CreateOrderGiftCardEventImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CatalogGiftCardRequest,
    ));
  }

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogGiftCardRequestCopyWith<$Res> get request {
    return $CatalogGiftCardRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$CreateOrderGiftCardEventImpl implements CreateOrderGiftCardEvent {
  const _$CreateOrderGiftCardEventImpl({required this.request});

  @override
  final CatalogGiftCardRequest request;

  @override
  String toString() {
    return 'GiftCardEvent.createOrder(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderGiftCardEventImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderGiftCardEventImplCopyWith<_$CreateOrderGiftCardEventImpl>
      get copyWith => __$$CreateOrderGiftCardEventImplCopyWithImpl<
          _$CreateOrderGiftCardEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isNotification, String searchQuery, String? messageId)
        preloadData,
    required TResult Function(String typeGiftCard) changeTypeGiftCard,
    required TResult Function(int amountPaid) changeAmountPaid,
    required TResult Function(String receivingType) changeReceivingType,
    required TResult Function(
            BasketAddressDataModel addressDelivery, int delivery, String cityId)
        addAddressDelivery,
    required TResult Function(int index) selectAddressDelivery,
    required TResult Function(String id) deleteAddressDelivery,
    required TResult Function(String uidPickUpPoint) changeUidPickUpPoint,
    required TResult Function(PaymentItemDataModel typePay) changePaymentType,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) {
    return createOrder(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult? Function(String typeGiftCard)? changeTypeGiftCard,
    TResult? Function(int amountPaid)? changeAmountPaid,
    TResult? Function(String receivingType)? changeReceivingType,
    TResult? Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult? Function(int index)? selectAddressDelivery,
    TResult? Function(String id)? deleteAddressDelivery,
    TResult? Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult? Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) {
    return createOrder?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isNotification, String searchQuery, String? messageId)?
        preloadData,
    TResult Function(String typeGiftCard)? changeTypeGiftCard,
    TResult Function(int amountPaid)? changeAmountPaid,
    TResult Function(String receivingType)? changeReceivingType,
    TResult Function(BasketAddressDataModel addressDelivery, int delivery,
            String cityId)?
        addAddressDelivery,
    TResult Function(int index)? selectAddressDelivery,
    TResult Function(String id)? deleteAddressDelivery,
    TResult Function(String uidPickUpPoint)? changeUidPickUpPoint,
    TResult Function(PaymentItemDataModel typePay)? changePaymentType,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
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
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(ChangeTypeGiftCardGiftCardEvent value)
        changeTypeGiftCard,
    required TResult Function(ChangeAmountPaidGiftCardEvent value)
        changeAmountPaid,
    required TResult Function(ChangeReceivingTypeGiftCardEvent value)
        changeReceivingType,
    required TResult Function(AddAddressDeliveryGiftCardEvent value)
        addAddressDelivery,
    required TResult Function(SelectAddressDeliveryGiftCardEvent value)
        selectAddressDelivery,
    required TResult Function(DeleteAddressDeliveryGiftCardEvent value)
        deleteAddressDelivery,
    required TResult Function(ChangeUidPickUpPointGiftCardEvent value)
        changeUidPickUpPoint,
    required TResult Function(ChangePaymentTypeGiftCardEvent value)
        changePaymentType,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(ChangeTypeGiftCardGiftCardEvent value)?
        changeTypeGiftCard,
    TResult? Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult? Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult? Function(AddAddressDeliveryGiftCardEvent value)?
        addAddressDelivery,
    TResult? Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult? Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult? Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult? Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(ChangeTypeGiftCardGiftCardEvent value)? changeTypeGiftCard,
    TResult Function(ChangeAmountPaidGiftCardEvent value)? changeAmountPaid,
    TResult Function(ChangeReceivingTypeGiftCardEvent value)?
        changeReceivingType,
    TResult Function(AddAddressDeliveryGiftCardEvent value)? addAddressDelivery,
    TResult Function(SelectAddressDeliveryGiftCardEvent value)?
        selectAddressDelivery,
    TResult Function(DeleteAddressDeliveryGiftCardEvent value)?
        deleteAddressDelivery,
    TResult Function(ChangeUidPickUpPointGiftCardEvent value)?
        changeUidPickUpPoint,
    TResult Function(ChangePaymentTypeGiftCardEvent value)? changePaymentType,
    TResult Function(CreateOrderGiftCardEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class CreateOrderGiftCardEvent implements GiftCardEvent {
  const factory CreateOrderGiftCardEvent(
          {required final CatalogGiftCardRequest request}) =
      _$CreateOrderGiftCardEventImpl;

  CatalogGiftCardRequest get request;

  /// Create a copy of GiftCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrderGiftCardEventImplCopyWith<_$CreateOrderGiftCardEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GiftCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)
        preloadDataCompleted,
    required TResult Function(int orderId, String searchQuery)
        createOrderSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult? Function(int orderId, String searchQuery)? createOrderSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult Function(int orderId, String searchQuery)? createOrderSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
    required TResult Function(LoadingErrorButtonGiftCardState value)
        loadErrorButton,
    required TResult Function(ErrorGiftCardState value) error,
    required TResult Function(PreloadDataGiftCardState value)
        preloadDataCompleted,
    required TResult Function(CreateOrderSuccessfullyGiftCardState value)
        createOrderSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardState value)? init,
    TResult? Function(LoadingGiftCardState value)? load,
    TResult? Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult? Function(ErrorGiftCardState value)? error,
    TResult? Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult? Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardState value)? init,
    TResult Function(LoadingGiftCardState value)? load,
    TResult Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult Function(ErrorGiftCardState value)? error,
    TResult Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardStateCopyWith<$Res> {
  factory $GiftCardStateCopyWith(
          GiftCardState value, $Res Function(GiftCardState) then) =
      _$GiftCardStateCopyWithImpl<$Res, GiftCardState>;
}

/// @nodoc
class _$GiftCardStateCopyWithImpl<$Res, $Val extends GiftCardState>
    implements $GiftCardStateCopyWith<$Res> {
  _$GiftCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitGiftCardStateImplCopyWith<$Res> {
  factory _$$InitGiftCardStateImplCopyWith(_$InitGiftCardStateImpl value,
          $Res Function(_$InitGiftCardStateImpl) then) =
      __$$InitGiftCardStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitGiftCardStateImplCopyWithImpl<$Res>
    extends _$GiftCardStateCopyWithImpl<$Res, _$InitGiftCardStateImpl>
    implements _$$InitGiftCardStateImplCopyWith<$Res> {
  __$$InitGiftCardStateImplCopyWithImpl(_$InitGiftCardStateImpl _value,
      $Res Function(_$InitGiftCardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitGiftCardStateImpl implements InitGiftCardState {
  const _$InitGiftCardStateImpl();

  @override
  String toString() {
    return 'GiftCardState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitGiftCardStateImpl);
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
    required TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)
        preloadDataCompleted,
    required TResult Function(int orderId, String searchQuery)
        createOrderSuccessfully,
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
    TResult? Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult? Function(int orderId, String searchQuery)? createOrderSuccessfully,
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
    TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult Function(int orderId, String searchQuery)? createOrderSuccessfully,
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
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
    required TResult Function(LoadingErrorButtonGiftCardState value)
        loadErrorButton,
    required TResult Function(ErrorGiftCardState value) error,
    required TResult Function(PreloadDataGiftCardState value)
        preloadDataCompleted,
    required TResult Function(CreateOrderSuccessfullyGiftCardState value)
        createOrderSuccessfully,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardState value)? init,
    TResult? Function(LoadingGiftCardState value)? load,
    TResult? Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult? Function(ErrorGiftCardState value)? error,
    TResult? Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult? Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardState value)? init,
    TResult Function(LoadingGiftCardState value)? load,
    TResult Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult Function(ErrorGiftCardState value)? error,
    TResult Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitGiftCardState implements GiftCardState {
  const factory InitGiftCardState() = _$InitGiftCardStateImpl;
}

/// @nodoc
abstract class _$$LoadingGiftCardStateImplCopyWith<$Res> {
  factory _$$LoadingGiftCardStateImplCopyWith(_$LoadingGiftCardStateImpl value,
          $Res Function(_$LoadingGiftCardStateImpl) then) =
      __$$LoadingGiftCardStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingGiftCardStateImplCopyWithImpl<$Res>
    extends _$GiftCardStateCopyWithImpl<$Res, _$LoadingGiftCardStateImpl>
    implements _$$LoadingGiftCardStateImplCopyWith<$Res> {
  __$$LoadingGiftCardStateImplCopyWithImpl(_$LoadingGiftCardStateImpl _value,
      $Res Function(_$LoadingGiftCardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingGiftCardStateImpl implements LoadingGiftCardState {
  const _$LoadingGiftCardStateImpl();

  @override
  String toString() {
    return 'GiftCardState.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingGiftCardStateImpl);
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
    required TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)
        preloadDataCompleted,
    required TResult Function(int orderId, String searchQuery)
        createOrderSuccessfully,
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
    TResult? Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult? Function(int orderId, String searchQuery)? createOrderSuccessfully,
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
    TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult Function(int orderId, String searchQuery)? createOrderSuccessfully,
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
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
    required TResult Function(LoadingErrorButtonGiftCardState value)
        loadErrorButton,
    required TResult Function(ErrorGiftCardState value) error,
    required TResult Function(PreloadDataGiftCardState value)
        preloadDataCompleted,
    required TResult Function(CreateOrderSuccessfullyGiftCardState value)
        createOrderSuccessfully,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardState value)? init,
    TResult? Function(LoadingGiftCardState value)? load,
    TResult? Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult? Function(ErrorGiftCardState value)? error,
    TResult? Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult? Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardState value)? init,
    TResult Function(LoadingGiftCardState value)? load,
    TResult Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult Function(ErrorGiftCardState value)? error,
    TResult Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingGiftCardState implements GiftCardState {
  const factory LoadingGiftCardState() = _$LoadingGiftCardStateImpl;
}

/// @nodoc
abstract class _$$LoadingErrorButtonGiftCardStateImplCopyWith<$Res> {
  factory _$$LoadingErrorButtonGiftCardStateImplCopyWith(
          _$LoadingErrorButtonGiftCardStateImpl value,
          $Res Function(_$LoadingErrorButtonGiftCardStateImpl) then) =
      __$$LoadingErrorButtonGiftCardStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingErrorButtonGiftCardStateImplCopyWithImpl<$Res>
    extends _$GiftCardStateCopyWithImpl<$Res,
        _$LoadingErrorButtonGiftCardStateImpl>
    implements _$$LoadingErrorButtonGiftCardStateImplCopyWith<$Res> {
  __$$LoadingErrorButtonGiftCardStateImplCopyWithImpl(
      _$LoadingErrorButtonGiftCardStateImpl _value,
      $Res Function(_$LoadingErrorButtonGiftCardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingErrorButtonGiftCardStateImpl
    implements LoadingErrorButtonGiftCardState {
  const _$LoadingErrorButtonGiftCardStateImpl();

  @override
  String toString() {
    return 'GiftCardState.loadErrorButton()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingErrorButtonGiftCardStateImpl);
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
    required TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)
        preloadDataCompleted,
    required TResult Function(int orderId, String searchQuery)
        createOrderSuccessfully,
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
    TResult? Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult? Function(int orderId, String searchQuery)? createOrderSuccessfully,
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
    TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult Function(int orderId, String searchQuery)? createOrderSuccessfully,
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
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
    required TResult Function(LoadingErrorButtonGiftCardState value)
        loadErrorButton,
    required TResult Function(ErrorGiftCardState value) error,
    required TResult Function(PreloadDataGiftCardState value)
        preloadDataCompleted,
    required TResult Function(CreateOrderSuccessfullyGiftCardState value)
        createOrderSuccessfully,
  }) {
    return loadErrorButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardState value)? init,
    TResult? Function(LoadingGiftCardState value)? load,
    TResult? Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult? Function(ErrorGiftCardState value)? error,
    TResult? Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult? Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
  }) {
    return loadErrorButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardState value)? init,
    TResult Function(LoadingGiftCardState value)? load,
    TResult Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult Function(ErrorGiftCardState value)? error,
    TResult Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
    required TResult orElse(),
  }) {
    if (loadErrorButton != null) {
      return loadErrorButton(this);
    }
    return orElse();
  }
}

abstract class LoadingErrorButtonGiftCardState implements GiftCardState {
  const factory LoadingErrorButtonGiftCardState() =
      _$LoadingErrorButtonGiftCardStateImpl;
}

/// @nodoc
abstract class _$$ErrorGiftCardStateImplCopyWith<$Res> {
  factory _$$ErrorGiftCardStateImplCopyWith(_$ErrorGiftCardStateImpl value,
          $Res Function(_$ErrorGiftCardStateImpl) then) =
      __$$ErrorGiftCardStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorGiftCardStateImplCopyWithImpl<$Res>
    extends _$GiftCardStateCopyWithImpl<$Res, _$ErrorGiftCardStateImpl>
    implements _$$ErrorGiftCardStateImplCopyWith<$Res> {
  __$$ErrorGiftCardStateImplCopyWithImpl(_$ErrorGiftCardStateImpl _value,
      $Res Function(_$ErrorGiftCardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorGiftCardStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorGiftCardStateImpl implements ErrorGiftCardState {
  const _$ErrorGiftCardStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'GiftCardState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorGiftCardStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorGiftCardStateImplCopyWith<_$ErrorGiftCardStateImpl> get copyWith =>
      __$$ErrorGiftCardStateImplCopyWithImpl<_$ErrorGiftCardStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)
        preloadDataCompleted,
    required TResult Function(int orderId, String searchQuery)
        createOrderSuccessfully,
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
    TResult? Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult? Function(int orderId, String searchQuery)? createOrderSuccessfully,
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
    TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult Function(int orderId, String searchQuery)? createOrderSuccessfully,
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
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
    required TResult Function(LoadingErrorButtonGiftCardState value)
        loadErrorButton,
    required TResult Function(ErrorGiftCardState value) error,
    required TResult Function(PreloadDataGiftCardState value)
        preloadDataCompleted,
    required TResult Function(CreateOrderSuccessfullyGiftCardState value)
        createOrderSuccessfully,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardState value)? init,
    TResult? Function(LoadingGiftCardState value)? load,
    TResult? Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult? Function(ErrorGiftCardState value)? error,
    TResult? Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult? Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardState value)? init,
    TResult Function(LoadingGiftCardState value)? load,
    TResult Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult Function(ErrorGiftCardState value)? error,
    TResult Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorGiftCardState implements GiftCardState {
  const factory ErrorGiftCardState({required final String errorMessage}) =
      _$ErrorGiftCardStateImpl;

  String get errorMessage;

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorGiftCardStateImplCopyWith<_$ErrorGiftCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreloadDataGiftCardStateImplCopyWith<$Res> {
  factory _$$PreloadDataGiftCardStateImplCopyWith(
          _$PreloadDataGiftCardStateImpl value,
          $Res Function(_$PreloadDataGiftCardStateImpl) then) =
      __$$PreloadDataGiftCardStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<PaymentItemDataModel> payments,
      bool isLoadCreateOrder,
      bool isUpdateVersionApp,
      bool isNotification,
      String searchQuery,
      String address,
      PaymentItemDataModel typePay,
      BasketAddressDataModel addressDelivery,
      String receivingType,
      bool isUponReceipt,
      String typeGiftCard,
      int amountPaid,
      String uidPickUpPoint,
      BoutiquesDataModel boutiques,
      String paymentId,
      String? creatOrderMessage,
      DeliveryDataModel? deliveryInfo,
      BoutiqueDataModel? boutique,
      int? selectIndexAddress,
      int? deleteIndexAddress,
      int? delivery,
      bool? isLoadDeleteAddress});

  $PaymentItemDataModelCopyWith<$Res> get typePay;
  $BoutiquesDataModelCopyWith<$Res> get boutiques;
  $DeliveryDataModelCopyWith<$Res>? get deliveryInfo;
}

/// @nodoc
class __$$PreloadDataGiftCardStateImplCopyWithImpl<$Res>
    extends _$GiftCardStateCopyWithImpl<$Res, _$PreloadDataGiftCardStateImpl>
    implements _$$PreloadDataGiftCardStateImplCopyWith<$Res> {
  __$$PreloadDataGiftCardStateImplCopyWithImpl(
      _$PreloadDataGiftCardStateImpl _value,
      $Res Function(_$PreloadDataGiftCardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = null,
    Object? isLoadCreateOrder = null,
    Object? isUpdateVersionApp = null,
    Object? isNotification = null,
    Object? searchQuery = null,
    Object? address = null,
    Object? typePay = null,
    Object? addressDelivery = null,
    Object? receivingType = null,
    Object? isUponReceipt = null,
    Object? typeGiftCard = null,
    Object? amountPaid = null,
    Object? uidPickUpPoint = null,
    Object? boutiques = null,
    Object? paymentId = null,
    Object? creatOrderMessage = freezed,
    Object? deliveryInfo = freezed,
    Object? boutique = freezed,
    Object? selectIndexAddress = freezed,
    Object? deleteIndexAddress = freezed,
    Object? delivery = freezed,
    Object? isLoadDeleteAddress = freezed,
  }) {
    return _then(_$PreloadDataGiftCardStateImpl(
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentItemDataModel>,
      isLoadCreateOrder: null == isLoadCreateOrder
          ? _value.isLoadCreateOrder
          : isLoadCreateOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateVersionApp: null == isUpdateVersionApp
          ? _value.isUpdateVersionApp
          : isUpdateVersionApp // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotification: null == isNotification
          ? _value.isNotification
          : isNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      typePay: null == typePay
          ? _value.typePay
          : typePay // ignore: cast_nullable_to_non_nullable
              as PaymentItemDataModel,
      addressDelivery: null == addressDelivery
          ? _value.addressDelivery
          : addressDelivery // ignore: cast_nullable_to_non_nullable
              as BasketAddressDataModel,
      receivingType: null == receivingType
          ? _value.receivingType
          : receivingType // ignore: cast_nullable_to_non_nullable
              as String,
      isUponReceipt: null == isUponReceipt
          ? _value.isUponReceipt
          : isUponReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      typeGiftCard: null == typeGiftCard
          ? _value.typeGiftCard
          : typeGiftCard // ignore: cast_nullable_to_non_nullable
              as String,
      amountPaid: null == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int,
      uidPickUpPoint: null == uidPickUpPoint
          ? _value.uidPickUpPoint
          : uidPickUpPoint // ignore: cast_nullable_to_non_nullable
              as String,
      boutiques: null == boutiques
          ? _value.boutiques
          : boutiques // ignore: cast_nullable_to_non_nullable
              as BoutiquesDataModel,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      creatOrderMessage: freezed == creatOrderMessage
          ? _value.creatOrderMessage
          : creatOrderMessage // ignore: cast_nullable_to_non_nullable
              as String?,
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
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoadDeleteAddress: freezed == isLoadDeleteAddress
          ? _value.isLoadDeleteAddress
          : isLoadDeleteAddress // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentItemDataModelCopyWith<$Res> get typePay {
    return $PaymentItemDataModelCopyWith<$Res>(_value.typePay, (value) {
      return _then(_value.copyWith(typePay: value));
    });
  }

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BoutiquesDataModelCopyWith<$Res> get boutiques {
    return $BoutiquesDataModelCopyWith<$Res>(_value.boutiques, (value) {
      return _then(_value.copyWith(boutiques: value));
    });
  }

  /// Create a copy of GiftCardState
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

class _$PreloadDataGiftCardStateImpl implements PreloadDataGiftCardState {
  const _$PreloadDataGiftCardStateImpl(
      {required final List<PaymentItemDataModel> payments,
      required this.isLoadCreateOrder,
      required this.isUpdateVersionApp,
      required this.isNotification,
      required this.searchQuery,
      required this.address,
      required this.typePay,
      required this.addressDelivery,
      required this.receivingType,
      required this.isUponReceipt,
      required this.typeGiftCard,
      required this.amountPaid,
      required this.uidPickUpPoint,
      required this.boutiques,
      required this.paymentId,
      this.creatOrderMessage,
      this.deliveryInfo,
      this.boutique,
      this.selectIndexAddress,
      this.deleteIndexAddress,
      this.delivery,
      this.isLoadDeleteAddress})
      : _payments = payments;

  final List<PaymentItemDataModel> _payments;
  @override
  List<PaymentItemDataModel> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  final bool isLoadCreateOrder;
  @override
  final bool isUpdateVersionApp;
  @override
  final bool isNotification;
  @override
  final String searchQuery;
  @override
  final String address;
  @override
  final PaymentItemDataModel typePay;
  @override
  final BasketAddressDataModel addressDelivery;
  @override
  final String receivingType;
  @override
  final bool isUponReceipt;
  @override
  final String typeGiftCard;
  @override
  final int amountPaid;
  @override
  final String uidPickUpPoint;
  @override
  final BoutiquesDataModel boutiques;
  @override
  final String paymentId;
  @override
  final String? creatOrderMessage;
  @override
  final DeliveryDataModel? deliveryInfo;
  @override
  final BoutiqueDataModel? boutique;
  @override
  final int? selectIndexAddress;
  @override
  final int? deleteIndexAddress;
  @override
  final int? delivery;
  @override
  final bool? isLoadDeleteAddress;

  @override
  String toString() {
    return 'GiftCardState.preloadDataCompleted(payments: $payments, isLoadCreateOrder: $isLoadCreateOrder, isUpdateVersionApp: $isUpdateVersionApp, isNotification: $isNotification, searchQuery: $searchQuery, address: $address, typePay: $typePay, addressDelivery: $addressDelivery, receivingType: $receivingType, isUponReceipt: $isUponReceipt, typeGiftCard: $typeGiftCard, amountPaid: $amountPaid, uidPickUpPoint: $uidPickUpPoint, boutiques: $boutiques, paymentId: $paymentId, creatOrderMessage: $creatOrderMessage, deliveryInfo: $deliveryInfo, boutique: $boutique, selectIndexAddress: $selectIndexAddress, deleteIndexAddress: $deleteIndexAddress, delivery: $delivery, isLoadDeleteAddress: $isLoadDeleteAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataGiftCardStateImpl &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.isLoadCreateOrder, isLoadCreateOrder) ||
                other.isLoadCreateOrder == isLoadCreateOrder) &&
            (identical(other.isUpdateVersionApp, isUpdateVersionApp) ||
                other.isUpdateVersionApp == isUpdateVersionApp) &&
            (identical(other.isNotification, isNotification) ||
                other.isNotification == isNotification) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.typePay, typePay) || other.typePay == typePay) &&
            (identical(other.addressDelivery, addressDelivery) ||
                other.addressDelivery == addressDelivery) &&
            (identical(other.receivingType, receivingType) ||
                other.receivingType == receivingType) &&
            (identical(other.isUponReceipt, isUponReceipt) ||
                other.isUponReceipt == isUponReceipt) &&
            (identical(other.typeGiftCard, typeGiftCard) ||
                other.typeGiftCard == typeGiftCard) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid) &&
            (identical(other.uidPickUpPoint, uidPickUpPoint) ||
                other.uidPickUpPoint == uidPickUpPoint) &&
            (identical(other.boutiques, boutiques) ||
                other.boutiques == boutiques) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.creatOrderMessage, creatOrderMessage) ||
                other.creatOrderMessage == creatOrderMessage) &&
            (identical(other.deliveryInfo, deliveryInfo) ||
                other.deliveryInfo == deliveryInfo) &&
            (identical(other.boutique, boutique) ||
                other.boutique == boutique) &&
            (identical(other.selectIndexAddress, selectIndexAddress) ||
                other.selectIndexAddress == selectIndexAddress) &&
            (identical(other.deleteIndexAddress, deleteIndexAddress) ||
                other.deleteIndexAddress == deleteIndexAddress) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.isLoadDeleteAddress, isLoadDeleteAddress) ||
                other.isLoadDeleteAddress == isLoadDeleteAddress));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_payments),
        isLoadCreateOrder,
        isUpdateVersionApp,
        isNotification,
        searchQuery,
        address,
        typePay,
        addressDelivery,
        receivingType,
        isUponReceipt,
        typeGiftCard,
        amountPaid,
        uidPickUpPoint,
        boutiques,
        paymentId,
        creatOrderMessage,
        deliveryInfo,
        boutique,
        selectIndexAddress,
        deleteIndexAddress,
        delivery,
        isLoadDeleteAddress
      ]);

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataGiftCardStateImplCopyWith<_$PreloadDataGiftCardStateImpl>
      get copyWith => __$$PreloadDataGiftCardStateImplCopyWithImpl<
          _$PreloadDataGiftCardStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)
        preloadDataCompleted,
    required TResult Function(int orderId, String searchQuery)
        createOrderSuccessfully,
  }) {
    return preloadDataCompleted(
        payments,
        isLoadCreateOrder,
        isUpdateVersionApp,
        isNotification,
        searchQuery,
        address,
        typePay,
        addressDelivery,
        receivingType,
        isUponReceipt,
        typeGiftCard,
        amountPaid,
        uidPickUpPoint,
        boutiques,
        paymentId,
        creatOrderMessage,
        deliveryInfo,
        boutique,
        selectIndexAddress,
        deleteIndexAddress,
        delivery,
        isLoadDeleteAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult? Function(int orderId, String searchQuery)? createOrderSuccessfully,
  }) {
    return preloadDataCompleted?.call(
        payments,
        isLoadCreateOrder,
        isUpdateVersionApp,
        isNotification,
        searchQuery,
        address,
        typePay,
        addressDelivery,
        receivingType,
        isUponReceipt,
        typeGiftCard,
        amountPaid,
        uidPickUpPoint,
        boutiques,
        paymentId,
        creatOrderMessage,
        deliveryInfo,
        boutique,
        selectIndexAddress,
        deleteIndexAddress,
        delivery,
        isLoadDeleteAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult Function(int orderId, String searchQuery)? createOrderSuccessfully,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(
          payments,
          isLoadCreateOrder,
          isUpdateVersionApp,
          isNotification,
          searchQuery,
          address,
          typePay,
          addressDelivery,
          receivingType,
          isUponReceipt,
          typeGiftCard,
          amountPaid,
          uidPickUpPoint,
          boutiques,
          paymentId,
          creatOrderMessage,
          deliveryInfo,
          boutique,
          selectIndexAddress,
          deleteIndexAddress,
          delivery,
          isLoadDeleteAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
    required TResult Function(LoadingErrorButtonGiftCardState value)
        loadErrorButton,
    required TResult Function(ErrorGiftCardState value) error,
    required TResult Function(PreloadDataGiftCardState value)
        preloadDataCompleted,
    required TResult Function(CreateOrderSuccessfullyGiftCardState value)
        createOrderSuccessfully,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardState value)? init,
    TResult? Function(LoadingGiftCardState value)? load,
    TResult? Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult? Function(ErrorGiftCardState value)? error,
    TResult? Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult? Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardState value)? init,
    TResult Function(LoadingGiftCardState value)? load,
    TResult Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult Function(ErrorGiftCardState value)? error,
    TResult Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(this);
    }
    return orElse();
  }
}

abstract class PreloadDataGiftCardState implements GiftCardState {
  const factory PreloadDataGiftCardState(
      {required final List<PaymentItemDataModel> payments,
      required final bool isLoadCreateOrder,
      required final bool isUpdateVersionApp,
      required final bool isNotification,
      required final String searchQuery,
      required final String address,
      required final PaymentItemDataModel typePay,
      required final BasketAddressDataModel addressDelivery,
      required final String receivingType,
      required final bool isUponReceipt,
      required final String typeGiftCard,
      required final int amountPaid,
      required final String uidPickUpPoint,
      required final BoutiquesDataModel boutiques,
      required final String paymentId,
      final String? creatOrderMessage,
      final DeliveryDataModel? deliveryInfo,
      final BoutiqueDataModel? boutique,
      final int? selectIndexAddress,
      final int? deleteIndexAddress,
      final int? delivery,
      final bool? isLoadDeleteAddress}) = _$PreloadDataGiftCardStateImpl;

  List<PaymentItemDataModel> get payments;
  bool get isLoadCreateOrder;
  bool get isUpdateVersionApp;
  bool get isNotification;
  String get searchQuery;
  String get address;
  PaymentItemDataModel get typePay;
  BasketAddressDataModel get addressDelivery;
  String get receivingType;
  bool get isUponReceipt;
  String get typeGiftCard;
  int get amountPaid;
  String get uidPickUpPoint;
  BoutiquesDataModel get boutiques;
  String get paymentId;
  String? get creatOrderMessage;
  DeliveryDataModel? get deliveryInfo;
  BoutiqueDataModel? get boutique;
  int? get selectIndexAddress;
  int? get deleteIndexAddress;
  int? get delivery;
  bool? get isLoadDeleteAddress;

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreloadDataGiftCardStateImplCopyWith<_$PreloadDataGiftCardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateOrderSuccessfullyGiftCardStateImplCopyWith<$Res> {
  factory _$$CreateOrderSuccessfullyGiftCardStateImplCopyWith(
          _$CreateOrderSuccessfullyGiftCardStateImpl value,
          $Res Function(_$CreateOrderSuccessfullyGiftCardStateImpl) then) =
      __$$CreateOrderSuccessfullyGiftCardStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId, String searchQuery});
}

/// @nodoc
class __$$CreateOrderSuccessfullyGiftCardStateImplCopyWithImpl<$Res>
    extends _$GiftCardStateCopyWithImpl<$Res,
        _$CreateOrderSuccessfullyGiftCardStateImpl>
    implements _$$CreateOrderSuccessfullyGiftCardStateImplCopyWith<$Res> {
  __$$CreateOrderSuccessfullyGiftCardStateImplCopyWithImpl(
      _$CreateOrderSuccessfullyGiftCardStateImpl _value,
      $Res Function(_$CreateOrderSuccessfullyGiftCardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? searchQuery = null,
  }) {
    return _then(_$CreateOrderSuccessfullyGiftCardStateImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateOrderSuccessfullyGiftCardStateImpl
    implements CreateOrderSuccessfullyGiftCardState {
  const _$CreateOrderSuccessfullyGiftCardStateImpl(
      {required this.orderId, required this.searchQuery});

  @override
  final int orderId;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'GiftCardState.createOrderSuccessfully(orderId: $orderId, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderSuccessfullyGiftCardStateImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, searchQuery);

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderSuccessfullyGiftCardStateImplCopyWith<
          _$CreateOrderSuccessfullyGiftCardStateImpl>
      get copyWith => __$$CreateOrderSuccessfullyGiftCardStateImplCopyWithImpl<
          _$CreateOrderSuccessfullyGiftCardStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() loadErrorButton,
    required TResult Function(String errorMessage) error,
    required TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)
        preloadDataCompleted,
    required TResult Function(int orderId, String searchQuery)
        createOrderSuccessfully,
  }) {
    return createOrderSuccessfully(orderId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? loadErrorButton,
    TResult? Function(String errorMessage)? error,
    TResult? Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult? Function(int orderId, String searchQuery)? createOrderSuccessfully,
  }) {
    return createOrderSuccessfully?.call(orderId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? loadErrorButton,
    TResult Function(String errorMessage)? error,
    TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String searchQuery,
            String address,
            PaymentItemDataModel typePay,
            BasketAddressDataModel addressDelivery,
            String receivingType,
            bool isUponReceipt,
            String typeGiftCard,
            int amountPaid,
            String uidPickUpPoint,
            BoutiquesDataModel boutiques,
            String paymentId,
            String? creatOrderMessage,
            DeliveryDataModel? deliveryInfo,
            BoutiqueDataModel? boutique,
            int? selectIndexAddress,
            int? deleteIndexAddress,
            int? delivery,
            bool? isLoadDeleteAddress)?
        preloadDataCompleted,
    TResult Function(int orderId, String searchQuery)? createOrderSuccessfully,
    required TResult orElse(),
  }) {
    if (createOrderSuccessfully != null) {
      return createOrderSuccessfully(orderId, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
    required TResult Function(LoadingErrorButtonGiftCardState value)
        loadErrorButton,
    required TResult Function(ErrorGiftCardState value) error,
    required TResult Function(PreloadDataGiftCardState value)
        preloadDataCompleted,
    required TResult Function(CreateOrderSuccessfullyGiftCardState value)
        createOrderSuccessfully,
  }) {
    return createOrderSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardState value)? init,
    TResult? Function(LoadingGiftCardState value)? load,
    TResult? Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult? Function(ErrorGiftCardState value)? error,
    TResult? Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult? Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
  }) {
    return createOrderSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardState value)? init,
    TResult Function(LoadingGiftCardState value)? load,
    TResult Function(LoadingErrorButtonGiftCardState value)? loadErrorButton,
    TResult Function(ErrorGiftCardState value)? error,
    TResult Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
    required TResult orElse(),
  }) {
    if (createOrderSuccessfully != null) {
      return createOrderSuccessfully(this);
    }
    return orElse();
  }
}

abstract class CreateOrderSuccessfullyGiftCardState implements GiftCardState {
  const factory CreateOrderSuccessfullyGiftCardState(
          {required final int orderId, required final String searchQuery}) =
      _$CreateOrderSuccessfullyGiftCardStateImpl;

  int get orderId;
  String get searchQuery;

  /// Create a copy of GiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrderSuccessfullyGiftCardStateImplCopyWith<
          _$CreateOrderSuccessfullyGiftCardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
