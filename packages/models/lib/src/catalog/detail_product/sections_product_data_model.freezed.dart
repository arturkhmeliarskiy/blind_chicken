// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sections_product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SectionsProductDataModel {
  String get name => throw _privateConstructorUsedError;
  List<SectionItemProductDataModel> get list =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionsProductDataModelCopyWith<SectionsProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsProductDataModelCopyWith<$Res> {
  factory $SectionsProductDataModelCopyWith(SectionsProductDataModel value,
          $Res Function(SectionsProductDataModel) then) =
      _$SectionsProductDataModelCopyWithImpl<$Res, SectionsProductDataModel>;
  @useResult
  $Res call({String name, List<SectionItemProductDataModel> list});
}

/// @nodoc
class _$SectionsProductDataModelCopyWithImpl<$Res,
        $Val extends SectionsProductDataModel>
    implements $SectionsProductDataModelCopyWith<$Res> {
  _$SectionsProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SectionItemProductDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionsProductDataModelImplCopyWith<$Res>
    implements $SectionsProductDataModelCopyWith<$Res> {
  factory _$$SectionsProductDataModelImplCopyWith(
          _$SectionsProductDataModelImpl value,
          $Res Function(_$SectionsProductDataModelImpl) then) =
      __$$SectionsProductDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<SectionItemProductDataModel> list});
}

/// @nodoc
class __$$SectionsProductDataModelImplCopyWithImpl<$Res>
    extends _$SectionsProductDataModelCopyWithImpl<$Res,
        _$SectionsProductDataModelImpl>
    implements _$$SectionsProductDataModelImplCopyWith<$Res> {
  __$$SectionsProductDataModelImplCopyWithImpl(
      _$SectionsProductDataModelImpl _value,
      $Res Function(_$SectionsProductDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? list = null,
  }) {
    return _then(_$SectionsProductDataModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SectionItemProductDataModel>,
    ));
  }
}

/// @nodoc

class _$SectionsProductDataModelImpl extends _SectionsProductDataModel {
  _$SectionsProductDataModelImpl(
      {required this.name,
      required final List<SectionItemProductDataModel> list})
      : _list = list,
        super._();

  @override
  final String name;
  final List<SectionItemProductDataModel> _list;
  @override
  List<SectionItemProductDataModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'SectionsProductDataModel(name: $name, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionsProductDataModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionsProductDataModelImplCopyWith<_$SectionsProductDataModelImpl>
      get copyWith => __$$SectionsProductDataModelImplCopyWithImpl<
          _$SectionsProductDataModelImpl>(this, _$identity);
}

abstract class _SectionsProductDataModel extends SectionsProductDataModel {
  factory _SectionsProductDataModel(
          {required final String name,
          required final List<SectionItemProductDataModel> list}) =
      _$SectionsProductDataModelImpl;
  _SectionsProductDataModel._() : super._();

  @override
  String get name;
  @override
  List<SectionItemProductDataModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$SectionsProductDataModelImplCopyWith<_$SectionsProductDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
