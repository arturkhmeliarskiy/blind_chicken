// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuItemResponse _$MenuItemResponseFromJson(Map<String, dynamic> json) {
  return _MenuItemResponse.fromJson(json);
}

/// @nodoc
mixin _$MenuItemResponse {
  @JsonKey(name: 'id_parent')
  String? get idParent => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get title => throw _privateConstructorUsedError;
  int? get sub => throw _privateConstructorUsedError;
  int? get brand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuItemResponseCopyWith<MenuItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemResponseCopyWith<$Res> {
  factory $MenuItemResponseCopyWith(
          MenuItemResponse value, $Res Function(MenuItemResponse) then) =
      _$MenuItemResponseCopyWithImpl<$Res, MenuItemResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_parent') String? idParent,
      String? id,
      String? url,
      String? name,
      int? title,
      int? sub,
      int? brand});
}

/// @nodoc
class _$MenuItemResponseCopyWithImpl<$Res, $Val extends MenuItemResponse>
    implements $MenuItemResponseCopyWith<$Res> {
  _$MenuItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idParent = freezed,
    Object? id = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? sub = freezed,
    Object? brand = freezed,
  }) {
    return _then(_value.copyWith(
      idParent: freezed == idParent
          ? _value.idParent
          : idParent // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as int?,
      sub: freezed == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuItemResponseImplCopyWith<$Res>
    implements $MenuItemResponseCopyWith<$Res> {
  factory _$$MenuItemResponseImplCopyWith(_$MenuItemResponseImpl value,
          $Res Function(_$MenuItemResponseImpl) then) =
      __$$MenuItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_parent') String? idParent,
      String? id,
      String? url,
      String? name,
      int? title,
      int? sub,
      int? brand});
}

/// @nodoc
class __$$MenuItemResponseImplCopyWithImpl<$Res>
    extends _$MenuItemResponseCopyWithImpl<$Res, _$MenuItemResponseImpl>
    implements _$$MenuItemResponseImplCopyWith<$Res> {
  __$$MenuItemResponseImplCopyWithImpl(_$MenuItemResponseImpl _value,
      $Res Function(_$MenuItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idParent = freezed,
    Object? id = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? sub = freezed,
    Object? brand = freezed,
  }) {
    return _then(_$MenuItemResponseImpl(
      idParent: freezed == idParent
          ? _value.idParent
          : idParent // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as int?,
      sub: freezed == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuItemResponseImpl extends _MenuItemResponse {
  _$MenuItemResponseImpl(
      {@JsonKey(name: 'id_parent') this.idParent,
      this.id,
      this.url,
      this.name,
      this.title,
      this.sub,
      this.brand})
      : super._();

  factory _$MenuItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuItemResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id_parent')
  final String? idParent;
  @override
  final String? id;
  @override
  final String? url;
  @override
  final String? name;
  @override
  final int? title;
  @override
  final int? sub;
  @override
  final int? brand;

  @override
  String toString() {
    return 'MenuItemResponse(idParent: $idParent, id: $id, url: $url, name: $name, title: $title, sub: $sub, brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemResponseImpl &&
            (identical(other.idParent, idParent) ||
                other.idParent == idParent) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idParent, id, url, name, title, sub, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemResponseImplCopyWith<_$MenuItemResponseImpl> get copyWith =>
      __$$MenuItemResponseImplCopyWithImpl<_$MenuItemResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuItemResponseImplToJson(
      this,
    );
  }
}

abstract class _MenuItemResponse extends MenuItemResponse {
  factory _MenuItemResponse(
      {@JsonKey(name: 'id_parent') final String? idParent,
      final String? id,
      final String? url,
      final String? name,
      final int? title,
      final int? sub,
      final int? brand}) = _$MenuItemResponseImpl;
  _MenuItemResponse._() : super._();

  factory _MenuItemResponse.fromJson(Map<String, dynamic> json) =
      _$MenuItemResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id_parent')
  String? get idParent;
  @override
  String? get id;
  @override
  String? get url;
  @override
  String? get name;
  @override
  int? get title;
  @override
  int? get sub;
  @override
  int? get brand;
  @override
  @JsonKey(ignore: true)
  _$$MenuItemResponseImplCopyWith<_$MenuItemResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
