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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult? Function(GetOrdersAccountEvent value)? getOrders,
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
    TResult Function(GetOrdersAccountEvent value)? getOrders,
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitAccountEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, name, email);

  @JsonKey(ignore: true)
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
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return preloadData(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return preloadData?.call(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
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
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
  @JsonKey(ignore: true)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInfoAccountEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, name, email);

  @JsonKey(ignore: true)
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
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return updateInfo(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return updateInfo?.call(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
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
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
  @JsonKey(ignore: true)
  _$$UpdateInfoAccountEventImplCopyWith<_$UpdateInfoAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginationOrdersAccountEventImplCopyWith<$Res> {
  factory _$$PaginationOrdersAccountEventImplCopyWith(
          _$PaginationOrdersAccountEventImpl value,
          $Res Function(_$PaginationOrdersAccountEventImpl) then) =
      __$$PaginationOrdersAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int offset, int limit});
}

/// @nodoc
class __$$PaginationOrdersAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$PaginationOrdersAccountEventImpl>
    implements _$$PaginationOrdersAccountEventImplCopyWith<$Res> {
  __$$PaginationOrdersAccountEventImplCopyWithImpl(
      _$PaginationOrdersAccountEventImpl _value,
      $Res Function(_$PaginationOrdersAccountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$PaginationOrdersAccountEventImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PaginationOrdersAccountEventImpl
    implements PaginationOrdersAccountEvent {
  const _$PaginationOrdersAccountEventImpl(
      {required this.offset, required this.limit});

  @override
  final int offset;
  @override
  final int limit;

  @override
  String toString() {
    return 'AccountEvent.paginationProduct(offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationOrdersAccountEventImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationOrdersAccountEventImplCopyWith<
          _$PaginationOrdersAccountEventImpl>
      get copyWith => __$$PaginationOrdersAccountEventImplCopyWithImpl<
          _$PaginationOrdersAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return paginationProduct(offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return paginationProduct?.call(offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
    required TResult orElse(),
  }) {
    if (paginationProduct != null) {
      return paginationProduct(offset, limit);
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
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
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (paginationProduct != null) {
      return paginationProduct(this);
    }
    return orElse();
  }
}

abstract class PaginationOrdersAccountEvent implements AccountEvent {
  const factory PaginationOrdersAccountEvent(
      {required final int offset,
      required final int limit}) = _$PaginationOrdersAccountEventImpl;

  int get offset;
  int get limit;
  @JsonKey(ignore: true)
  _$$PaginationOrdersAccountEventImplCopyWith<
          _$PaginationOrdersAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
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
}

/// @nodoc

class _$GetOrdersAccountEventImpl implements GetOrdersAccountEvent {
  const _$GetOrdersAccountEventImpl();

  @override
  String toString() {
    return 'AccountEvent.getOrders()';
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return getOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return getOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
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
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoOrderAccountEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
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
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return getInfoOrder(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return getInfoOrder?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
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
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
  @JsonKey(ignore: true)
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
  $Res call({String id});
}

/// @nodoc
class __$$GetInfoPayOrderAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetInfoPayOrderAccountEventImpl>
    implements _$$GetInfoPayOrderAccountEventImplCopyWith<$Res> {
  __$$GetInfoPayOrderAccountEventImplCopyWithImpl(
      _$GetInfoPayOrderAccountEventImpl _value,
      $Res Function(_$GetInfoPayOrderAccountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetInfoPayOrderAccountEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInfoPayOrderAccountEventImpl implements GetInfoPayOrderAccountEvent {
  const _$GetInfoPayOrderAccountEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AccountEvent.getInfoPayOrder(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoPayOrderAccountEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
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
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return getInfoPayOrder(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return getInfoPayOrder?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
    required TResult orElse(),
  }) {
    if (getInfoPayOrder != null) {
      return getInfoPayOrder(id);
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
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
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (getInfoPayOrder != null) {
      return getInfoPayOrder(this);
    }
    return orElse();
  }
}

abstract class GetInfoPayOrderAccountEvent implements AccountEvent {
  const factory GetInfoPayOrderAccountEvent({required final String id}) =
      _$GetInfoPayOrderAccountEventImpl;

  String get id;
  @JsonKey(ignore: true)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayOrderAccountEventImpl &&
            (identical(other.idForPay, idForPay) ||
                other.idForPay == idForPay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idForPay);

  @JsonKey(ignore: true)
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
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return payOrder(idForPay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return payOrder?.call(idForPay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
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
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
  @JsonKey(ignore: true)
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
}

/// @nodoc

class _$LogOutAccountEventImpl implements LogOutAccountEvent {
  const _$LogOutAccountEventImpl();

  @override
  String toString() {
    return 'AccountEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
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
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavouriteProductAccountEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, product);

  @JsonKey(ignore: true)
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
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return addFavouriteProduct(index, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return addFavouriteProduct?.call(index, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
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
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
  @JsonKey(ignore: true)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavouriteProductAccountEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
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
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return deleteFavouriteProduct(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return deleteFavouriteProduct?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
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
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
  @JsonKey(ignore: true)
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
  $Res call({String code});
}

/// @nodoc
class __$$GetInfoProductAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetInfoProductAccountEventImpl>
    implements _$$GetInfoProductAccountEventImplCopyWith<$Res> {
  __$$GetInfoProductAccountEventImplCopyWithImpl(
      _$GetInfoProductAccountEventImpl _value,
      $Res Function(_$GetInfoProductAccountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$GetInfoProductAccountEventImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInfoProductAccountEventImpl implements GetInfoProductAccountEvent {
  const _$GetInfoProductAccountEventImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'AccountEvent.getInfoProduct(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoProductAccountEventImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
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
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return getInfoProduct(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return getInfoProduct?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
    required TResult orElse(),
  }) {
    if (getInfoProduct != null) {
      return getInfoProduct(code);
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
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
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
    required TResult orElse(),
  }) {
    if (getInfoProduct != null) {
      return getInfoProduct(this);
    }
    return orElse();
  }
}

abstract class GetInfoProductAccountEvent implements AccountEvent {
  const factory GetInfoProductAccountEvent({required final String code}) =
      _$GetInfoProductAccountEventImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$GetInfoProductAccountEventImplCopyWith<_$GetInfoProductAccountEventImpl>
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
  bool operator ==(dynamic other) {
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
    required TResult Function(int offset, int limit) paginationProduct,
    required TResult Function() getOrders,
    required TResult Function(String id) getInfoOrder,
    required TResult Function(String id) getInfoPayOrder,
    required TResult Function(String idForPay) payOrder,
    required TResult Function() logOut,
    required TResult Function(int index, ProductDataModel product)
        addFavouriteProduct,
    required TResult Function(int index) deleteFavouriteProduct,
    required TResult Function(String code) getInfoProduct,
    required TResult Function() goBackProductInfo,
  }) {
    return goBackProductInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
    TResult? Function()? getOrders,
    TResult? Function(String id)? getInfoOrder,
    TResult? Function(String id)? getInfoPayOrder,
    TResult? Function(String idForPay)? payOrder,
    TResult? Function()? logOut,
    TResult? Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult? Function(int index)? deleteFavouriteProduct,
    TResult? Function(String code)? getInfoProduct,
    TResult? Function()? goBackProductInfo,
  }) {
    return goBackProductInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    TResult Function()? getOrders,
    TResult Function(String id)? getInfoOrder,
    TResult Function(String id)? getInfoPayOrder,
    TResult Function(String idForPay)? payOrder,
    TResult Function()? logOut,
    TResult Function(int index, ProductDataModel product)? addFavouriteProduct,
    TResult Function(int index)? deleteFavouriteProduct,
    TResult Function(String code)? getInfoProduct,
    TResult Function()? goBackProductInfo,
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
    required TResult Function(GetInfoOrderAccountEvent value) getInfoOrder,
    required TResult Function(GetInfoPayOrderAccountEvent value)
        getInfoPayOrder,
    required TResult Function(PayOrderAccountEvent value) payOrder,
    required TResult Function(LogOutAccountEvent value) logOut,
    required TResult Function(AddFavouriteProductAccountEvent value)
        addFavouriteProduct,
    required TResult Function(DeleteFavouriteProductAccountEvent value)
        deleteFavouriteProduct,
    required TResult Function(GetInfoProductAccountEvent value) getInfoProduct,
    required TResult Function(GoBackProductInfoCategotyAccountEvent value)
        goBackProductInfo,
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
    TResult? Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult? Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult? Function(PayOrderAccountEvent value)? payOrder,
    TResult? Function(LogOutAccountEvent value)? logOut,
    TResult? Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult? Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult? Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult? Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
    TResult Function(GetInfoOrderAccountEvent value)? getInfoOrder,
    TResult Function(GetInfoPayOrderAccountEvent value)? getInfoPayOrder,
    TResult Function(PayOrderAccountEvent value)? payOrder,
    TResult Function(LogOutAccountEvent value)? logOut,
    TResult Function(AddFavouriteProductAccountEvent value)?
        addFavouriteProduct,
    TResult Function(DeleteFavouriteProductAccountEvent value)?
        deleteFavouriteProduct,
    TResult Function(GetInfoProductAccountEvent value)? getInfoProduct,
    TResult Function(GoBackProductInfoCategotyAccountEvent value)?
        goBackProductInfo,
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
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String url) payOrder,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String url)? payOrder,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String url)? payOrder,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
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
}

/// @nodoc

class _$InitAccountStateImpl implements InitAccountState {
  const _$InitAccountStateImpl();

  @override
  String toString() {
    return 'AccountState.init()';
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(String url) payOrder,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String url)? payOrder,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String url)? payOrder,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
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
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
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
}

/// @nodoc

class _$LoadingAccountStateImpl implements LoadingAccountState {
  const _$LoadingAccountStateImpl();

  @override
  String toString() {
    return 'AccountState.load()';
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(String url) payOrder,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String url)? payOrder,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String url)? payOrder,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
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
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayOrderAccountStateImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
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
    required TResult Function(String url) payOrder,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
  }) {
    return payOrder(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String url)? payOrder,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
  }) {
    return payOrder?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String url)? payOrder,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
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
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
  }) {
    return payOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
  }) {
    return payOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
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
  @JsonKey(ignore: true)
  _$$PayOrderAccountStateImplCopyWith<_$PayOrderAccountStateImpl>
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
      List<OrderItemDataModel> orders,
      List<ProductDataModel> favouritesProducts,
      List<int> favouritesProductsId,
      List<String> listProductsCode,
      List<ProductDataModel> listProdcutsStyle,
      List<ProductDataModel> listProdcutsAlso,
      List<ProductDataModel> listProdcutsBrand,
      FavouritesCatalogInfoDataModel? favouritesProductsInfo,
      DetailProductDataModel? detailsProduct,
      UserDataModel? user,
      OrderInfoDataModel? orderInfo});

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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? name = null,
    Object? email = null,
    Object? countOrders = null,
    Object? orders = null,
    Object? favouritesProducts = null,
    Object? favouritesProductsId = null,
    Object? listProductsCode = null,
    Object? listProdcutsStyle = null,
    Object? listProdcutsAlso = null,
    Object? listProdcutsBrand = null,
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
      required final List<OrderItemDataModel> orders,
      required final List<ProductDataModel> favouritesProducts,
      required final List<int> favouritesProductsId,
      required final List<String> listProductsCode,
      required final List<ProductDataModel> listProdcutsStyle,
      required final List<ProductDataModel> listProdcutsAlso,
      required final List<ProductDataModel> listProdcutsBrand,
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
        _listProdcutsBrand = listProdcutsBrand;

  @override
  final String phone;
  @override
  final String name;
  @override
  final String email;
  @override
  final String countOrders;
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
    return 'AccountState.preloadDataCompleted(phone: $phone, name: $name, email: $email, countOrders: $countOrders, orders: $orders, favouritesProducts: $favouritesProducts, favouritesProductsId: $favouritesProductsId, listProductsCode: $listProductsCode, listProdcutsStyle: $listProdcutsStyle, listProdcutsAlso: $listProdcutsAlso, listProdcutsBrand: $listProdcutsBrand, favouritesProductsInfo: $favouritesProductsInfo, detailsProduct: $detailsProduct, user: $user, orderInfo: $orderInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedAccountStateImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.countOrders, countOrders) ||
                other.countOrders == countOrders) &&
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
            (identical(other.favouritesProductsInfo, favouritesProductsInfo) ||
                other.favouritesProductsInfo == favouritesProductsInfo) &&
            (identical(other.detailsProduct, detailsProduct) ||
                other.detailsProduct == detailsProduct) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.orderInfo, orderInfo) ||
                other.orderInfo == orderInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      phone,
      name,
      email,
      countOrders,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_favouritesProducts),
      const DeepCollectionEquality().hash(_favouritesProductsId),
      const DeepCollectionEquality().hash(_listProductsCode),
      const DeepCollectionEquality().hash(_listProdcutsStyle),
      const DeepCollectionEquality().hash(_listProdcutsAlso),
      const DeepCollectionEquality().hash(_listProdcutsBrand),
      favouritesProductsInfo,
      detailsProduct,
      user,
      orderInfo);

  @JsonKey(ignore: true)
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
    required TResult Function(String url) payOrder,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
  }) {
    return preloadDataCompleted(
        phone,
        name,
        email,
        countOrders,
        orders,
        favouritesProducts,
        favouritesProductsId,
        listProductsCode,
        listProdcutsStyle,
        listProdcutsAlso,
        listProdcutsBrand,
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
    TResult? Function(String url)? payOrder,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
  }) {
    return preloadDataCompleted?.call(
        phone,
        name,
        email,
        countOrders,
        orders,
        favouritesProducts,
        favouritesProductsId,
        listProductsCode,
        listProdcutsStyle,
        listProdcutsAlso,
        listProdcutsBrand,
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
    TResult Function(String url)? payOrder,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(
          phone,
          name,
          email,
          countOrders,
          orders,
          favouritesProducts,
          favouritesProductsId,
          listProductsCode,
          listProdcutsStyle,
          listProdcutsAlso,
          listProdcutsBrand,
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
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
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
          required final List<OrderItemDataModel> orders,
          required final List<ProductDataModel> favouritesProducts,
          required final List<int> favouritesProductsId,
          required final List<String> listProductsCode,
          required final List<ProductDataModel> listProdcutsStyle,
          required final List<ProductDataModel> listProdcutsAlso,
          required final List<ProductDataModel> listProdcutsBrand,
          final FavouritesCatalogInfoDataModel? favouritesProductsInfo,
          final DetailProductDataModel? detailsProduct,
          final UserDataModel? user,
          final OrderInfoDataModel? orderInfo}) =
      _$PreloadDataCompletedAccountStateImpl;

  String get phone;
  String get name;
  String get email;
  String get countOrders;
  List<OrderItemDataModel> get orders;
  List<ProductDataModel> get favouritesProducts;
  List<int> get favouritesProductsId;
  List<String> get listProductsCode;
  List<ProductDataModel> get listProdcutsStyle;
  List<ProductDataModel> get listProdcutsAlso;
  List<ProductDataModel> get listProdcutsBrand;
  FavouritesCatalogInfoDataModel? get favouritesProductsInfo;
  DetailProductDataModel? get detailsProduct;
  UserDataModel? get user;
  OrderInfoDataModel? get orderInfo;
  @JsonKey(ignore: true)
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
}

/// @nodoc

class _$LogOutAccountStateImpl implements LogOutAccountState {
  const _$LogOutAccountStateImpl();

  @override
  String toString() {
    return 'AccountState.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
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
    required TResult Function(String url) payOrder,
    required TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)
        preloadDataCompleted,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String url)? payOrder,
    TResult? Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String url)? payOrder,
    TResult Function(
            String phone,
            String name,
            String email,
            String countOrders,
            List<OrderItemDataModel> orders,
            List<ProductDataModel> favouritesProducts,
            List<int> favouritesProductsId,
            List<String> listProductsCode,
            List<ProductDataModel> listProdcutsStyle,
            List<ProductDataModel> listProdcutsAlso,
            List<ProductDataModel> listProdcutsBrand,
            FavouritesCatalogInfoDataModel? favouritesProductsInfo,
            DetailProductDataModel? detailsProduct,
            UserDataModel? user,
            OrderInfoDataModel? orderInfo)?
        preloadDataCompleted,
    TResult Function()? logOut,
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
    required TResult Function(PayOrderAccountState value) payOrder,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
    required TResult Function(LogOutAccountState value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PayOrderAccountState value)? payOrder,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult? Function(LogOutAccountState value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PayOrderAccountState value)? payOrder,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    TResult Function(LogOutAccountState value)? logOut,
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
