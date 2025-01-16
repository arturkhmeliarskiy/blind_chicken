// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrandItemDataModel {
  String get u => throw _privateConstructorUsedError;
  String get n => throw _privateConstructorUsedError;

  /// Create a copy of BrandItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandItemDataModelCopyWith<BrandItemDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandItemDataModelCopyWith<$Res> {
  factory $BrandItemDataModelCopyWith(
          BrandItemDataModel value, $Res Function(BrandItemDataModel) then) =
      _$BrandItemDataModelCopyWithImpl<$Res, BrandItemDataModel>;
  @useResult
  $Res call({String u, String n});
}

/// @nodoc
class _$BrandItemDataModelCopyWithImpl<$Res, $Val extends BrandItemDataModel>
    implements $BrandItemDataModelCopyWith<$Res> {
  _$BrandItemDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? u = null,
    Object? n = null,
  }) {
    return _then(_value.copyWith(
      u: null == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandItemDataModelImplCopyWith<$Res>
    implements $BrandItemDataModelCopyWith<$Res> {
  factory _$$BrandItemDataModelImplCopyWith(_$BrandItemDataModelImpl value,
          $Res Function(_$BrandItemDataModelImpl) then) =
      __$$BrandItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String u, String n});
}

/// @nodoc
class __$$BrandItemDataModelImplCopyWithImpl<$Res>
    extends _$BrandItemDataModelCopyWithImpl<$Res, _$BrandItemDataModelImpl>
    implements _$$BrandItemDataModelImplCopyWith<$Res> {
  __$$BrandItemDataModelImplCopyWithImpl(_$BrandItemDataModelImpl _value,
      $Res Function(_$BrandItemDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? u = null,
    Object? n = null,
  }) {
    return _then(_$BrandItemDataModelImpl(
      u: null == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BrandItemDataModelImpl extends _BrandItemDataModel {
  _$BrandItemDataModelImpl({required this.u, required this.n}) : super._();

  @override
  final String u;
  @override
  final String n;

  @override
  String toString() {
    return 'BrandItemDataModel(u: $u, n: $n)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandItemDataModelImpl &&
            (identical(other.u, u) || other.u == u) &&
            (identical(other.n, n) || other.n == n));
  }

  @override
  int get hashCode => Object.hash(runtimeType, u, n);

  /// Create a copy of BrandItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandItemDataModelImplCopyWith<_$BrandItemDataModelImpl> get copyWith =>
      __$$BrandItemDataModelImplCopyWithImpl<_$BrandItemDataModelImpl>(
          this, _$identity);
}

abstract class _BrandItemDataModel extends BrandItemDataModel {
  factory _BrandItemDataModel(
      {required final String u,
      required final String n}) = _$BrandItemDataModelImpl;
  _BrandItemDataModel._() : super._();

  @override
  String get u;
  @override
  String get n;

  /// Create a copy of BrandItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandItemDataModelImplCopyWith<_$BrandItemDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
