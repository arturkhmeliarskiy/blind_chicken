// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  String? get phone => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get virtualcardscod => throw _privateConstructorUsedError;
  @JsonKey(name: 'e')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'sum_buy')
  int? get sumBuy => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_discount')
  int? get nextDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'buy_for_next_discount')
  int? get buyForNext => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_bonus')
  int? get activeBonus => throw _privateConstructorUsedError;
  @JsonKey(name: 'all_bonus')
  int? get allBonus => throw _privateConstructorUsedError;
  @JsonKey(name: 'schem_loyalty')
  List<SchemLoyaltyResponse>? get schemLoyalty =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res, UserResponse>;
  @useResult
  $Res call(
      {String? phone,
      int? discount,
      String? name,
      String? email,
      String? virtualcardscod,
      @JsonKey(name: 'e') String? message,
      @JsonKey(name: 'sum_buy') int? sumBuy,
      @JsonKey(name: 'next_discount') int? nextDiscount,
      @JsonKey(name: 'buy_for_next_discount') int? buyForNext,
      @JsonKey(name: 'active_bonus') int? activeBonus,
      @JsonKey(name: 'all_bonus') int? allBonus,
      @JsonKey(name: 'schem_loyalty')
      List<SchemLoyaltyResponse>? schemLoyalty});
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? discount = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? virtualcardscod = freezed,
    Object? message = freezed,
    Object? sumBuy = freezed,
    Object? nextDiscount = freezed,
    Object? buyForNext = freezed,
    Object? activeBonus = freezed,
    Object? allBonus = freezed,
    Object? schemLoyalty = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      virtualcardscod: freezed == virtualcardscod
          ? _value.virtualcardscod
          : virtualcardscod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      sumBuy: freezed == sumBuy
          ? _value.sumBuy
          : sumBuy // ignore: cast_nullable_to_non_nullable
              as int?,
      nextDiscount: freezed == nextDiscount
          ? _value.nextDiscount
          : nextDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      buyForNext: freezed == buyForNext
          ? _value.buyForNext
          : buyForNext // ignore: cast_nullable_to_non_nullable
              as int?,
      activeBonus: freezed == activeBonus
          ? _value.activeBonus
          : activeBonus // ignore: cast_nullable_to_non_nullable
              as int?,
      allBonus: freezed == allBonus
          ? _value.allBonus
          : allBonus // ignore: cast_nullable_to_non_nullable
              as int?,
      schemLoyalty: freezed == schemLoyalty
          ? _value.schemLoyalty
          : schemLoyalty // ignore: cast_nullable_to_non_nullable
              as List<SchemLoyaltyResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserResponseImplCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$UserResponseImplCopyWith(
          _$UserResponseImpl value, $Res Function(_$UserResponseImpl) then) =
      __$$UserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? phone,
      int? discount,
      String? name,
      String? email,
      String? virtualcardscod,
      @JsonKey(name: 'e') String? message,
      @JsonKey(name: 'sum_buy') int? sumBuy,
      @JsonKey(name: 'next_discount') int? nextDiscount,
      @JsonKey(name: 'buy_for_next_discount') int? buyForNext,
      @JsonKey(name: 'active_bonus') int? activeBonus,
      @JsonKey(name: 'all_bonus') int? allBonus,
      @JsonKey(name: 'schem_loyalty')
      List<SchemLoyaltyResponse>? schemLoyalty});
}

/// @nodoc
class __$$UserResponseImplCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res, _$UserResponseImpl>
    implements _$$UserResponseImplCopyWith<$Res> {
  __$$UserResponseImplCopyWithImpl(
      _$UserResponseImpl _value, $Res Function(_$UserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? discount = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? virtualcardscod = freezed,
    Object? message = freezed,
    Object? sumBuy = freezed,
    Object? nextDiscount = freezed,
    Object? buyForNext = freezed,
    Object? activeBonus = freezed,
    Object? allBonus = freezed,
    Object? schemLoyalty = freezed,
  }) {
    return _then(_$UserResponseImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      virtualcardscod: freezed == virtualcardscod
          ? _value.virtualcardscod
          : virtualcardscod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      sumBuy: freezed == sumBuy
          ? _value.sumBuy
          : sumBuy // ignore: cast_nullable_to_non_nullable
              as int?,
      nextDiscount: freezed == nextDiscount
          ? _value.nextDiscount
          : nextDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      buyForNext: freezed == buyForNext
          ? _value.buyForNext
          : buyForNext // ignore: cast_nullable_to_non_nullable
              as int?,
      activeBonus: freezed == activeBonus
          ? _value.activeBonus
          : activeBonus // ignore: cast_nullable_to_non_nullable
              as int?,
      allBonus: freezed == allBonus
          ? _value.allBonus
          : allBonus // ignore: cast_nullable_to_non_nullable
              as int?,
      schemLoyalty: freezed == schemLoyalty
          ? _value._schemLoyalty
          : schemLoyalty // ignore: cast_nullable_to_non_nullable
              as List<SchemLoyaltyResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseImpl extends _UserResponse {
  _$UserResponseImpl(
      {this.phone,
      this.discount,
      this.name,
      this.email,
      this.virtualcardscod,
      @JsonKey(name: 'e') this.message,
      @JsonKey(name: 'sum_buy') this.sumBuy,
      @JsonKey(name: 'next_discount') this.nextDiscount,
      @JsonKey(name: 'buy_for_next_discount') this.buyForNext,
      @JsonKey(name: 'active_bonus') this.activeBonus,
      @JsonKey(name: 'all_bonus') this.allBonus,
      @JsonKey(name: 'schem_loyalty')
      final List<SchemLoyaltyResponse>? schemLoyalty})
      : _schemLoyalty = schemLoyalty,
        super._();

  factory _$UserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseImplFromJson(json);

  @override
  final String? phone;
  @override
  final int? discount;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? virtualcardscod;
  @override
  @JsonKey(name: 'e')
  final String? message;
  @override
  @JsonKey(name: 'sum_buy')
  final int? sumBuy;
  @override
  @JsonKey(name: 'next_discount')
  final int? nextDiscount;
  @override
  @JsonKey(name: 'buy_for_next_discount')
  final int? buyForNext;
  @override
  @JsonKey(name: 'active_bonus')
  final int? activeBonus;
  @override
  @JsonKey(name: 'all_bonus')
  final int? allBonus;
  final List<SchemLoyaltyResponse>? _schemLoyalty;
  @override
  @JsonKey(name: 'schem_loyalty')
  List<SchemLoyaltyResponse>? get schemLoyalty {
    final value = _schemLoyalty;
    if (value == null) return null;
    if (_schemLoyalty is EqualUnmodifiableListView) return _schemLoyalty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserResponse(phone: $phone, discount: $discount, name: $name, email: $email, virtualcardscod: $virtualcardscod, message: $message, sumBuy: $sumBuy, nextDiscount: $nextDiscount, buyForNext: $buyForNext, activeBonus: $activeBonus, allBonus: $allBonus, schemLoyalty: $schemLoyalty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.virtualcardscod, virtualcardscod) ||
                other.virtualcardscod == virtualcardscod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.sumBuy, sumBuy) || other.sumBuy == sumBuy) &&
            (identical(other.nextDiscount, nextDiscount) ||
                other.nextDiscount == nextDiscount) &&
            (identical(other.buyForNext, buyForNext) ||
                other.buyForNext == buyForNext) &&
            (identical(other.activeBonus, activeBonus) ||
                other.activeBonus == activeBonus) &&
            (identical(other.allBonus, allBonus) ||
                other.allBonus == allBonus) &&
            const DeepCollectionEquality()
                .equals(other._schemLoyalty, _schemLoyalty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      phone,
      discount,
      name,
      email,
      virtualcardscod,
      message,
      sumBuy,
      nextDiscount,
      buyForNext,
      activeBonus,
      allBonus,
      const DeepCollectionEquality().hash(_schemLoyalty));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      __$$UserResponseImplCopyWithImpl<_$UserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseImplToJson(
      this,
    );
  }
}

abstract class _UserResponse extends UserResponse {
  factory _UserResponse(
      {final String? phone,
      final int? discount,
      final String? name,
      final String? email,
      final String? virtualcardscod,
      @JsonKey(name: 'e') final String? message,
      @JsonKey(name: 'sum_buy') final int? sumBuy,
      @JsonKey(name: 'next_discount') final int? nextDiscount,
      @JsonKey(name: 'buy_for_next_discount') final int? buyForNext,
      @JsonKey(name: 'active_bonus') final int? activeBonus,
      @JsonKey(name: 'all_bonus') final int? allBonus,
      @JsonKey(name: 'schem_loyalty')
      final List<SchemLoyaltyResponse>? schemLoyalty}) = _$UserResponseImpl;
  _UserResponse._() : super._();

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$UserResponseImpl.fromJson;

  @override
  String? get phone;
  @override
  int? get discount;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get virtualcardscod;
  @override
  @JsonKey(name: 'e')
  String? get message;
  @override
  @JsonKey(name: 'sum_buy')
  int? get sumBuy;
  @override
  @JsonKey(name: 'next_discount')
  int? get nextDiscount;
  @override
  @JsonKey(name: 'buy_for_next_discount')
  int? get buyForNext;
  @override
  @JsonKey(name: 'active_bonus')
  int? get activeBonus;
  @override
  @JsonKey(name: 'all_bonus')
  int? get allBonus;
  @override
  @JsonKey(name: 'schem_loyalty')
  List<SchemLoyaltyResponse>? get schemLoyalty;
  @override
  @JsonKey(ignore: true)
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
