// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterResponse _$FilterResponseFromJson(Map<String, dynamic> json) {
  return _FilterResponse.fromJson(json);
}

/// @nodoc
mixin _$FilterResponse {
  List<FilterInfoResponse>? get filter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterResponseCopyWith<FilterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterResponseCopyWith<$Res> {
  factory $FilterResponseCopyWith(
          FilterResponse value, $Res Function(FilterResponse) then) =
      _$FilterResponseCopyWithImpl<$Res, FilterResponse>;
  @useResult
  $Res call({List<FilterInfoResponse>? filter});
}

/// @nodoc
class _$FilterResponseCopyWithImpl<$Res, $Val extends FilterResponse>
    implements $FilterResponseCopyWith<$Res> {
  _$FilterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<FilterInfoResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterResponseImplCopyWith<$Res>
    implements $FilterResponseCopyWith<$Res> {
  factory _$$FilterResponseImplCopyWith(_$FilterResponseImpl value,
          $Res Function(_$FilterResponseImpl) then) =
      __$$FilterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FilterInfoResponse>? filter});
}

/// @nodoc
class __$$FilterResponseImplCopyWithImpl<$Res>
    extends _$FilterResponseCopyWithImpl<$Res, _$FilterResponseImpl>
    implements _$$FilterResponseImplCopyWith<$Res> {
  __$$FilterResponseImplCopyWithImpl(
      _$FilterResponseImpl _value, $Res Function(_$FilterResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$FilterResponseImpl(
      filter: freezed == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<FilterInfoResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterResponseImpl extends _FilterResponse {
  _$FilterResponseImpl({final List<FilterInfoResponse>? filter})
      : _filter = filter,
        super._();

  factory _$FilterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterResponseImplFromJson(json);

  final List<FilterInfoResponse>? _filter;
  @override
  List<FilterInfoResponse>? get filter {
    final value = _filter;
    if (value == null) return null;
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FilterResponse(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterResponseImpl &&
            const DeepCollectionEquality().equals(other._filter, _filter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterResponseImplCopyWith<_$FilterResponseImpl> get copyWith =>
      __$$FilterResponseImplCopyWithImpl<_$FilterResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterResponseImplToJson(
      this,
    );
  }
}

abstract class _FilterResponse extends FilterResponse {
  factory _FilterResponse({final List<FilterInfoResponse>? filter}) =
      _$FilterResponseImpl;
  _FilterResponse._() : super._();

  factory _FilterResponse.fromJson(Map<String, dynamic> json) =
      _$FilterResponseImpl.fromJson;

  @override
  List<FilterInfoResponse>? get filter;
  @override
  @JsonKey(ignore: true)
  _$$FilterResponseImplCopyWith<_$FilterResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
