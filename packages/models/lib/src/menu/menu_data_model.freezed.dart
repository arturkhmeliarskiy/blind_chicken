// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuDataModel {
  List<MenuItemDataModel> get items => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of MenuDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuDataModelCopyWith<MenuDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuDataModelCopyWith<$Res> {
  factory $MenuDataModelCopyWith(
          MenuDataModel value, $Res Function(MenuDataModel) then) =
      _$MenuDataModelCopyWithImpl<$Res, MenuDataModel>;
  @useResult
  $Res call({List<MenuItemDataModel> items, String errorMessage});
}

/// @nodoc
class _$MenuDataModelCopyWithImpl<$Res, $Val extends MenuDataModel>
    implements $MenuDataModelCopyWith<$Res> {
  _$MenuDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItemDataModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuDataModelImplCopyWith<$Res>
    implements $MenuDataModelCopyWith<$Res> {
  factory _$$MenuDataModelImplCopyWith(
          _$MenuDataModelImpl value, $Res Function(_$MenuDataModelImpl) then) =
      __$$MenuDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MenuItemDataModel> items, String errorMessage});
}

/// @nodoc
class __$$MenuDataModelImplCopyWithImpl<$Res>
    extends _$MenuDataModelCopyWithImpl<$Res, _$MenuDataModelImpl>
    implements _$$MenuDataModelImplCopyWith<$Res> {
  __$$MenuDataModelImplCopyWithImpl(
      _$MenuDataModelImpl _value, $Res Function(_$MenuDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? errorMessage = null,
  }) {
    return _then(_$MenuDataModelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItemDataModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MenuDataModelImpl extends _MenuDataModel {
  _$MenuDataModelImpl(
      {required final List<MenuItemDataModel> items,
      required this.errorMessage})
      : _items = items,
        super._();

  final List<MenuItemDataModel> _items;
  @override
  List<MenuItemDataModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'MenuDataModel(items: $items, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuDataModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), errorMessage);

  /// Create a copy of MenuDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuDataModelImplCopyWith<_$MenuDataModelImpl> get copyWith =>
      __$$MenuDataModelImplCopyWithImpl<_$MenuDataModelImpl>(this, _$identity);
}

abstract class _MenuDataModel extends MenuDataModel {
  factory _MenuDataModel(
      {required final List<MenuItemDataModel> items,
      required final String errorMessage}) = _$MenuDataModelImpl;
  _MenuDataModel._() : super._();

  @override
  List<MenuItemDataModel> get items;
  @override
  String get errorMessage;

  /// Create a copy of MenuDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuDataModelImplCopyWith<_$MenuDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
