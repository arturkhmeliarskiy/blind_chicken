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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
    required TResult Function(PaginationOrdersAccountEvent value)
        paginationProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
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
  }) {
    return preloadData(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return preloadData?.call(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
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
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
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
  }) {
    return updateInfo(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return updateInfo?.call(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
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
  }) {
    return updateInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
  }) {
    return updateInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
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
  }) {
    return paginationProduct(offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
    TResult? Function(int offset, int limit)? paginationProduct,
  }) {
    return paginationProduct?.call(offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    TResult Function(int offset, int limit)? paginationProduct,
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
  }) {
    return paginationProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult? Function(PaginationOrdersAccountEvent value)? paginationProduct,
  }) {
    return paginationProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    TResult Function(PaginationOrdersAccountEvent value)? paginationProduct,
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
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            String phone,
            String name,
            String email,
            List<OrderDataModel> listOrders,
            List<ProductDataModel> favouritesProducts)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            String phone,
            String name,
            String email,
            List<OrderDataModel> listOrders,
            List<ProductDataModel> favouritesProducts)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            String phone,
            String name,
            String email,
            List<OrderDataModel> listOrders,
            List<ProductDataModel> favouritesProducts)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
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
    required TResult Function(
            String phone,
            String name,
            String email,
            List<OrderDataModel> listOrders,
            List<ProductDataModel> favouritesProducts)
        preloadDataCompleted,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            String phone,
            String name,
            String email,
            List<OrderDataModel> listOrders,
            List<ProductDataModel> favouritesProducts)?
        preloadDataCompleted,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            String phone,
            String name,
            String email,
            List<OrderDataModel> listOrders,
            List<ProductDataModel> favouritesProducts)?
        preloadDataCompleted,
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
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
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
    required TResult Function(
            String phone,
            String name,
            String email,
            List<OrderDataModel> listOrders,
            List<ProductDataModel> favouritesProducts)
        preloadDataCompleted,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            String phone,
            String name,
            String email,
            List<OrderDataModel> listOrders,
            List<ProductDataModel> favouritesProducts)?
        preloadDataCompleted,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            String phone,
            String name,
            String email,
            List<OrderDataModel> listOrders,
            List<ProductDataModel> favouritesProducts)?
        preloadDataCompleted,
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
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
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
      List<OrderDataModel> listOrders,
      List<ProductDataModel> favouritesProducts});
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
    Object? listOrders = null,
    Object? favouritesProducts = null,
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
      listOrders: null == listOrders
          ? _value._listOrders
          : listOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderDataModel>,
      favouritesProducts: null == favouritesProducts
          ? _value._favouritesProducts
          : favouritesProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
    ));
  }
}

/// @nodoc

class _$PreloadDataCompletedAccountStateImpl
    implements PreloadDataCompletedAccountState {
  const _$PreloadDataCompletedAccountStateImpl(
      {required this.phone,
      required this.name,
      required this.email,
      required final List<OrderDataModel> listOrders,
      required final List<ProductDataModel> favouritesProducts})
      : _listOrders = listOrders,
        _favouritesProducts = favouritesProducts;

  @override
  final String phone;
  @override
  final String name;
  @override
  final String email;
  final List<OrderDataModel> _listOrders;
  @override
  List<OrderDataModel> get listOrders {
    if (_listOrders is EqualUnmodifiableListView) return _listOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOrders);
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
  String toString() {
    return 'AccountState.preloadDataCompleted(phone: $phone, name: $name, email: $email, listOrders: $listOrders, favouritesProducts: $favouritesProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedAccountStateImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other._listOrders, _listOrders) &&
            const DeepCollectionEquality()
                .equals(other._favouritesProducts, _favouritesProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      phone,
      name,
      email,
      const DeepCollectionEquality().hash(_listOrders),
      const DeepCollectionEquality().hash(_favouritesProducts));

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
    required TResult Function(
            String phone,
            String name,
            String email,
            List<OrderDataModel> listOrders,
            List<ProductDataModel> favouritesProducts)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(
        phone, name, email, listOrders, favouritesProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            String phone,
            String name,
            String email,
            List<OrderDataModel> listOrders,
            List<ProductDataModel> favouritesProducts)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(
        phone, name, email, listOrders, favouritesProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            String phone,
            String name,
            String email,
            List<OrderDataModel> listOrders,
            List<ProductDataModel> favouritesProducts)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(
          phone, name, email, listOrders, favouritesProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
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
          required final List<OrderDataModel> listOrders,
          required final List<ProductDataModel> favouritesProducts}) =
      _$PreloadDataCompletedAccountStateImpl;

  String get phone;
  String get name;
  String get email;
  List<OrderDataModel> get listOrders;
  List<ProductDataModel> get favouritesProducts;
  @JsonKey(ignore: true)
  _$$PreloadDataCompletedAccountStateImplCopyWith<
          _$PreloadDataCompletedAccountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
