// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuItemDataModel {
  int get idParent => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get sub => throw _privateConstructorUsedError;
  int get title => throw _privateConstructorUsedError;
  int get brand => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuItemDataModelCopyWith<MenuItemDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemDataModelCopyWith<$Res> {
  factory $MenuItemDataModelCopyWith(
          MenuItemDataModel value, $Res Function(MenuItemDataModel) then) =
      _$MenuItemDataModelCopyWithImpl<$Res, MenuItemDataModel>;
  @useResult
  $Res call(
      {int idParent,
      int id,
      String url,
      String name,
      int sub,
      int title,
      int brand});
}

/// @nodoc
class _$MenuItemDataModelCopyWithImpl<$Res, $Val extends MenuItemDataModel>
    implements $MenuItemDataModelCopyWith<$Res> {
  _$MenuItemDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idParent = null,
    Object? id = null,
    Object? url = null,
    Object? name = null,
    Object? sub = null,
    Object? title = null,
    Object? brand = null,
  }) {
    return _then(_value.copyWith(
      idParent: null == idParent
          ? _value.idParent
          : idParent // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sub: null == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuItemDataModelImplCopyWith<$Res>
    implements $MenuItemDataModelCopyWith<$Res> {
  factory _$$MenuItemDataModelImplCopyWith(_$MenuItemDataModelImpl value,
          $Res Function(_$MenuItemDataModelImpl) then) =
      __$$MenuItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idParent,
      int id,
      String url,
      String name,
      int sub,
      int title,
      int brand});
}

/// @nodoc
class __$$MenuItemDataModelImplCopyWithImpl<$Res>
    extends _$MenuItemDataModelCopyWithImpl<$Res, _$MenuItemDataModelImpl>
    implements _$$MenuItemDataModelImplCopyWith<$Res> {
  __$$MenuItemDataModelImplCopyWithImpl(_$MenuItemDataModelImpl _value,
      $Res Function(_$MenuItemDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idParent = null,
    Object? id = null,
    Object? url = null,
    Object? name = null,
    Object? sub = null,
    Object? title = null,
    Object? brand = null,
  }) {
    return _then(_$MenuItemDataModelImpl(
      idParent: null == idParent
          ? _value.idParent
          : idParent // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sub: null == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MenuItemDataModelImpl extends _MenuItemDataModel {
  _$MenuItemDataModelImpl(
      {required this.idParent,
      required this.id,
      required this.url,
      required this.name,
      required this.sub,
      required this.title,
      required this.brand})
      : super._();

  @override
  final int idParent;
  @override
  final int id;
  @override
  final String url;
  @override
  final String name;
  @override
  final int sub;
  @override
  final int title;
  @override
  final int brand;

  @override
  String toString() {
    return 'MenuItemDataModel(idParent: $idParent, id: $id, url: $url, name: $name, sub: $sub, title: $title, brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemDataModelImpl &&
            (identical(other.idParent, idParent) ||
                other.idParent == idParent) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, idParent, id, url, name, sub, title, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemDataModelImplCopyWith<_$MenuItemDataModelImpl> get copyWith =>
      __$$MenuItemDataModelImplCopyWithImpl<_$MenuItemDataModelImpl>(
          this, _$identity);
}

abstract class _MenuItemDataModel extends MenuItemDataModel {
  factory _MenuItemDataModel(
      {required final int idParent,
      required final int id,
      required final String url,
      required final String name,
      required final int sub,
      required final int title,
      required final int brand}) = _$MenuItemDataModelImpl;
  _MenuItemDataModel._() : super._();

  @override
  int get idParent;
  @override
  int get id;
  @override
  String get url;
  @override
  String get name;
  @override
  int get sub;
  @override
  int get title;
  @override
  int get brand;
  @override
  @JsonKey(ignore: true)
  _$$MenuItemDataModelImplCopyWith<_$MenuItemDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
