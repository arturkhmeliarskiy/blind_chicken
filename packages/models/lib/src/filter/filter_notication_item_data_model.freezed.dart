// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_notication_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterNotifcationItemDataModel {
  String get value => throw _privateConstructorUsedError;
  String get typeFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterNotifcationItemDataModelCopyWith<FilterNotifcationItemDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterNotifcationItemDataModelCopyWith<$Res> {
  factory $FilterNotifcationItemDataModelCopyWith(
          FilterNotifcationItemDataModel value,
          $Res Function(FilterNotifcationItemDataModel) then) =
      _$FilterNotifcationItemDataModelCopyWithImpl<$Res,
          FilterNotifcationItemDataModel>;
  @useResult
  $Res call({String value, String typeFilter});
}

/// @nodoc
class _$FilterNotifcationItemDataModelCopyWithImpl<$Res,
        $Val extends FilterNotifcationItemDataModel>
    implements $FilterNotifcationItemDataModelCopyWith<$Res> {
  _$FilterNotifcationItemDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? typeFilter = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      typeFilter: null == typeFilter
          ? _value.typeFilter
          : typeFilter // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterNotifcationItemDataModelImplCopyWith<$Res>
    implements $FilterNotifcationItemDataModelCopyWith<$Res> {
  factory _$$FilterNotifcationItemDataModelImplCopyWith(
          _$FilterNotifcationItemDataModelImpl value,
          $Res Function(_$FilterNotifcationItemDataModelImpl) then) =
      __$$FilterNotifcationItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String typeFilter});
}

/// @nodoc
class __$$FilterNotifcationItemDataModelImplCopyWithImpl<$Res>
    extends _$FilterNotifcationItemDataModelCopyWithImpl<$Res,
        _$FilterNotifcationItemDataModelImpl>
    implements _$$FilterNotifcationItemDataModelImplCopyWith<$Res> {
  __$$FilterNotifcationItemDataModelImplCopyWithImpl(
      _$FilterNotifcationItemDataModelImpl _value,
      $Res Function(_$FilterNotifcationItemDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? typeFilter = null,
  }) {
    return _then(_$FilterNotifcationItemDataModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      typeFilter: null == typeFilter
          ? _value.typeFilter
          : typeFilter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterNotifcationItemDataModelImpl
    extends _FilterNotifcationItemDataModel {
  _$FilterNotifcationItemDataModelImpl(
      {required this.value, required this.typeFilter})
      : super._();

  @override
  final String value;
  @override
  final String typeFilter;

  @override
  String toString() {
    return 'FilterNotifcationItemDataModel(value: $value, typeFilter: $typeFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterNotifcationItemDataModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.typeFilter, typeFilter) ||
                other.typeFilter == typeFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, typeFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterNotifcationItemDataModelImplCopyWith<
          _$FilterNotifcationItemDataModelImpl>
      get copyWith => __$$FilterNotifcationItemDataModelImplCopyWithImpl<
          _$FilterNotifcationItemDataModelImpl>(this, _$identity);
}

abstract class _FilterNotifcationItemDataModel
    extends FilterNotifcationItemDataModel {
  factory _FilterNotifcationItemDataModel(
      {required final String value,
      required final String typeFilter}) = _$FilterNotifcationItemDataModelImpl;
  _FilterNotifcationItemDataModel._() : super._();

  @override
  String get value;
  @override
  String get typeFilter;
  @override
  @JsonKey(ignore: true)
  _$$FilterNotifcationItemDataModelImplCopyWith<
          _$FilterNotifcationItemDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
