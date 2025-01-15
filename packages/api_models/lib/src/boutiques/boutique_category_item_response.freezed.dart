// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutique_category_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoutiqueCategoryItemResponse _$BoutiqueCategoryItemResponseFromJson(
    Map<String, dynamic> json) {
  return _BoutiqueCategoryItemResponse.fromJson(json);
}

/// @nodoc
mixin _$BoutiqueCategoryItemResponse {
  String? get title => throw _privateConstructorUsedError;
  List<dynamic>? get listInfo => throw _privateConstructorUsedError;

  /// Serializes this BoutiqueCategoryItemResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BoutiqueCategoryItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BoutiqueCategoryItemResponseCopyWith<BoutiqueCategoryItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiqueCategoryItemResponseCopyWith<$Res> {
  factory $BoutiqueCategoryItemResponseCopyWith(
          BoutiqueCategoryItemResponse value,
          $Res Function(BoutiqueCategoryItemResponse) then) =
      _$BoutiqueCategoryItemResponseCopyWithImpl<$Res,
          BoutiqueCategoryItemResponse>;
  @useResult
  $Res call({String? title, List<dynamic>? listInfo});
}

/// @nodoc
class _$BoutiqueCategoryItemResponseCopyWithImpl<$Res,
        $Val extends BoutiqueCategoryItemResponse>
    implements $BoutiqueCategoryItemResponseCopyWith<$Res> {
  _$BoutiqueCategoryItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BoutiqueCategoryItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? listInfo = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      listInfo: freezed == listInfo
          ? _value.listInfo
          : listInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoutiqueCategoryItemResponseImplCopyWith<$Res>
    implements $BoutiqueCategoryItemResponseCopyWith<$Res> {
  factory _$$BoutiqueCategoryItemResponseImplCopyWith(
          _$BoutiqueCategoryItemResponseImpl value,
          $Res Function(_$BoutiqueCategoryItemResponseImpl) then) =
      __$$BoutiqueCategoryItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, List<dynamic>? listInfo});
}

/// @nodoc
class __$$BoutiqueCategoryItemResponseImplCopyWithImpl<$Res>
    extends _$BoutiqueCategoryItemResponseCopyWithImpl<$Res,
        _$BoutiqueCategoryItemResponseImpl>
    implements _$$BoutiqueCategoryItemResponseImplCopyWith<$Res> {
  __$$BoutiqueCategoryItemResponseImplCopyWithImpl(
      _$BoutiqueCategoryItemResponseImpl _value,
      $Res Function(_$BoutiqueCategoryItemResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BoutiqueCategoryItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? listInfo = freezed,
  }) {
    return _then(_$BoutiqueCategoryItemResponseImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      listInfo: freezed == listInfo
          ? _value._listInfo
          : listInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoutiqueCategoryItemResponseImpl extends _BoutiqueCategoryItemResponse {
  _$BoutiqueCategoryItemResponseImpl(
      {this.title, final List<dynamic>? listInfo})
      : _listInfo = listInfo,
        super._();

  factory _$BoutiqueCategoryItemResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BoutiqueCategoryItemResponseImplFromJson(json);

  @override
  final String? title;
  final List<dynamic>? _listInfo;
  @override
  List<dynamic>? get listInfo {
    final value = _listInfo;
    if (value == null) return null;
    if (_listInfo is EqualUnmodifiableListView) return _listInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BoutiqueCategoryItemResponse(title: $title, listInfo: $listInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiqueCategoryItemResponseImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._listInfo, _listInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_listInfo));

  /// Create a copy of BoutiqueCategoryItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiqueCategoryItemResponseImplCopyWith<
          _$BoutiqueCategoryItemResponseImpl>
      get copyWith => __$$BoutiqueCategoryItemResponseImplCopyWithImpl<
          _$BoutiqueCategoryItemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoutiqueCategoryItemResponseImplToJson(
      this,
    );
  }
}

abstract class _BoutiqueCategoryItemResponse
    extends BoutiqueCategoryItemResponse {
  factory _BoutiqueCategoryItemResponse(
      {final String? title,
      final List<dynamic>? listInfo}) = _$BoutiqueCategoryItemResponseImpl;
  _BoutiqueCategoryItemResponse._() : super._();

  factory _BoutiqueCategoryItemResponse.fromJson(Map<String, dynamic> json) =
      _$BoutiqueCategoryItemResponseImpl.fromJson;

  @override
  String? get title;
  @override
  List<dynamic>? get listInfo;

  /// Create a copy of BoutiqueCategoryItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoutiqueCategoryItemResponseImplCopyWith<
          _$BoutiqueCategoryItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
