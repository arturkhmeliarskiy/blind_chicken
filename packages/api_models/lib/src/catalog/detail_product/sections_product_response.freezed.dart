// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sections_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SectionsProductResponse _$SectionsProductResponseFromJson(
    Map<String, dynamic> json) {
  return _SectionsProductResponse.fromJson(json);
}

/// @nodoc
mixin _$SectionsProductResponse {
  String? get name => throw _privateConstructorUsedError;
  List<SectionItemProductResponse>? get list =>
      throw _privateConstructorUsedError;

  /// Serializes this SectionsProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SectionsProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionsProductResponseCopyWith<SectionsProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsProductResponseCopyWith<$Res> {
  factory $SectionsProductResponseCopyWith(SectionsProductResponse value,
          $Res Function(SectionsProductResponse) then) =
      _$SectionsProductResponseCopyWithImpl<$Res, SectionsProductResponse>;
  @useResult
  $Res call({String? name, List<SectionItemProductResponse>? list});
}

/// @nodoc
class _$SectionsProductResponseCopyWithImpl<$Res,
        $Val extends SectionsProductResponse>
    implements $SectionsProductResponseCopyWith<$Res> {
  _$SectionsProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionsProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SectionItemProductResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionsProductResponseImplCopyWith<$Res>
    implements $SectionsProductResponseCopyWith<$Res> {
  factory _$$SectionsProductResponseImplCopyWith(
          _$SectionsProductResponseImpl value,
          $Res Function(_$SectionsProductResponseImpl) then) =
      __$$SectionsProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, List<SectionItemProductResponse>? list});
}

/// @nodoc
class __$$SectionsProductResponseImplCopyWithImpl<$Res>
    extends _$SectionsProductResponseCopyWithImpl<$Res,
        _$SectionsProductResponseImpl>
    implements _$$SectionsProductResponseImplCopyWith<$Res> {
  __$$SectionsProductResponseImplCopyWithImpl(
      _$SectionsProductResponseImpl _value,
      $Res Function(_$SectionsProductResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionsProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? list = freezed,
  }) {
    return _then(_$SectionsProductResponseImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SectionItemProductResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionsProductResponseImpl extends _SectionsProductResponse {
  _$SectionsProductResponseImpl(
      {this.name, final List<SectionItemProductResponse>? list})
      : _list = list,
        super._();

  factory _$SectionsProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionsProductResponseImplFromJson(json);

  @override
  final String? name;
  final List<SectionItemProductResponse>? _list;
  @override
  List<SectionItemProductResponse>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SectionsProductResponse(name: $name, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionsProductResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_list));

  /// Create a copy of SectionsProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionsProductResponseImplCopyWith<_$SectionsProductResponseImpl>
      get copyWith => __$$SectionsProductResponseImplCopyWithImpl<
          _$SectionsProductResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionsProductResponseImplToJson(
      this,
    );
  }
}

abstract class _SectionsProductResponse extends SectionsProductResponse {
  factory _SectionsProductResponse(
          {final String? name, final List<SectionItemProductResponse>? list}) =
      _$SectionsProductResponseImpl;
  _SectionsProductResponse._() : super._();

  factory _SectionsProductResponse.fromJson(Map<String, dynamic> json) =
      _$SectionsProductResponseImpl.fromJson;

  @override
  String? get name;
  @override
  List<SectionItemProductResponse>? get list;

  /// Create a copy of SectionsProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionsProductResponseImplCopyWith<_$SectionsProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
