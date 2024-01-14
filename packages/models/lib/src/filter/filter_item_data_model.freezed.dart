// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterItemDataModel {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterItemDataModelCopyWith<FilterItemDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterItemDataModelCopyWith<$Res> {
  factory $FilterItemDataModelCopyWith(
          FilterItemDataModel value, $Res Function(FilterItemDataModel) then) =
      _$FilterItemDataModelCopyWithImpl<$Res, FilterItemDataModel>;
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class _$FilterItemDataModelCopyWithImpl<$Res, $Val extends FilterItemDataModel>
    implements $FilterItemDataModelCopyWith<$Res> {
  _$FilterItemDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterItemDataModelImplCopyWith<$Res>
    implements $FilterItemDataModelCopyWith<$Res> {
  factory _$$FilterItemDataModelImplCopyWith(_$FilterItemDataModelImpl value,
          $Res Function(_$FilterItemDataModelImpl) then) =
      __$$FilterItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class __$$FilterItemDataModelImplCopyWithImpl<$Res>
    extends _$FilterItemDataModelCopyWithImpl<$Res, _$FilterItemDataModelImpl>
    implements _$$FilterItemDataModelImplCopyWith<$Res> {
  __$$FilterItemDataModelImplCopyWithImpl(_$FilterItemDataModelImpl _value,
      $Res Function(_$FilterItemDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$FilterItemDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterItemDataModelImpl extends _FilterItemDataModel {
  _$FilterItemDataModelImpl({required this.id, required this.value})
      : super._();

  @override
  final int id;
  @override
  final String value;

  @override
  String toString() {
    return 'FilterItemDataModel(id: $id, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterItemDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterItemDataModelImplCopyWith<_$FilterItemDataModelImpl> get copyWith =>
      __$$FilterItemDataModelImplCopyWithImpl<_$FilterItemDataModelImpl>(
          this, _$identity);
}

abstract class _FilterItemDataModel extends FilterItemDataModel {
  factory _FilterItemDataModel(
      {required final int id,
      required final String value}) = _$FilterItemDataModelImpl;
  _FilterItemDataModel._() : super._();

  @override
  int get id;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$FilterItemDataModelImplCopyWith<_$FilterItemDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
