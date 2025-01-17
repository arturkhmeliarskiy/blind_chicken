// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsInfoResponse _$NewsInfoResponseFromJson(Map<String, dynamic> json) {
  return _NewsInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$NewsInfoResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<NewsInfoItemResponse>? get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_viewed')
  bool? get isViewed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsInfoResponseCopyWith<NewsInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsInfoResponseCopyWith<$Res> {
  factory $NewsInfoResponseCopyWith(
          NewsInfoResponse value, $Res Function(NewsInfoResponse) then) =
      _$NewsInfoResponseCopyWithImpl<$Res, NewsInfoResponse>;
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      List<NewsInfoItemResponse>? list,
      @JsonKey(name: 'is_viewed') bool? isViewed});
}

/// @nodoc
class _$NewsInfoResponseCopyWithImpl<$Res, $Val extends NewsInfoResponse>
    implements $NewsInfoResponseCopyWith<$Res> {
  _$NewsInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? list = freezed,
    Object? isViewed = freezed,
  }) {
    return _then(_value.copyWith(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<NewsInfoItemResponse>?,
      isViewed: freezed == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsInfoResponseImplCopyWith<$Res>
    implements $NewsInfoResponseCopyWith<$Res> {
  factory _$$NewsInfoResponseImplCopyWith(_$NewsInfoResponseImpl value,
          $Res Function(_$NewsInfoResponseImpl) then) =
      __$$NewsInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      List<NewsInfoItemResponse>? list,
      @JsonKey(name: 'is_viewed') bool? isViewed});
}

/// @nodoc
class __$$NewsInfoResponseImplCopyWithImpl<$Res>
    extends _$NewsInfoResponseCopyWithImpl<$Res, _$NewsInfoResponseImpl>
    implements _$$NewsInfoResponseImplCopyWith<$Res> {
  __$$NewsInfoResponseImplCopyWithImpl(_$NewsInfoResponseImpl _value,
      $Res Function(_$NewsInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? list = freezed,
    Object? isViewed = freezed,
  }) {
    return _then(_$NewsInfoResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<NewsInfoItemResponse>?,
      isViewed: freezed == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsInfoResponseImpl extends _NewsInfoResponse {
  _$NewsInfoResponseImpl(
      {this.r,
      this.e,
      this.errorMessage,
      final List<NewsInfoItemResponse>? list,
      @JsonKey(name: 'is_viewed') this.isViewed})
      : _list = list,
        super._();

  factory _$NewsInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsInfoResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;
  final List<NewsInfoItemResponse>? _list;
  @override
  List<NewsInfoItemResponse>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_viewed')
  final bool? isViewed;

  @override
  String toString() {
    return 'NewsInfoResponse(r: $r, e: $e, errorMessage: $errorMessage, list: $list, isViewed: $isViewed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsInfoResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage,
      const DeepCollectionEquality().hash(_list), isViewed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsInfoResponseImplCopyWith<_$NewsInfoResponseImpl> get copyWith =>
      __$$NewsInfoResponseImplCopyWithImpl<_$NewsInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _NewsInfoResponse extends NewsInfoResponse {
  factory _NewsInfoResponse(
          {final String? r,
          final String? e,
          final String? errorMessage,
          final List<NewsInfoItemResponse>? list,
          @JsonKey(name: 'is_viewed') final bool? isViewed}) =
      _$NewsInfoResponseImpl;
  _NewsInfoResponse._() : super._();

  factory _NewsInfoResponse.fromJson(Map<String, dynamic> json) =
      _$NewsInfoResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  List<NewsInfoItemResponse>? get list;
  @override
  @JsonKey(name: 'is_viewed')
  bool? get isViewed;
  @override
  @JsonKey(ignore: true)
  _$$NewsInfoResponseImplCopyWith<_$NewsInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
