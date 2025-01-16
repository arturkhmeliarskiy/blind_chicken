// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_category_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketCategoryDataModel {
  String get id => throw _privateConstructorUsedError;
  String get n => throw _privateConstructorUsedError;
  String get chN => throw _privateConstructorUsedError;

  /// Create a copy of BasketCategoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasketCategoryDataModelCopyWith<BasketCategoryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketCategoryDataModelCopyWith<$Res> {
  factory $BasketCategoryDataModelCopyWith(BasketCategoryDataModel value,
          $Res Function(BasketCategoryDataModel) then) =
      _$BasketCategoryDataModelCopyWithImpl<$Res, BasketCategoryDataModel>;
  @useResult
  $Res call({String id, String n, String chN});
}

/// @nodoc
class _$BasketCategoryDataModelCopyWithImpl<$Res,
        $Val extends BasketCategoryDataModel>
    implements $BasketCategoryDataModelCopyWith<$Res> {
  _$BasketCategoryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasketCategoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? n = null,
    Object? chN = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      chN: null == chN
          ? _value.chN
          : chN // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketCategoryDataModelImplCopyWith<$Res>
    implements $BasketCategoryDataModelCopyWith<$Res> {
  factory _$$BasketCategoryDataModelImplCopyWith(
          _$BasketCategoryDataModelImpl value,
          $Res Function(_$BasketCategoryDataModelImpl) then) =
      __$$BasketCategoryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String n, String chN});
}

/// @nodoc
class __$$BasketCategoryDataModelImplCopyWithImpl<$Res>
    extends _$BasketCategoryDataModelCopyWithImpl<$Res,
        _$BasketCategoryDataModelImpl>
    implements _$$BasketCategoryDataModelImplCopyWith<$Res> {
  __$$BasketCategoryDataModelImplCopyWithImpl(
      _$BasketCategoryDataModelImpl _value,
      $Res Function(_$BasketCategoryDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketCategoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? n = null,
    Object? chN = null,
  }) {
    return _then(_$BasketCategoryDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      chN: null == chN
          ? _value.chN
          : chN // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BasketCategoryDataModelImpl extends _BasketCategoryDataModel {
  _$BasketCategoryDataModelImpl(
      {required this.id, required this.n, required this.chN})
      : super._();

  @override
  final String id;
  @override
  final String n;
  @override
  final String chN;

  @override
  String toString() {
    return 'BasketCategoryDataModel(id: $id, n: $n, chN: $chN)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketCategoryDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.chN, chN) || other.chN == chN));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, n, chN);

  /// Create a copy of BasketCategoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketCategoryDataModelImplCopyWith<_$BasketCategoryDataModelImpl>
      get copyWith => __$$BasketCategoryDataModelImplCopyWithImpl<
          _$BasketCategoryDataModelImpl>(this, _$identity);
}

abstract class _BasketCategoryDataModel extends BasketCategoryDataModel {
  factory _BasketCategoryDataModel(
      {required final String id,
      required final String n,
      required final String chN}) = _$BasketCategoryDataModelImpl;
  _BasketCategoryDataModel._() : super._();

  @override
  String get id;
  @override
  String get n;
  @override
  String get chN;

  /// Create a copy of BasketCategoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasketCategoryDataModelImplCopyWith<_$BasketCategoryDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
