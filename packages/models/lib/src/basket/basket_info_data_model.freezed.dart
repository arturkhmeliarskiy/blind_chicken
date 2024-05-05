// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketInfoDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  List<BasketInfoItemDataModel> get basket =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketInfoDataModelCopyWith<BasketInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketInfoDataModelCopyWith<$Res> {
  factory $BasketInfoDataModelCopyWith(
          BasketInfoDataModel value, $Res Function(BasketInfoDataModel) then) =
      _$BasketInfoDataModelCopyWithImpl<$Res, BasketInfoDataModel>;
  @useResult
  $Res call({String r, String e, List<BasketInfoItemDataModel> basket});
}

/// @nodoc
class _$BasketInfoDataModelCopyWithImpl<$Res, $Val extends BasketInfoDataModel>
    implements $BasketInfoDataModelCopyWith<$Res> {
  _$BasketInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
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
      basket: null == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<BasketInfoItemDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketInfoDataModelImplCopyWith<$Res>
    implements $BasketInfoDataModelCopyWith<$Res> {
  factory _$$BasketInfoDataModelImplCopyWith(_$BasketInfoDataModelImpl value,
          $Res Function(_$BasketInfoDataModelImpl) then) =
      __$$BasketInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String e, List<BasketInfoItemDataModel> basket});
}

/// @nodoc
class __$$BasketInfoDataModelImplCopyWithImpl<$Res>
    extends _$BasketInfoDataModelCopyWithImpl<$Res, _$BasketInfoDataModelImpl>
    implements _$$BasketInfoDataModelImplCopyWith<$Res> {
  __$$BasketInfoDataModelImplCopyWithImpl(_$BasketInfoDataModelImpl _value,
      $Res Function(_$BasketInfoDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? basket = null,
  }) {
    return _then(_$BasketInfoDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      basket: null == basket
          ? _value._basket
          : basket // ignore: cast_nullable_to_non_nullable
              as List<BasketInfoItemDataModel>,
    ));
  }
}

/// @nodoc

class _$BasketInfoDataModelImpl extends _BasketInfoDataModel {
  _$BasketInfoDataModelImpl(
      {required this.r,
      required this.e,
      required final List<BasketInfoItemDataModel> basket})
      : _basket = basket,
        super._();

  @override
  final String r;
  @override
  final String e;
  final List<BasketInfoItemDataModel> _basket;
  @override
  List<BasketInfoItemDataModel> get basket {
    if (_basket is EqualUnmodifiableListView) return _basket;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_basket);
  }

  @override
  String toString() {
    return 'BasketInfoDataModel(r: $r, e: $e, basket: $basket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketInfoDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            const DeepCollectionEquality().equals(other._basket, _basket));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, r, e, const DeepCollectionEquality().hash(_basket));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketInfoDataModelImplCopyWith<_$BasketInfoDataModelImpl> get copyWith =>
      __$$BasketInfoDataModelImplCopyWithImpl<_$BasketInfoDataModelImpl>(
          this, _$identity);
}

abstract class _BasketInfoDataModel extends BasketInfoDataModel {
  factory _BasketInfoDataModel(
          {required final String r,
          required final String e,
          required final List<BasketInfoItemDataModel> basket}) =
      _$BasketInfoDataModelImpl;
  _BasketInfoDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  List<BasketInfoItemDataModel> get basket;
  @override
  @JsonKey(ignore: true)
  _$$BasketInfoDataModelImplCopyWith<_$BasketInfoDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
