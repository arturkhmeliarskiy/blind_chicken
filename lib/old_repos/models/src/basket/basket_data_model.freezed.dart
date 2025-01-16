// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Create a copy of BasketDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasketDataModelCopyWith<BasketDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketDataModelCopyWith<$Res> {
  factory $BasketDataModelCopyWith(
          BasketDataModel value, $Res Function(BasketDataModel) then) =
      _$BasketDataModelCopyWithImpl<$Res, BasketDataModel>;
  @useResult
  $Res call({String r, String e, String errorMessage, int count});
}

/// @nodoc
class _$BasketDataModelCopyWithImpl<$Res, $Val extends BasketDataModel>
    implements $BasketDataModelCopyWith<$Res> {
  _$BasketDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasketDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
    Object? count = null,
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
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketDataModelImplCopyWith<$Res>
    implements $BasketDataModelCopyWith<$Res> {
  factory _$$BasketDataModelImplCopyWith(_$BasketDataModelImpl value,
          $Res Function(_$BasketDataModelImpl) then) =
      __$$BasketDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String e, String errorMessage, int count});
}

/// @nodoc
class __$$BasketDataModelImplCopyWithImpl<$Res>
    extends _$BasketDataModelCopyWithImpl<$Res, _$BasketDataModelImpl>
    implements _$$BasketDataModelImplCopyWith<$Res> {
  __$$BasketDataModelImplCopyWithImpl(
      _$BasketDataModelImpl _value, $Res Function(_$BasketDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
    Object? count = null,
  }) {
    return _then(_$BasketDataModelImpl(
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
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BasketDataModelImpl extends _BasketDataModel {
  _$BasketDataModelImpl(
      {required this.r,
      required this.e,
      required this.errorMessage,
      required this.count})
      : super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final String errorMessage;
  @override
  final int count;

  @override
  String toString() {
    return 'BasketDataModel(r: $r, e: $e, errorMessage: $errorMessage, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage, count);

  /// Create a copy of BasketDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketDataModelImplCopyWith<_$BasketDataModelImpl> get copyWith =>
      __$$BasketDataModelImplCopyWithImpl<_$BasketDataModelImpl>(
          this, _$identity);
}

abstract class _BasketDataModel extends BasketDataModel {
  factory _BasketDataModel(
      {required final String r,
      required final String e,
      required final String errorMessage,
      required final int count}) = _$BasketDataModelImpl;
  _BasketDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  String get errorMessage;
  @override
  int get count;

  /// Create a copy of BasketDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasketDataModelImplCopyWith<_$BasketDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
