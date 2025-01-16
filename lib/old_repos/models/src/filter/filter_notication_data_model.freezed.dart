// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_notication_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterNotifcationDataModel {
  String get url => throw _privateConstructorUsedError;
  List<FilterNotifcationItemDataModel> get filter =>
      throw _privateConstructorUsedError;
  List<FilterNotifcationItemDataModel> get fullFilter =>
      throw _privateConstructorUsedError;

  /// Create a copy of FilterNotifcationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterNotifcationDataModelCopyWith<FilterNotifcationDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterNotifcationDataModelCopyWith<$Res> {
  factory $FilterNotifcationDataModelCopyWith(FilterNotifcationDataModel value,
          $Res Function(FilterNotifcationDataModel) then) =
      _$FilterNotifcationDataModelCopyWithImpl<$Res,
          FilterNotifcationDataModel>;
  @useResult
  $Res call(
      {String url,
      List<FilterNotifcationItemDataModel> filter,
      List<FilterNotifcationItemDataModel> fullFilter});
}

/// @nodoc
class _$FilterNotifcationDataModelCopyWithImpl<$Res,
        $Val extends FilterNotifcationDataModel>
    implements $FilterNotifcationDataModelCopyWith<$Res> {
  _$FilterNotifcationDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterNotifcationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? filter = null,
    Object? fullFilter = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<FilterNotifcationItemDataModel>,
      fullFilter: null == fullFilter
          ? _value.fullFilter
          : fullFilter // ignore: cast_nullable_to_non_nullable
              as List<FilterNotifcationItemDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterNotifcationDataModelImplCopyWith<$Res>
    implements $FilterNotifcationDataModelCopyWith<$Res> {
  factory _$$FilterNotifcationDataModelImplCopyWith(
          _$FilterNotifcationDataModelImpl value,
          $Res Function(_$FilterNotifcationDataModelImpl) then) =
      __$$FilterNotifcationDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      List<FilterNotifcationItemDataModel> filter,
      List<FilterNotifcationItemDataModel> fullFilter});
}

/// @nodoc
class __$$FilterNotifcationDataModelImplCopyWithImpl<$Res>
    extends _$FilterNotifcationDataModelCopyWithImpl<$Res,
        _$FilterNotifcationDataModelImpl>
    implements _$$FilterNotifcationDataModelImplCopyWith<$Res> {
  __$$FilterNotifcationDataModelImplCopyWithImpl(
      _$FilterNotifcationDataModelImpl _value,
      $Res Function(_$FilterNotifcationDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterNotifcationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? filter = null,
    Object? fullFilter = null,
  }) {
    return _then(_$FilterNotifcationDataModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<FilterNotifcationItemDataModel>,
      fullFilter: null == fullFilter
          ? _value._fullFilter
          : fullFilter // ignore: cast_nullable_to_non_nullable
              as List<FilterNotifcationItemDataModel>,
    ));
  }
}

/// @nodoc

class _$FilterNotifcationDataModelImpl extends _FilterNotifcationDataModel {
  _$FilterNotifcationDataModelImpl(
      {required this.url,
      required final List<FilterNotifcationItemDataModel> filter,
      required final List<FilterNotifcationItemDataModel> fullFilter})
      : _filter = filter,
        _fullFilter = fullFilter,
        super._();

  @override
  final String url;
  final List<FilterNotifcationItemDataModel> _filter;
  @override
  List<FilterNotifcationItemDataModel> get filter {
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filter);
  }

  final List<FilterNotifcationItemDataModel> _fullFilter;
  @override
  List<FilterNotifcationItemDataModel> get fullFilter {
    if (_fullFilter is EqualUnmodifiableListView) return _fullFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fullFilter);
  }

  @override
  String toString() {
    return 'FilterNotifcationDataModel(url: $url, filter: $filter, fullFilter: $fullFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterNotifcationDataModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            const DeepCollectionEquality()
                .equals(other._fullFilter, _fullFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      const DeepCollectionEquality().hash(_filter),
      const DeepCollectionEquality().hash(_fullFilter));

  /// Create a copy of FilterNotifcationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterNotifcationDataModelImplCopyWith<_$FilterNotifcationDataModelImpl>
      get copyWith => __$$FilterNotifcationDataModelImplCopyWithImpl<
          _$FilterNotifcationDataModelImpl>(this, _$identity);
}

abstract class _FilterNotifcationDataModel extends FilterNotifcationDataModel {
  factory _FilterNotifcationDataModel(
          {required final String url,
          required final List<FilterNotifcationItemDataModel> filter,
          required final List<FilterNotifcationItemDataModel> fullFilter}) =
      _$FilterNotifcationDataModelImpl;
  _FilterNotifcationDataModel._() : super._();

  @override
  String get url;
  @override
  List<FilterNotifcationItemDataModel> get filter;
  @override
  List<FilterNotifcationItemDataModel> get fullFilter;

  /// Create a copy of FilterNotifcationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterNotifcationDataModelImplCopyWith<_$FilterNotifcationDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
