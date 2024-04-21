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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GiftCardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNotification) preloadData,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isNotification)? preloadData,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNotification)? preloadData,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
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
}

/// @nodoc
abstract class _$$InitGiftCardEventImplCopyWith<$Res> {
  factory _$$InitGiftCardEventImplCopyWith(_$InitGiftCardEventImpl value,
          $Res Function(_$InitGiftCardEventImpl) then) =
      __$$InitGiftCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isNotification});
}

/// @nodoc
class __$$InitGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res, _$InitGiftCardEventImpl>
    implements _$$InitGiftCardEventImplCopyWith<$Res> {
  __$$InitGiftCardEventImplCopyWithImpl(_$InitGiftCardEventImpl _value,
      $Res Function(_$InitGiftCardEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNotification = null,
  }) {
    return _then(_$InitGiftCardEventImpl(
      isNotification: null == isNotification
          ? _value.isNotification
          : isNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitGiftCardEventImpl implements InitGiftCardEvent {
  const _$InitGiftCardEventImpl({required this.isNotification});

  @override
  final bool isNotification;

  @override
  String toString() {
    return 'GiftCardEvent.preloadData(isNotification: $isNotification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitGiftCardEventImpl &&
            (identical(other.isNotification, isNotification) ||
                other.isNotification == isNotification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isNotification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitGiftCardEventImplCopyWith<_$InitGiftCardEventImpl> get copyWith =>
      __$$InitGiftCardEventImplCopyWithImpl<_$InitGiftCardEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNotification) preloadData,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) {
    return preloadData(isNotification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isNotification)? preloadData,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) {
    return preloadData?.call(isNotification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNotification)? preloadData,
    TResult Function(CatalogGiftCardRequest request)? createOrder,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(isNotification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
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
  const factory InitGiftCardEvent({required final bool isNotification}) =
      _$InitGiftCardEventImpl;

  bool get isNotification;
  @JsonKey(ignore: true)
  _$$InitGiftCardEventImplCopyWith<_$InitGiftCardEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderGiftCardEventImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderGiftCardEventImplCopyWith<_$CreateOrderGiftCardEventImpl>
      get copyWith => __$$CreateOrderGiftCardEventImplCopyWithImpl<
          _$CreateOrderGiftCardEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNotification) preloadData,
    required TResult Function(CatalogGiftCardRequest request) createOrder,
  }) {
    return createOrder(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isNotification)? preloadData,
    TResult? Function(CatalogGiftCardRequest request)? createOrder,
  }) {
    return createOrder?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNotification)? preloadData,
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
    required TResult Function(CreateOrderGiftCardEvent value) createOrder,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(CreateOrderGiftCardEvent value)? createOrder,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
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
  @JsonKey(ignore: true)
  _$$CreateOrderGiftCardEventImplCopyWith<_$CreateOrderGiftCardEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GiftCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)
        preloadDataCompleted,
    required TResult Function(int orderId) createOrderSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)?
        preloadDataCompleted,
    TResult? Function(int orderId)? createOrderSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)?
        preloadDataCompleted,
    TResult Function(int orderId)? createOrderSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
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
    TResult? Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    TResult? Function(CreateOrderSuccessfullyGiftCardState value)?
        createOrderSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardState value)? init,
    TResult Function(LoadingGiftCardState value)? load,
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
}

/// @nodoc

class _$InitGiftCardStateImpl implements InitGiftCardState {
  const _$InitGiftCardStateImpl();

  @override
  String toString() {
    return 'GiftCardState.init()';
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)
        preloadDataCompleted,
    required TResult Function(int orderId) createOrderSuccessfully,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)?
        preloadDataCompleted,
    TResult? Function(int orderId)? createOrderSuccessfully,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)?
        preloadDataCompleted,
    TResult Function(int orderId)? createOrderSuccessfully,
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
}

/// @nodoc

class _$LoadingGiftCardStateImpl implements LoadingGiftCardState {
  const _$LoadingGiftCardStateImpl();

  @override
  String toString() {
    return 'GiftCardState.load()';
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)
        preloadDataCompleted,
    required TResult Function(int orderId) createOrderSuccessfully,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)?
        preloadDataCompleted,
    TResult? Function(int orderId)? createOrderSuccessfully,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)?
        preloadDataCompleted,
    TResult Function(int orderId)? createOrderSuccessfully,
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
      String? creatOrderMessage});
}

/// @nodoc
class __$$PreloadDataGiftCardStateImplCopyWithImpl<$Res>
    extends _$GiftCardStateCopyWithImpl<$Res, _$PreloadDataGiftCardStateImpl>
    implements _$$PreloadDataGiftCardStateImplCopyWith<$Res> {
  __$$PreloadDataGiftCardStateImplCopyWithImpl(
      _$PreloadDataGiftCardStateImpl _value,
      $Res Function(_$PreloadDataGiftCardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = null,
    Object? isLoadCreateOrder = null,
    Object? isUpdateVersionApp = null,
    Object? isNotification = null,
    Object? creatOrderMessage = freezed,
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
      creatOrderMessage: freezed == creatOrderMessage
          ? _value.creatOrderMessage
          : creatOrderMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PreloadDataGiftCardStateImpl implements PreloadDataGiftCardState {
  const _$PreloadDataGiftCardStateImpl(
      {required final List<PaymentItemDataModel> payments,
      required this.isLoadCreateOrder,
      required this.isUpdateVersionApp,
      required this.isNotification,
      this.creatOrderMessage})
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
  final String? creatOrderMessage;

  @override
  String toString() {
    return 'GiftCardState.preloadDataCompleted(payments: $payments, isLoadCreateOrder: $isLoadCreateOrder, isUpdateVersionApp: $isUpdateVersionApp, isNotification: $isNotification, creatOrderMessage: $creatOrderMessage)';
  }

  @override
  bool operator ==(dynamic other) {
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
            (identical(other.creatOrderMessage, creatOrderMessage) ||
                other.creatOrderMessage == creatOrderMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_payments),
      isLoadCreateOrder,
      isUpdateVersionApp,
      isNotification,
      creatOrderMessage);

  @JsonKey(ignore: true)
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
    required TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)
        preloadDataCompleted,
    required TResult Function(int orderId) createOrderSuccessfully,
  }) {
    return preloadDataCompleted(payments, isLoadCreateOrder, isUpdateVersionApp,
        isNotification, creatOrderMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)?
        preloadDataCompleted,
    TResult? Function(int orderId)? createOrderSuccessfully,
  }) {
    return preloadDataCompleted?.call(payments, isLoadCreateOrder,
        isUpdateVersionApp, isNotification, creatOrderMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)?
        preloadDataCompleted,
    TResult Function(int orderId)? createOrderSuccessfully,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(payments, isLoadCreateOrder,
          isUpdateVersionApp, isNotification, creatOrderMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
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
      final String? creatOrderMessage}) = _$PreloadDataGiftCardStateImpl;

  List<PaymentItemDataModel> get payments;
  bool get isLoadCreateOrder;
  bool get isUpdateVersionApp;
  bool get isNotification;
  String? get creatOrderMessage;
  @JsonKey(ignore: true)
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
  $Res call({int orderId});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$CreateOrderSuccessfullyGiftCardStateImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateOrderSuccessfullyGiftCardStateImpl
    implements CreateOrderSuccessfullyGiftCardState {
  const _$CreateOrderSuccessfullyGiftCardStateImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'GiftCardState.createOrderSuccessfully(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderSuccessfullyGiftCardStateImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
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
    required TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)
        preloadDataCompleted,
    required TResult Function(int orderId) createOrderSuccessfully,
  }) {
    return createOrderSuccessfully(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)?
        preloadDataCompleted,
    TResult? Function(int orderId)? createOrderSuccessfully,
  }) {
    return createOrderSuccessfully?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<PaymentItemDataModel> payments,
            bool isLoadCreateOrder,
            bool isUpdateVersionApp,
            bool isNotification,
            String? creatOrderMessage)?
        preloadDataCompleted,
    TResult Function(int orderId)? createOrderSuccessfully,
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
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
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
          {required final int orderId}) =
      _$CreateOrderSuccessfullyGiftCardStateImpl;

  int get orderId;
  @JsonKey(ignore: true)
  _$$CreateOrderSuccessfullyGiftCardStateImplCopyWith<
          _$CreateOrderSuccessfullyGiftCardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
