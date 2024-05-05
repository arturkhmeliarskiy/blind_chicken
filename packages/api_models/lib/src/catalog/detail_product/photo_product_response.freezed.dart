// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhotoProductResponse _$PhotoProductResponseFromJson(Map<String, dynamic> json) {
  return _PhotoProductResponse.fromJson(json);
}

/// @nodoc
mixin _$PhotoProductResponse {
  List<String>? get mini => throw _privateConstructorUsedError;
  List<String>? get full => throw _privateConstructorUsedError;
  List<String>? get orig => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoProductResponseCopyWith<PhotoProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoProductResponseCopyWith<$Res> {
  factory $PhotoProductResponseCopyWith(PhotoProductResponse value,
          $Res Function(PhotoProductResponse) then) =
      _$PhotoProductResponseCopyWithImpl<$Res, PhotoProductResponse>;
  @useResult
  $Res call({List<String>? mini, List<String>? full, List<String>? orig});
}

/// @nodoc
class _$PhotoProductResponseCopyWithImpl<$Res,
        $Val extends PhotoProductResponse>
    implements $PhotoProductResponseCopyWith<$Res> {
  _$PhotoProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mini = freezed,
    Object? full = freezed,
    Object? orig = freezed,
  }) {
    return _then(_value.copyWith(
      mini: freezed == mini
          ? _value.mini
          : mini // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      full: freezed == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orig: freezed == orig
          ? _value.orig
          : orig // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoProductResponseImplCopyWith<$Res>
    implements $PhotoProductResponseCopyWith<$Res> {
  factory _$$PhotoProductResponseImplCopyWith(_$PhotoProductResponseImpl value,
          $Res Function(_$PhotoProductResponseImpl) then) =
      __$$PhotoProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? mini, List<String>? full, List<String>? orig});
}

/// @nodoc
class __$$PhotoProductResponseImplCopyWithImpl<$Res>
    extends _$PhotoProductResponseCopyWithImpl<$Res, _$PhotoProductResponseImpl>
    implements _$$PhotoProductResponseImplCopyWith<$Res> {
  __$$PhotoProductResponseImplCopyWithImpl(_$PhotoProductResponseImpl _value,
      $Res Function(_$PhotoProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mini = freezed,
    Object? full = freezed,
    Object? orig = freezed,
  }) {
    return _then(_$PhotoProductResponseImpl(
      mini: freezed == mini
          ? _value._mini
          : mini // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      full: freezed == full
          ? _value._full
          : full // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orig: freezed == orig
          ? _value._orig
          : orig // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoProductResponseImpl extends _PhotoProductResponse {
  _$PhotoProductResponseImpl(
      {final List<String>? mini,
      final List<String>? full,
      final List<String>? orig})
      : _mini = mini,
        _full = full,
        _orig = orig,
        super._();

  factory _$PhotoProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoProductResponseImplFromJson(json);

  final List<String>? _mini;
  @override
  List<String>? get mini {
    final value = _mini;
    if (value == null) return null;
    if (_mini is EqualUnmodifiableListView) return _mini;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _full;
  @override
  List<String>? get full {
    final value = _full;
    if (value == null) return null;
    if (_full is EqualUnmodifiableListView) return _full;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _orig;
  @override
  List<String>? get orig {
    final value = _orig;
    if (value == null) return null;
    if (_orig is EqualUnmodifiableListView) return _orig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PhotoProductResponse(mini: $mini, full: $full, orig: $orig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoProductResponseImpl &&
            const DeepCollectionEquality().equals(other._mini, _mini) &&
            const DeepCollectionEquality().equals(other._full, _full) &&
            const DeepCollectionEquality().equals(other._orig, _orig));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_mini),
      const DeepCollectionEquality().hash(_full),
      const DeepCollectionEquality().hash(_orig));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoProductResponseImplCopyWith<_$PhotoProductResponseImpl>
      get copyWith =>
          __$$PhotoProductResponseImplCopyWithImpl<_$PhotoProductResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoProductResponseImplToJson(
      this,
    );
  }
}

abstract class _PhotoProductResponse extends PhotoProductResponse {
  factory _PhotoProductResponse(
      {final List<String>? mini,
      final List<String>? full,
      final List<String>? orig}) = _$PhotoProductResponseImpl;
  _PhotoProductResponse._() : super._();

  factory _PhotoProductResponse.fromJson(Map<String, dynamic> json) =
      _$PhotoProductResponseImpl.fromJson;

  @override
  List<String>? get mini;
  @override
  List<String>? get full;
  @override
  List<String>? get orig;
  @override
  @JsonKey(ignore: true)
  _$$PhotoProductResponseImplCopyWith<_$PhotoProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
