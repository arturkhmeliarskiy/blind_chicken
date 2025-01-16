// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrandProductDataModel {
  String get id => throw _privateConstructorUsedError;
  String get n => throw _privateConstructorUsedError;
  String get u => throw _privateConstructorUsedError;

  /// Create a copy of BrandProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandProductDataModelCopyWith<BrandProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandProductDataModelCopyWith<$Res> {
  factory $BrandProductDataModelCopyWith(BrandProductDataModel value,
          $Res Function(BrandProductDataModel) then) =
      _$BrandProductDataModelCopyWithImpl<$Res, BrandProductDataModel>;
  @useResult
  $Res call({String id, String n, String u});
}

/// @nodoc
class _$BrandProductDataModelCopyWithImpl<$Res,
        $Val extends BrandProductDataModel>
    implements $BrandProductDataModelCopyWith<$Res> {
  _$BrandProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandProductDataModel
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$BrandProductDataModelImplCopyWith<$Res>
    implements $BrandProductDataModelCopyWith<$Res> {
  factory _$$BrandProductDataModelImplCopyWith(
          _$BrandProductDataModelImpl value,
          $Res Function(_$BrandProductDataModelImpl) then) =
      __$$BrandProductDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String n, String u});
}

/// @nodoc
class __$$BrandProductDataModelImplCopyWithImpl<$Res>
    extends _$BrandProductDataModelCopyWithImpl<$Res,
        _$BrandProductDataModelImpl>
    implements _$$BrandProductDataModelImplCopyWith<$Res> {
  __$$BrandProductDataModelImplCopyWithImpl(_$BrandProductDataModelImpl _value,
      $Res Function(_$BrandProductDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? n = null,
    Object? u = null,
  }) {
    return _then(_$BrandProductDataModelImpl(
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

class _$BrandProductDataModelImpl extends _BrandProductDataModel {
  _$BrandProductDataModelImpl(
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
    return 'BrandProductDataModel(id: $id, n: $n, u: $u)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandProductDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.u, u) || other.u == u));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, n, u);

  /// Create a copy of BrandProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandProductDataModelImplCopyWith<_$BrandProductDataModelImpl>
      get copyWith => __$$BrandProductDataModelImplCopyWithImpl<
          _$BrandProductDataModelImpl>(this, _$identity);
}

abstract class _BrandProductDataModel extends BrandProductDataModel {
  factory _BrandProductDataModel(
      {required final String id,
      required final String n,
      required final String u}) = _$BrandProductDataModelImpl;
  _BrandProductDataModel._() : super._();

  @override
  String get id;
  @override
  String get n;
  @override
  String get u;

  /// Create a copy of BrandProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandProductDataModelImplCopyWith<_$BrandProductDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
