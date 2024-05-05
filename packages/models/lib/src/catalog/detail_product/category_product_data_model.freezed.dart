// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryProductDataModel {
  String get id => throw _privateConstructorUsedError;
  String get n => throw _privateConstructorUsedError;
  String get u => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryProductDataModelCopyWith<CategoryProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductDataModelCopyWith<$Res> {
  factory $CategoryProductDataModelCopyWith(CategoryProductDataModel value,
          $Res Function(CategoryProductDataModel) then) =
      _$CategoryProductDataModelCopyWithImpl<$Res, CategoryProductDataModel>;
  @useResult
  $Res call({String id, String n, String u});
}

/// @nodoc
class _$CategoryProductDataModelCopyWithImpl<$Res,
        $Val extends CategoryProductDataModel>
    implements $CategoryProductDataModelCopyWith<$Res> {
  _$CategoryProductDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CategoryProductDataModelImplCopyWith<$Res>
    implements $CategoryProductDataModelCopyWith<$Res> {
  factory _$$CategoryProductDataModelImplCopyWith(
          _$CategoryProductDataModelImpl value,
          $Res Function(_$CategoryProductDataModelImpl) then) =
      __$$CategoryProductDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String n, String u});
}

/// @nodoc
class __$$CategoryProductDataModelImplCopyWithImpl<$Res>
    extends _$CategoryProductDataModelCopyWithImpl<$Res,
        _$CategoryProductDataModelImpl>
    implements _$$CategoryProductDataModelImplCopyWith<$Res> {
  __$$CategoryProductDataModelImplCopyWithImpl(
      _$CategoryProductDataModelImpl _value,
      $Res Function(_$CategoryProductDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? n = null,
    Object? u = null,
  }) {
    return _then(_$CategoryProductDataModelImpl(
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

class _$CategoryProductDataModelImpl extends _CategoryProductDataModel {
  _$CategoryProductDataModelImpl(
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
    return 'CategoryProductDataModel(id: $id, n: $n, u: $u)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.u, u) || other.u == u));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, n, u);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductDataModelImplCopyWith<_$CategoryProductDataModelImpl>
      get copyWith => __$$CategoryProductDataModelImplCopyWithImpl<
          _$CategoryProductDataModelImpl>(this, _$identity);
}

abstract class _CategoryProductDataModel extends CategoryProductDataModel {
  factory _CategoryProductDataModel(
      {required final String id,
      required final String n,
      required final String u}) = _$CategoryProductDataModelImpl;
  _CategoryProductDataModel._() : super._();

  @override
  String get id;
  @override
  String get n;
  @override
  String get u;
  @override
  @JsonKey(ignore: true)
  _$$CategoryProductDataModelImplCopyWith<_$CategoryProductDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
