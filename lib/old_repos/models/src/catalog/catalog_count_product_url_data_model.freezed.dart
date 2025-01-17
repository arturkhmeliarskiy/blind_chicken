// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_count_product_url_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CatalogCountProductUrlDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogCountProductUrlDataModelCopyWith<CatalogCountProductUrlDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogCountProductUrlDataModelCopyWith<$Res> {
  factory $CatalogCountProductUrlDataModelCopyWith(
          CatalogCountProductUrlDataModel value,
          $Res Function(CatalogCountProductUrlDataModel) then) =
      _$CatalogCountProductUrlDataModelCopyWithImpl<$Res,
          CatalogCountProductUrlDataModel>;
  @useResult
  $Res call({String r, String e, int count, String errorMessage});
}

/// @nodoc
class _$CatalogCountProductUrlDataModelCopyWithImpl<$Res,
        $Val extends CatalogCountProductUrlDataModel>
    implements $CatalogCountProductUrlDataModelCopyWith<$Res> {
  _$CatalogCountProductUrlDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? count = null,
    Object? errorMessage = null,
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
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogCountProductUrlDataModelImplCopyWith<$Res>
    implements $CatalogCountProductUrlDataModelCopyWith<$Res> {
  factory _$$CatalogCountProductUrlDataModelImplCopyWith(
          _$CatalogCountProductUrlDataModelImpl value,
          $Res Function(_$CatalogCountProductUrlDataModelImpl) then) =
      __$$CatalogCountProductUrlDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String e, int count, String errorMessage});
}

/// @nodoc
class __$$CatalogCountProductUrlDataModelImplCopyWithImpl<$Res>
    extends _$CatalogCountProductUrlDataModelCopyWithImpl<$Res,
        _$CatalogCountProductUrlDataModelImpl>
    implements _$$CatalogCountProductUrlDataModelImplCopyWith<$Res> {
  __$$CatalogCountProductUrlDataModelImplCopyWithImpl(
      _$CatalogCountProductUrlDataModelImpl _value,
      $Res Function(_$CatalogCountProductUrlDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? count = null,
    Object? errorMessage = null,
  }) {
    return _then(_$CatalogCountProductUrlDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CatalogCountProductUrlDataModelImpl
    extends _CatalogCountProductUrlDataModel {
  _$CatalogCountProductUrlDataModelImpl(
      {required this.r,
      required this.e,
      required this.count,
      required this.errorMessage})
      : super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final int count;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CatalogCountProductUrlDataModel(r: $r, e: $e, count: $count, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogCountProductUrlDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e, count, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogCountProductUrlDataModelImplCopyWith<
          _$CatalogCountProductUrlDataModelImpl>
      get copyWith => __$$CatalogCountProductUrlDataModelImplCopyWithImpl<
          _$CatalogCountProductUrlDataModelImpl>(this, _$identity);
}

abstract class _CatalogCountProductUrlDataModel
    extends CatalogCountProductUrlDataModel {
  factory _CatalogCountProductUrlDataModel(
          {required final String r,
          required final String e,
          required final int count,
          required final String errorMessage}) =
      _$CatalogCountProductUrlDataModelImpl;
  _CatalogCountProductUrlDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  int get count;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$CatalogCountProductUrlDataModelImplCopyWith<
          _$CatalogCountProductUrlDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
