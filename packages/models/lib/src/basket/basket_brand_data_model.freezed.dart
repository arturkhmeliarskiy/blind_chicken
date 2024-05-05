// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_brand_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketBrandDataModel {
  String get id => throw _privateConstructorUsedError;
  String get n => throw _privateConstructorUsedError;
  String get u => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketBrandDataModelCopyWith<BasketBrandDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketBrandDataModelCopyWith<$Res> {
  factory $BasketBrandDataModelCopyWith(BasketBrandDataModel value,
          $Res Function(BasketBrandDataModel) then) =
      _$BasketBrandDataModelCopyWithImpl<$Res, BasketBrandDataModel>;
  @useResult
  $Res call({String id, String n, String u});
}

/// @nodoc
class _$BasketBrandDataModelCopyWithImpl<$Res,
        $Val extends BasketBrandDataModel>
    implements $BasketBrandDataModelCopyWith<$Res> {
  _$BasketBrandDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? n = null,
    Object? u = null,
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
      u: null == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketBrandDataModelImplCopyWith<$Res>
    implements $BasketBrandDataModelCopyWith<$Res> {
  factory _$$BasketBrandDataModelImplCopyWith(_$BasketBrandDataModelImpl value,
          $Res Function(_$BasketBrandDataModelImpl) then) =
      __$$BasketBrandDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String n, String u});
}

/// @nodoc
class __$$BasketBrandDataModelImplCopyWithImpl<$Res>
    extends _$BasketBrandDataModelCopyWithImpl<$Res, _$BasketBrandDataModelImpl>
    implements _$$BasketBrandDataModelImplCopyWith<$Res> {
  __$$BasketBrandDataModelImplCopyWithImpl(_$BasketBrandDataModelImpl _value,
      $Res Function(_$BasketBrandDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? n = null,
    Object? u = null,
  }) {
    return _then(_$BasketBrandDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      u: null == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BasketBrandDataModelImpl extends _BasketBrandDataModel {
  _$BasketBrandDataModelImpl(
      {required this.id, required this.n, required this.u})
      : super._();

  @override
  final String id;
  @override
  final String n;
  @override
  final String u;

  @override
  String toString() {
    return 'BasketBrandDataModel(id: $id, n: $n, u: $u)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketBrandDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.u, u) || other.u == u));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, n, u);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketBrandDataModelImplCopyWith<_$BasketBrandDataModelImpl>
      get copyWith =>
          __$$BasketBrandDataModelImplCopyWithImpl<_$BasketBrandDataModelImpl>(
              this, _$identity);
}

abstract class _BasketBrandDataModel extends BasketBrandDataModel {
  factory _BasketBrandDataModel(
      {required final String id,
      required final String n,
      required final String u}) = _$BasketBrandDataModelImpl;
  _BasketBrandDataModel._() : super._();

  @override
  String get id;
  @override
  String get n;
  @override
  String get u;
  @override
  @JsonKey(ignore: true)
  _$$BasketBrandDataModelImplCopyWith<_$BasketBrandDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
