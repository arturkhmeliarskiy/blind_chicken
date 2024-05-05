// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockProductResponse _$StockProductResponseFromJson(Map<String, dynamic> json) {
  return _StockProductResponse.fromJson(json);
}

/// @nodoc
mixin _$StockProductResponse {
  String? get id => throw _privateConstructorUsedError;
  List<String>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockProductResponseCopyWith<StockProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockProductResponseCopyWith<$Res> {
  factory $StockProductResponseCopyWith(StockProductResponse value,
          $Res Function(StockProductResponse) then) =
      _$StockProductResponseCopyWithImpl<$Res, StockProductResponse>;
  @useResult
  $Res call({String? id, List<String>? list});
}

/// @nodoc
class _$StockProductResponseCopyWithImpl<$Res,
        $Val extends StockProductResponse>
    implements $StockProductResponseCopyWith<$Res> {
  _$StockProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockProductResponseImplCopyWith<$Res>
    implements $StockProductResponseCopyWith<$Res> {
  factory _$$StockProductResponseImplCopyWith(_$StockProductResponseImpl value,
          $Res Function(_$StockProductResponseImpl) then) =
      __$$StockProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, List<String>? list});
}

/// @nodoc
class __$$StockProductResponseImplCopyWithImpl<$Res>
    extends _$StockProductResponseCopyWithImpl<$Res, _$StockProductResponseImpl>
    implements _$$StockProductResponseImplCopyWith<$Res> {
  __$$StockProductResponseImplCopyWithImpl(_$StockProductResponseImpl _value,
      $Res Function(_$StockProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? list = freezed,
  }) {
    return _then(_$StockProductResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockProductResponseImpl extends _StockProductResponse {
  _$StockProductResponseImpl({this.id, final List<String>? list})
      : _list = list,
        super._();

  factory _$StockProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockProductResponseImplFromJson(json);

  @override
  final String? id;
  final List<String>? _list;
  @override
  List<String>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StockProductResponse(id: $id, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockProductResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockProductResponseImplCopyWith<_$StockProductResponseImpl>
      get copyWith =>
          __$$StockProductResponseImplCopyWithImpl<_$StockProductResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockProductResponseImplToJson(
      this,
    );
  }
}

abstract class _StockProductResponse extends StockProductResponse {
  factory _StockProductResponse({final String? id, final List<String>? list}) =
      _$StockProductResponseImpl;
  _StockProductResponse._() : super._();

  factory _StockProductResponse.fromJson(Map<String, dynamic> json) =
      _$StockProductResponseImpl.fromJson;

  @override
  String? get id;
  @override
  List<String>? get list;
  @override
  @JsonKey(ignore: true)
  _$$StockProductResponseImplCopyWith<_$StockProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
