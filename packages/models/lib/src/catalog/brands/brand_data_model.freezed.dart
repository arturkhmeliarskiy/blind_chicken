// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrandDataModel {
  String get title => throw _privateConstructorUsedError;
  List<BrandItemDataModel> get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandDataModelCopyWith<BrandDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandDataModelCopyWith<$Res> {
  factory $BrandDataModelCopyWith(
          BrandDataModel value, $Res Function(BrandDataModel) then) =
      _$BrandDataModelCopyWithImpl<$Res, BrandDataModel>;
  @useResult
  $Res call({String title, List<BrandItemDataModel> value});
}

/// @nodoc
class _$BrandDataModelCopyWithImpl<$Res, $Val extends BrandDataModel>
    implements $BrandDataModelCopyWith<$Res> {
  _$BrandDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<BrandItemDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandDataModelImplCopyWith<$Res>
    implements $BrandDataModelCopyWith<$Res> {
  factory _$$BrandDataModelImplCopyWith(_$BrandDataModelImpl value,
          $Res Function(_$BrandDataModelImpl) then) =
      __$$BrandDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<BrandItemDataModel> value});
}

/// @nodoc
class __$$BrandDataModelImplCopyWithImpl<$Res>
    extends _$BrandDataModelCopyWithImpl<$Res, _$BrandDataModelImpl>
    implements _$$BrandDataModelImplCopyWith<$Res> {
  __$$BrandDataModelImplCopyWithImpl(
      _$BrandDataModelImpl _value, $Res Function(_$BrandDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? value = null,
  }) {
    return _then(_$BrandDataModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<BrandItemDataModel>,
    ));
  }
}

/// @nodoc

class _$BrandDataModelImpl extends _BrandDataModel {
  _$BrandDataModelImpl(
      {required this.title, required final List<BrandItemDataModel> value})
      : _value = value,
        super._();

  @override
  final String title;
  final List<BrandItemDataModel> _value;
  @override
  List<BrandItemDataModel> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  String toString() {
    return 'BrandDataModel(title: $title, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandDataModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandDataModelImplCopyWith<_$BrandDataModelImpl> get copyWith =>
      __$$BrandDataModelImplCopyWithImpl<_$BrandDataModelImpl>(
          this, _$identity);
}

abstract class _BrandDataModel extends BrandDataModel {
  factory _BrandDataModel(
      {required final String title,
      required final List<BrandItemDataModel> value}) = _$BrandDataModelImpl;
  _BrandDataModel._() : super._();

  @override
  String get title;
  @override
  List<BrandItemDataModel> get value;
  @override
  @JsonKey(ignore: true)
  _$$BrandDataModelImplCopyWith<_$BrandDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
