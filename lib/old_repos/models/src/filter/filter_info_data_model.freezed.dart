// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterInfoDataModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get typeFilter => throw _privateConstructorUsedError;
  bool get isSearch => throw _privateConstructorUsedError;
  List<FilterItemDataModel> get items => throw _privateConstructorUsedError;

  /// Create a copy of FilterInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterInfoDataModelCopyWith<FilterInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterInfoDataModelCopyWith<$Res> {
  factory $FilterInfoDataModelCopyWith(
          FilterInfoDataModel value, $Res Function(FilterInfoDataModel) then) =
      _$FilterInfoDataModelCopyWithImpl<$Res, FilterInfoDataModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String typeFilter,
      bool isSearch,
      List<FilterItemDataModel> items});
}

/// @nodoc
class _$FilterInfoDataModelCopyWithImpl<$Res, $Val extends FilterInfoDataModel>
    implements $FilterInfoDataModelCopyWith<$Res> {
  _$FilterInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? typeFilter = null,
    Object? isSearch = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      typeFilter: null == typeFilter
          ? _value.typeFilter
          : typeFilter // ignore: cast_nullable_to_non_nullable
              as String,
      isSearch: null == isSearch
          ? _value.isSearch
          : isSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FilterItemDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterInfoDataModelImplCopyWith<$Res>
    implements $FilterInfoDataModelCopyWith<$Res> {
  factory _$$FilterInfoDataModelImplCopyWith(_$FilterInfoDataModelImpl value,
          $Res Function(_$FilterInfoDataModelImpl) then) =
      __$$FilterInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String typeFilter,
      bool isSearch,
      List<FilterItemDataModel> items});
}

/// @nodoc
class __$$FilterInfoDataModelImplCopyWithImpl<$Res>
    extends _$FilterInfoDataModelCopyWithImpl<$Res, _$FilterInfoDataModelImpl>
    implements _$$FilterInfoDataModelImplCopyWith<$Res> {
  __$$FilterInfoDataModelImplCopyWithImpl(_$FilterInfoDataModelImpl _value,
      $Res Function(_$FilterInfoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? typeFilter = null,
    Object? isSearch = null,
    Object? items = null,
  }) {
    return _then(_$FilterInfoDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      typeFilter: null == typeFilter
          ? _value.typeFilter
          : typeFilter // ignore: cast_nullable_to_non_nullable
              as String,
      isSearch: null == isSearch
          ? _value.isSearch
          : isSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FilterItemDataModel>,
    ));
  }
}

/// @nodoc

class _$FilterInfoDataModelImpl extends _FilterInfoDataModel {
  _$FilterInfoDataModelImpl(
      {required this.id,
      required this.title,
      required this.typeFilter,
      required this.isSearch,
      required final List<FilterItemDataModel> items})
      : _items = items,
        super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final String typeFilter;
  @override
  final bool isSearch;
  final List<FilterItemDataModel> _items;
  @override
  List<FilterItemDataModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'FilterInfoDataModel(id: $id, title: $title, typeFilter: $typeFilter, isSearch: $isSearch, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterInfoDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.typeFilter, typeFilter) ||
                other.typeFilter == typeFilter) &&
            (identical(other.isSearch, isSearch) ||
                other.isSearch == isSearch) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, typeFilter, isSearch,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of FilterInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterInfoDataModelImplCopyWith<_$FilterInfoDataModelImpl> get copyWith =>
      __$$FilterInfoDataModelImplCopyWithImpl<_$FilterInfoDataModelImpl>(
          this, _$identity);
}

abstract class _FilterInfoDataModel extends FilterInfoDataModel {
  factory _FilterInfoDataModel(
          {required final String id,
          required final String title,
          required final String typeFilter,
          required final bool isSearch,
          required final List<FilterItemDataModel> items}) =
      _$FilterInfoDataModelImpl;
  _FilterInfoDataModel._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  String get typeFilter;
  @override
  bool get isSearch;
  @override
  List<FilterItemDataModel> get items;

  /// Create a copy of FilterInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterInfoDataModelImplCopyWith<_$FilterInfoDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
