// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchLocationResponse _$SearchLocationResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchLocationResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchLocationResponse {
  SearchContextResponse? get searchContext =>
      throw _privateConstructorUsedError;
  List<SearchLocationInfoResponse>? get result =>
      throw _privateConstructorUsedError;

  /// Serializes this SearchLocationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchLocationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchLocationResponseCopyWith<SearchLocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationResponseCopyWith<$Res> {
  factory $SearchLocationResponseCopyWith(SearchLocationResponse value,
          $Res Function(SearchLocationResponse) then) =
      _$SearchLocationResponseCopyWithImpl<$Res, SearchLocationResponse>;
  @useResult
  $Res call(
      {SearchContextResponse? searchContext,
      List<SearchLocationInfoResponse>? result});

  $SearchContextResponseCopyWith<$Res>? get searchContext;
}

/// @nodoc
class _$SearchLocationResponseCopyWithImpl<$Res,
        $Val extends SearchLocationResponse>
    implements $SearchLocationResponseCopyWith<$Res> {
  _$SearchLocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchLocationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchContext = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      searchContext: freezed == searchContext
          ? _value.searchContext
          : searchContext // ignore: cast_nullable_to_non_nullable
              as SearchContextResponse?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SearchLocationInfoResponse>?,
    ) as $Val);
  }

  /// Create a copy of SearchLocationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchContextResponseCopyWith<$Res>? get searchContext {
    if (_value.searchContext == null) {
      return null;
    }

    return $SearchContextResponseCopyWith<$Res>(_value.searchContext!, (value) {
      return _then(_value.copyWith(searchContext: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchLocationResponseImplCopyWith<$Res>
    implements $SearchLocationResponseCopyWith<$Res> {
  factory _$$SearchLocationResponseImplCopyWith(
          _$SearchLocationResponseImpl value,
          $Res Function(_$SearchLocationResponseImpl) then) =
      __$$SearchLocationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchContextResponse? searchContext,
      List<SearchLocationInfoResponse>? result});

  @override
  $SearchContextResponseCopyWith<$Res>? get searchContext;
}

/// @nodoc
class __$$SearchLocationResponseImplCopyWithImpl<$Res>
    extends _$SearchLocationResponseCopyWithImpl<$Res,
        _$SearchLocationResponseImpl>
    implements _$$SearchLocationResponseImplCopyWith<$Res> {
  __$$SearchLocationResponseImplCopyWithImpl(
      _$SearchLocationResponseImpl _value,
      $Res Function(_$SearchLocationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLocationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchContext = freezed,
    Object? result = freezed,
  }) {
    return _then(_$SearchLocationResponseImpl(
      searchContext: freezed == searchContext
          ? _value.searchContext
          : searchContext // ignore: cast_nullable_to_non_nullable
              as SearchContextResponse?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SearchLocationInfoResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchLocationResponseImpl extends _SearchLocationResponse {
  _$SearchLocationResponseImpl(
      {this.searchContext, final List<SearchLocationInfoResponse>? result})
      : _result = result,
        super._();

  factory _$SearchLocationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchLocationResponseImplFromJson(json);

  @override
  final SearchContextResponse? searchContext;
  final List<SearchLocationInfoResponse>? _result;
  @override
  List<SearchLocationInfoResponse>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchLocationResponse(searchContext: $searchContext, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationResponseImpl &&
            (identical(other.searchContext, searchContext) ||
                other.searchContext == searchContext) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, searchContext, const DeepCollectionEquality().hash(_result));

  /// Create a copy of SearchLocationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocationResponseImplCopyWith<_$SearchLocationResponseImpl>
      get copyWith => __$$SearchLocationResponseImplCopyWithImpl<
          _$SearchLocationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchLocationResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchLocationResponse extends SearchLocationResponse {
  factory _SearchLocationResponse(
          {final SearchContextResponse? searchContext,
          final List<SearchLocationInfoResponse>? result}) =
      _$SearchLocationResponseImpl;
  _SearchLocationResponse._() : super._();

  factory _SearchLocationResponse.fromJson(Map<String, dynamic> json) =
      _$SearchLocationResponseImpl.fromJson;

  @override
  SearchContextResponse? get searchContext;
  @override
  List<SearchLocationInfoResponse>? get result;

  /// Create a copy of SearchLocationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchLocationResponseImplCopyWith<_$SearchLocationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
