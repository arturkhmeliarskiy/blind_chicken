// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserInfoRequest {
  String get code => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get hashToken => throw _privateConstructorUsedError;
  String get tel => throw _privateConstructorUsedError;
  String get hashTokenTel => throw _privateConstructorUsedError;
  List<String> get favorites => throw _privateConstructorUsedError;
  List<BasketRequest> get basket => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInfoRequestCopyWith<UserInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoRequestCopyWith<$Res> {
  factory $UserInfoRequestCopyWith(
          UserInfoRequest value, $Res Function(UserInfoRequest) then) =
      _$UserInfoRequestCopyWithImpl<$Res, UserInfoRequest>;
  @useResult
  $Res call(
      {String code,
      String token,
      String hashToken,
      String tel,
      String hashTokenTel,
      List<String> favorites,
      List<BasketRequest> basket});
}

/// @nodoc
class _$UserInfoRequestCopyWithImpl<$Res, $Val extends UserInfoRequest>
    implements $UserInfoRequestCopyWith<$Res> {
  _$UserInfoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? token = null,
    Object? hashToken = null,
    Object? tel = null,
    Object? hashTokenTel = null,
    Object? favorites = null,
    Object? basket = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      hashToken: null == hashToken
          ? _value.hashToken
          : hashToken // ignore: cast_nullable_to_non_nullable
              as String,
      tel: null == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
      hashTokenTel: null == hashTokenTel
          ? _value.hashTokenTel
          : hashTokenTel // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      basket: null == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<BasketRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoRequestImplCopyWith<$Res>
    implements $UserInfoRequestCopyWith<$Res> {
  factory _$$UserInfoRequestImplCopyWith(_$UserInfoRequestImpl value,
          $Res Function(_$UserInfoRequestImpl) then) =
      __$$UserInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String token,
      String hashToken,
      String tel,
      String hashTokenTel,
      List<String> favorites,
      List<BasketRequest> basket});
}

/// @nodoc
class __$$UserInfoRequestImplCopyWithImpl<$Res>
    extends _$UserInfoRequestCopyWithImpl<$Res, _$UserInfoRequestImpl>
    implements _$$UserInfoRequestImplCopyWith<$Res> {
  __$$UserInfoRequestImplCopyWithImpl(
      _$UserInfoRequestImpl _value, $Res Function(_$UserInfoRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? token = null,
    Object? hashToken = null,
    Object? tel = null,
    Object? hashTokenTel = null,
    Object? favorites = null,
    Object? basket = null,
  }) {
    return _then(_$UserInfoRequestImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      hashToken: null == hashToken
          ? _value.hashToken
          : hashToken // ignore: cast_nullable_to_non_nullable
              as String,
      tel: null == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
      hashTokenTel: null == hashTokenTel
          ? _value.hashTokenTel
          : hashTokenTel // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      basket: null == basket
          ? _value._basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<BasketRequest>,
    ));
  }
}

/// @nodoc

class _$UserInfoRequestImpl extends _UserInfoRequest {
  _$UserInfoRequestImpl(
      {required this.code,
      required this.token,
      required this.hashToken,
      required this.tel,
      required this.hashTokenTel,
      required final List<String> favorites,
      required final List<BasketRequest> basket})
      : _favorites = favorites,
        _basket = basket,
        super._();

  @override
  final String code;
  @override
  final String token;
  @override
  final String hashToken;
  @override
  final String tel;
  @override
  final String hashTokenTel;
  final List<String> _favorites;
  @override
  List<String> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  final List<BasketRequest> _basket;
  @override
  List<BasketRequest> get basket {
    if (_basket is EqualUnmodifiableListView) return _basket;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_basket);
  }

  @override
  String toString() {
    return 'UserInfoRequest(code: $code, token: $token, hashToken: $hashToken, tel: $tel, hashTokenTel: $hashTokenTel, favorites: $favorites, basket: $basket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoRequestImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.hashToken, hashToken) ||
                other.hashToken == hashToken) &&
            (identical(other.tel, tel) || other.tel == tel) &&
            (identical(other.hashTokenTel, hashTokenTel) ||
                other.hashTokenTel == hashTokenTel) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            const DeepCollectionEquality().equals(other._basket, _basket));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      token,
      hashToken,
      tel,
      hashTokenTel,
      const DeepCollectionEquality().hash(_favorites),
      const DeepCollectionEquality().hash(_basket));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoRequestImplCopyWith<_$UserInfoRequestImpl> get copyWith =>
      __$$UserInfoRequestImplCopyWithImpl<_$UserInfoRequestImpl>(
          this, _$identity);
}

abstract class _UserInfoRequest extends UserInfoRequest {
  factory _UserInfoRequest(
      {required final String code,
      required final String token,
      required final String hashToken,
      required final String tel,
      required final String hashTokenTel,
      required final List<String> favorites,
      required final List<BasketRequest> basket}) = _$UserInfoRequestImpl;
  _UserInfoRequest._() : super._();

  @override
  String get code;
  @override
  String get token;
  @override
  String get hashToken;
  @override
  String get tel;
  @override
  String get hashTokenTel;
  @override
  List<String> get favorites;
  @override
  List<BasketRequest> get basket;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoRequestImplCopyWith<_$UserInfoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
