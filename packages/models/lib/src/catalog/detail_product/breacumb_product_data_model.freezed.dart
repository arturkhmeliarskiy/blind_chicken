// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breacumb_product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BreacumbProductDataModel {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BreacumbProductDataModelCopyWith<BreacumbProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreacumbProductDataModelCopyWith<$Res> {
  factory $BreacumbProductDataModelCopyWith(BreacumbProductDataModel value,
          $Res Function(BreacumbProductDataModel) then) =
      _$BreacumbProductDataModelCopyWithImpl<$Res, BreacumbProductDataModel>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$BreacumbProductDataModelCopyWithImpl<$Res,
        $Val extends BreacumbProductDataModel>
    implements $BreacumbProductDataModelCopyWith<$Res> {
  _$BreacumbProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$BreacumbProductDataModelImplCopyWith<$Res>
    implements $BreacumbProductDataModelCopyWith<$Res> {
  factory _$$BreacumbProductDataModelImplCopyWith(
          _$BreacumbProductDataModelImpl value,
          $Res Function(_$BreacumbProductDataModelImpl) then) =
      __$$BreacumbProductDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$BreacumbProductDataModelImplCopyWithImpl<$Res>
    extends _$BreacumbProductDataModelCopyWithImpl<$Res,
        _$BreacumbProductDataModelImpl>
    implements _$$BreacumbProductDataModelImplCopyWith<$Res> {
  __$$BreacumbProductDataModelImplCopyWithImpl(
      _$BreacumbProductDataModelImpl _value,
      $Res Function(_$BreacumbProductDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$BreacumbProductDataModelImpl(
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

class _$BreacumbProductDataModelImpl extends _BreacumbProductDataModel {
  _$BreacumbProductDataModelImpl({required this.name, required this.value})
      : super._();

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'BreacumbProductDataModel(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreacumbProductDataModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreacumbProductDataModelImplCopyWith<_$BreacumbProductDataModelImpl>
      get copyWith => __$$BreacumbProductDataModelImplCopyWithImpl<
          _$BreacumbProductDataModelImpl>(this, _$identity);
}

abstract class _BreacumbProductDataModel extends BreacumbProductDataModel {
  factory _BreacumbProductDataModel(
      {required final String name,
      required final String value}) = _$BreacumbProductDataModelImpl;
  _BreacumbProductDataModel._() : super._();

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$BreacumbProductDataModelImplCopyWith<_$BreacumbProductDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
