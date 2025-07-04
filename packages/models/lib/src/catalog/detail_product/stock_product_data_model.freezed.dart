// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StockProductDataModel {
  String get id => throw _privateConstructorUsedError;
  List<String> get list => throw _privateConstructorUsedError;

  /// Create a copy of StockProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockProductDataModelCopyWith<StockProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockProductDataModelCopyWith<$Res> {
  factory $StockProductDataModelCopyWith(StockProductDataModel value,
          $Res Function(StockProductDataModel) then) =
      _$StockProductDataModelCopyWithImpl<$Res, StockProductDataModel>;
  @useResult
  $Res call({String id, List<String> list});
}

/// @nodoc
class _$StockProductDataModelCopyWithImpl<$Res,
        $Val extends StockProductDataModel>
    implements $StockProductDataModelCopyWith<$Res> {
  _$StockProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockProductDataModelImplCopyWith<$Res>
    implements $StockProductDataModelCopyWith<$Res> {
  factory _$$StockProductDataModelImplCopyWith(
          _$StockProductDataModelImpl value,
          $Res Function(_$StockProductDataModelImpl) then) =
      __$$StockProductDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<String> list});
}

/// @nodoc
class __$$StockProductDataModelImplCopyWithImpl<$Res>
    extends _$StockProductDataModelCopyWithImpl<$Res,
        _$StockProductDataModelImpl>
    implements _$$StockProductDataModelImplCopyWith<$Res> {
  __$$StockProductDataModelImplCopyWithImpl(_$StockProductDataModelImpl _value,
      $Res Function(_$StockProductDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? list = null,
  }) {
    return _then(_$StockProductDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$StockProductDataModelImpl extends _StockProductDataModel {
  _$StockProductDataModelImpl(
      {required this.id, required final List<String> list})
      : _list = list,
        super._();

  @override
  final String id;
  final List<String> _list;
  @override
  List<String> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'StockProductDataModel(id: $id, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockProductDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_list));

  /// Create a copy of StockProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockProductDataModelImplCopyWith<_$StockProductDataModelImpl>
      get copyWith => __$$StockProductDataModelImplCopyWithImpl<
          _$StockProductDataModelImpl>(this, _$identity);
}

abstract class _StockProductDataModel extends StockProductDataModel {
  factory _StockProductDataModel(
      {required final String id,
      required final List<String> list}) = _$StockProductDataModelImpl;
  _StockProductDataModel._() : super._();

  @override
  String get id;
  @override
  List<String> get list;

  /// Create a copy of StockProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockProductDataModelImplCopyWith<_$StockProductDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
