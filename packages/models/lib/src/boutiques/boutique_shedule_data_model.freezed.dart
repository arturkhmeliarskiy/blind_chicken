// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutique_shedule_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoutiqueSheduleDataModel {
  int get s => throw _privateConstructorUsedError;
  int get e => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoutiqueSheduleDataModelCopyWith<BoutiqueSheduleDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiqueSheduleDataModelCopyWith<$Res> {
  factory $BoutiqueSheduleDataModelCopyWith(BoutiqueSheduleDataModel value,
          $Res Function(BoutiqueSheduleDataModel) then) =
      _$BoutiqueSheduleDataModelCopyWithImpl<$Res, BoutiqueSheduleDataModel>;
  @useResult
  $Res call({int s, int e});
}

/// @nodoc
class _$BoutiqueSheduleDataModelCopyWithImpl<$Res,
        $Val extends BoutiqueSheduleDataModel>
    implements $BoutiqueSheduleDataModelCopyWith<$Res> {
  _$BoutiqueSheduleDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s = null,
    Object? e = null,
  }) {
    return _then(_value.copyWith(
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as int,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoutiqueSheduleDataModelImplCopyWith<$Res>
    implements $BoutiqueSheduleDataModelCopyWith<$Res> {
  factory _$$BoutiqueSheduleDataModelImplCopyWith(
          _$BoutiqueSheduleDataModelImpl value,
          $Res Function(_$BoutiqueSheduleDataModelImpl) then) =
      __$$BoutiqueSheduleDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int s, int e});
}

/// @nodoc
class __$$BoutiqueSheduleDataModelImplCopyWithImpl<$Res>
    extends _$BoutiqueSheduleDataModelCopyWithImpl<$Res,
        _$BoutiqueSheduleDataModelImpl>
    implements _$$BoutiqueSheduleDataModelImplCopyWith<$Res> {
  __$$BoutiqueSheduleDataModelImplCopyWithImpl(
      _$BoutiqueSheduleDataModelImpl _value,
      $Res Function(_$BoutiqueSheduleDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s = null,
    Object? e = null,
  }) {
    return _then(_$BoutiqueSheduleDataModelImpl(
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as int,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BoutiqueSheduleDataModelImpl extends _BoutiqueSheduleDataModel {
  _$BoutiqueSheduleDataModelImpl({required this.s, required this.e})
      : super._();

  @override
  final int s;
  @override
  final int e;

  @override
  String toString() {
    return 'BoutiqueSheduleDataModel(s: $s, e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiqueSheduleDataModelImpl &&
            (identical(other.s, s) || other.s == s) &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, s, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiqueSheduleDataModelImplCopyWith<_$BoutiqueSheduleDataModelImpl>
      get copyWith => __$$BoutiqueSheduleDataModelImplCopyWithImpl<
          _$BoutiqueSheduleDataModelImpl>(this, _$identity);
}

abstract class _BoutiqueSheduleDataModel extends BoutiqueSheduleDataModel {
  factory _BoutiqueSheduleDataModel(
      {required final int s,
      required final int e}) = _$BoutiqueSheduleDataModelImpl;
  _BoutiqueSheduleDataModel._() : super._();

  @override
  int get s;
  @override
  int get e;
  @override
  @JsonKey(ignore: true)
  _$$BoutiqueSheduleDataModelImplCopyWith<_$BoutiqueSheduleDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
