// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterInfoResponse _$FilterInfoResponseFromJson(Map<String, dynamic> json) {
  return _FilterInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$FilterInfoResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get isSearch => throw _privateConstructorUsedError;
  List<FilterItemResponse>? get items => throw _privateConstructorUsedError;

  /// Serializes this FilterInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterInfoResponseCopyWith<FilterInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterInfoResponseCopyWith<$Res> {
  factory $FilterInfoResponseCopyWith(
          FilterInfoResponse value, $Res Function(FilterInfoResponse) then) =
      _$FilterInfoResponseCopyWithImpl<$Res, FilterInfoResponse>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      bool? isSearch,
      List<FilterItemResponse>? items});
}

/// @nodoc
class _$FilterInfoResponseCopyWithImpl<$Res, $Val extends FilterInfoResponse>
    implements $FilterInfoResponseCopyWith<$Res> {
  _$FilterInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isSearch = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isSearch: freezed == isSearch
          ? _value.isSearch
          : isSearch // ignore: cast_nullable_to_non_nullable
              as bool?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FilterItemResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterInfoResponseImplCopyWith<$Res>
    implements $FilterInfoResponseCopyWith<$Res> {
  factory _$$FilterInfoResponseImplCopyWith(_$FilterInfoResponseImpl value,
          $Res Function(_$FilterInfoResponseImpl) then) =
      __$$FilterInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      bool? isSearch,
      List<FilterItemResponse>? items});
}

/// @nodoc
class __$$FilterInfoResponseImplCopyWithImpl<$Res>
    extends _$FilterInfoResponseCopyWithImpl<$Res, _$FilterInfoResponseImpl>
    implements _$$FilterInfoResponseImplCopyWith<$Res> {
  __$$FilterInfoResponseImplCopyWithImpl(_$FilterInfoResponseImpl _value,
      $Res Function(_$FilterInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isSearch = freezed,
    Object? items = freezed,
  }) {
    return _then(_$FilterInfoResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isSearch: freezed == isSearch
          ? _value.isSearch
          : isSearch // ignore: cast_nullable_to_non_nullable
              as bool?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FilterItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterInfoResponseImpl extends _FilterInfoResponse {
  _$FilterInfoResponseImpl(
      {this.id,
      this.title,
      this.isSearch,
      final List<FilterItemResponse>? items})
      : _items = items,
        super._();

  factory _$FilterInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterInfoResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final bool? isSearch;
  final List<FilterItemResponse>? _items;
  @override
  List<FilterItemResponse>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FilterInfoResponse(id: $id, title: $title, isSearch: $isSearch, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterInfoResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isSearch, isSearch) ||
                other.isSearch == isSearch) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, isSearch,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of FilterInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterInfoResponseImplCopyWith<_$FilterInfoResponseImpl> get copyWith =>
      __$$FilterInfoResponseImplCopyWithImpl<_$FilterInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _FilterInfoResponse extends FilterInfoResponse {
  factory _FilterInfoResponse(
      {final String? id,
      final String? title,
      final bool? isSearch,
      final List<FilterItemResponse>? items}) = _$FilterInfoResponseImpl;
  _FilterInfoResponse._() : super._();

  factory _FilterInfoResponse.fromJson(Map<String, dynamic> json) =
      _$FilterInfoResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  bool? get isSearch;
  @override
  List<FilterItemResponse>? get items;

  /// Create a copy of FilterInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterInfoResponseImplCopyWith<_$FilterInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
