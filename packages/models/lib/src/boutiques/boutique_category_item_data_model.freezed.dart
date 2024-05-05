// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutique_category_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoutiqueCategoryItemDataModel {
  String get title => throw _privateConstructorUsedError;
  List<dynamic> get listInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoutiqueCategoryItemDataModelCopyWith<BoutiqueCategoryItemDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiqueCategoryItemDataModelCopyWith<$Res> {
  factory $BoutiqueCategoryItemDataModelCopyWith(
          BoutiqueCategoryItemDataModel value,
          $Res Function(BoutiqueCategoryItemDataModel) then) =
      _$BoutiqueCategoryItemDataModelCopyWithImpl<$Res,
          BoutiqueCategoryItemDataModel>;
  @useResult
  $Res call({String title, List<dynamic> listInfo});
}

/// @nodoc
class _$BoutiqueCategoryItemDataModelCopyWithImpl<$Res,
        $Val extends BoutiqueCategoryItemDataModel>
    implements $BoutiqueCategoryItemDataModelCopyWith<$Res> {
  _$BoutiqueCategoryItemDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? listInfo = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      listInfo: null == listInfo
          ? _value.listInfo
          : listInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoutiqueCategoryItemDataModelImplCopyWith<$Res>
    implements $BoutiqueCategoryItemDataModelCopyWith<$Res> {
  factory _$$BoutiqueCategoryItemDataModelImplCopyWith(
          _$BoutiqueCategoryItemDataModelImpl value,
          $Res Function(_$BoutiqueCategoryItemDataModelImpl) then) =
      __$$BoutiqueCategoryItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<dynamic> listInfo});
}

/// @nodoc
class __$$BoutiqueCategoryItemDataModelImplCopyWithImpl<$Res>
    extends _$BoutiqueCategoryItemDataModelCopyWithImpl<$Res,
        _$BoutiqueCategoryItemDataModelImpl>
    implements _$$BoutiqueCategoryItemDataModelImplCopyWith<$Res> {
  __$$BoutiqueCategoryItemDataModelImplCopyWithImpl(
      _$BoutiqueCategoryItemDataModelImpl _value,
      $Res Function(_$BoutiqueCategoryItemDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? listInfo = null,
  }) {
    return _then(_$BoutiqueCategoryItemDataModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      listInfo: null == listInfo
          ? _value._listInfo
          : listInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$BoutiqueCategoryItemDataModelImpl
    extends _BoutiqueCategoryItemDataModel {
  _$BoutiqueCategoryItemDataModelImpl(
      {required this.title, required final List<dynamic> listInfo})
      : _listInfo = listInfo,
        super._();

  @override
  final String title;
  final List<dynamic> _listInfo;
  @override
  List<dynamic> get listInfo {
    if (_listInfo is EqualUnmodifiableListView) return _listInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listInfo);
  }

  @override
  String toString() {
    return 'BoutiqueCategoryItemDataModel(title: $title, listInfo: $listInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiqueCategoryItemDataModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._listInfo, _listInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_listInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiqueCategoryItemDataModelImplCopyWith<
          _$BoutiqueCategoryItemDataModelImpl>
      get copyWith => __$$BoutiqueCategoryItemDataModelImplCopyWithImpl<
          _$BoutiqueCategoryItemDataModelImpl>(this, _$identity);
}

abstract class _BoutiqueCategoryItemDataModel
    extends BoutiqueCategoryItemDataModel {
  factory _BoutiqueCategoryItemDataModel(
          {required final String title,
          required final List<dynamic> listInfo}) =
      _$BoutiqueCategoryItemDataModelImpl;
  _BoutiqueCategoryItemDataModel._() : super._();

  @override
  String get title;
  @override
  List<dynamic> get listInfo;
  @override
  @JsonKey(ignore: true)
  _$$BoutiqueCategoryItemDataModelImplCopyWith<
          _$BoutiqueCategoryItemDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
