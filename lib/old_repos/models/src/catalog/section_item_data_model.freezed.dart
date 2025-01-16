// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SectionItemDataModel {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of SectionItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionItemDataModelCopyWith<SectionItemDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionItemDataModelCopyWith<$Res> {
  factory $SectionItemDataModelCopyWith(SectionItemDataModel value,
          $Res Function(SectionItemDataModel) then) =
      _$SectionItemDataModelCopyWithImpl<$Res, SectionItemDataModel>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$SectionItemDataModelCopyWithImpl<$Res,
        $Val extends SectionItemDataModel>
    implements $SectionItemDataModelCopyWith<$Res> {
  _$SectionItemDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionItemDataModelImplCopyWith<$Res>
    implements $SectionItemDataModelCopyWith<$Res> {
  factory _$$SectionItemDataModelImplCopyWith(_$SectionItemDataModelImpl value,
          $Res Function(_$SectionItemDataModelImpl) then) =
      __$$SectionItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$SectionItemDataModelImplCopyWithImpl<$Res>
    extends _$SectionItemDataModelCopyWithImpl<$Res, _$SectionItemDataModelImpl>
    implements _$$SectionItemDataModelImplCopyWith<$Res> {
  __$$SectionItemDataModelImplCopyWithImpl(_$SectionItemDataModelImpl _value,
      $Res Function(_$SectionItemDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$SectionItemDataModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SectionItemDataModelImpl extends _SectionItemDataModel {
  _$SectionItemDataModelImpl({required this.name, required this.value})
      : super._();

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'SectionItemDataModel(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionItemDataModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  /// Create a copy of SectionItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionItemDataModelImplCopyWith<_$SectionItemDataModelImpl>
      get copyWith =>
          __$$SectionItemDataModelImplCopyWithImpl<_$SectionItemDataModelImpl>(
              this, _$identity);
}

abstract class _SectionItemDataModel extends SectionItemDataModel {
  factory _SectionItemDataModel(
      {required final String name,
      required final String value}) = _$SectionItemDataModelImpl;
  _SectionItemDataModel._() : super._();

  @override
  String get name;
  @override
  String get value;

  /// Create a copy of SectionItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionItemDataModelImplCopyWith<_$SectionItemDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
