// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterDataModel {
  List<FilterInfoDataModel> get filter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterDataModelCopyWith<FilterDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterDataModelCopyWith<$Res> {
  factory $FilterDataModelCopyWith(
          FilterDataModel value, $Res Function(FilterDataModel) then) =
      _$FilterDataModelCopyWithImpl<$Res, FilterDataModel>;
  @useResult
  $Res call({List<FilterInfoDataModel> filter});
}

/// @nodoc
class _$FilterDataModelCopyWithImpl<$Res, $Val extends FilterDataModel>
    implements $FilterDataModelCopyWith<$Res> {
  _$FilterDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<FilterInfoDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterDataModelImplCopyWith<$Res>
    implements $FilterDataModelCopyWith<$Res> {
  factory _$$FilterDataModelImplCopyWith(_$FilterDataModelImpl value,
          $Res Function(_$FilterDataModelImpl) then) =
      __$$FilterDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FilterInfoDataModel> filter});
}

/// @nodoc
class __$$FilterDataModelImplCopyWithImpl<$Res>
    extends _$FilterDataModelCopyWithImpl<$Res, _$FilterDataModelImpl>
    implements _$$FilterDataModelImplCopyWith<$Res> {
  __$$FilterDataModelImplCopyWithImpl(
      _$FilterDataModelImpl _value, $Res Function(_$FilterDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$FilterDataModelImpl(
      filter: null == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<FilterInfoDataModel>,
    ));
  }
}

/// @nodoc

class _$FilterDataModelImpl extends _FilterDataModel {
  _$FilterDataModelImpl({required final List<FilterInfoDataModel> filter})
      : _filter = filter,
        super._();

  final List<FilterInfoDataModel> _filter;
  @override
  List<FilterInfoDataModel> get filter {
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filter);
  }

  @override
  String toString() {
    return 'FilterDataModel(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterDataModelImpl &&
            const DeepCollectionEquality().equals(other._filter, _filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterDataModelImplCopyWith<_$FilterDataModelImpl> get copyWith =>
      __$$FilterDataModelImplCopyWithImpl<_$FilterDataModelImpl>(
          this, _$identity);
}

abstract class _FilterDataModel extends FilterDataModel {
  factory _FilterDataModel({required final List<FilterInfoDataModel> filter}) =
      _$FilterDataModelImpl;
  _FilterDataModel._() : super._();

  @override
  List<FilterInfoDataModel> get filter;
  @override
  @JsonKey(ignore: true)
  _$$FilterDataModelImplCopyWith<_$FilterDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
