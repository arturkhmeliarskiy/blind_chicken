// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_full_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketFullInfoDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get promoDescription => throw _privateConstructorUsedError;
  List<BasketFullInfoItemDataModel> get basket =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketFullInfoDataModelCopyWith<BasketFullInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketFullInfoDataModelCopyWith<$Res> {
  factory $BasketFullInfoDataModelCopyWith(BasketFullInfoDataModel value,
          $Res Function(BasketFullInfoDataModel) then) =
      _$BasketFullInfoDataModelCopyWithImpl<$Res, BasketFullInfoDataModel>;
  @useResult
  $Res call(
      {String r,
      String e,
      String errorMessage,
      String promoDescription,
      List<BasketFullInfoItemDataModel> basket});
}

/// @nodoc
class _$BasketFullInfoDataModelCopyWithImpl<$Res,
        $Val extends BasketFullInfoDataModel>
    implements $BasketFullInfoDataModelCopyWith<$Res> {
  _$BasketFullInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
    Object? promoDescription = null,
    Object? basket = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      promoDescription: null == promoDescription
          ? _value.promoDescription
          : promoDescription // ignore: cast_nullable_to_non_nullable
              as String,
      basket: null == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<BasketFullInfoItemDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketFullInfoDataModelImplCopyWith<$Res>
    implements $BasketFullInfoDataModelCopyWith<$Res> {
  factory _$$BasketFullInfoDataModelImplCopyWith(
          _$BasketFullInfoDataModelImpl value,
          $Res Function(_$BasketFullInfoDataModelImpl) then) =
      __$$BasketFullInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String r,
      String e,
      String errorMessage,
      String promoDescription,
      List<BasketFullInfoItemDataModel> basket});
}

/// @nodoc
class __$$BasketFullInfoDataModelImplCopyWithImpl<$Res>
    extends _$BasketFullInfoDataModelCopyWithImpl<$Res,
        _$BasketFullInfoDataModelImpl>
    implements _$$BasketFullInfoDataModelImplCopyWith<$Res> {
  __$$BasketFullInfoDataModelImplCopyWithImpl(
      _$BasketFullInfoDataModelImpl _value,
      $Res Function(_$BasketFullInfoDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
    Object? promoDescription = null,
    Object? basket = null,
  }) {
    return _then(_$BasketFullInfoDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      promoDescription: null == promoDescription
          ? _value.promoDescription
          : promoDescription // ignore: cast_nullable_to_non_nullable
              as String,
      basket: null == basket
          ? _value._basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<BasketFullInfoItemDataModel>,
    ));
  }
}

/// @nodoc

class _$BasketFullInfoDataModelImpl extends _BasketFullInfoDataModel {
  _$BasketFullInfoDataModelImpl(
      {required this.r,
      required this.e,
      required this.errorMessage,
      required this.promoDescription,
      required final List<BasketFullInfoItemDataModel> basket})
      : _basket = basket,
        super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final String errorMessage;
  @override
  final String promoDescription;
  final List<BasketFullInfoItemDataModel> _basket;
  @override
  List<BasketFullInfoItemDataModel> get basket {
    if (_basket is EqualUnmodifiableListView) return _basket;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_basket);
  }

  @override
  String toString() {
    return 'BasketFullInfoDataModel(r: $r, e: $e, errorMessage: $errorMessage, promoDescription: $promoDescription, basket: $basket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketFullInfoDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.promoDescription, promoDescription) ||
                other.promoDescription == promoDescription) &&
            const DeepCollectionEquality().equals(other._basket, _basket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage,
      promoDescription, const DeepCollectionEquality().hash(_basket));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketFullInfoDataModelImplCopyWith<_$BasketFullInfoDataModelImpl>
      get copyWith => __$$BasketFullInfoDataModelImplCopyWithImpl<
          _$BasketFullInfoDataModelImpl>(this, _$identity);
}

abstract class _BasketFullInfoDataModel extends BasketFullInfoDataModel {
  factory _BasketFullInfoDataModel(
          {required final String r,
          required final String e,
          required final String errorMessage,
          required final String promoDescription,
          required final List<BasketFullInfoItemDataModel> basket}) =
      _$BasketFullInfoDataModelImpl;
  _BasketFullInfoDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  String get errorMessage;
  @override
  String get promoDescription;
  @override
  List<BasketFullInfoItemDataModel> get basket;
  @override
  @JsonKey(ignore: true)
  _$$BasketFullInfoDataModelImplCopyWith<_$BasketFullInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
