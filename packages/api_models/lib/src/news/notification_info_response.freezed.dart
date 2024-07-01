// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationInfoResponse _$NotificationInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _NotificationInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$NotificationInfoResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<NotificationInfoItemResponse>? get list =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_viewed')
  bool? get isViewed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationInfoResponseCopyWith<NotificationInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationInfoResponseCopyWith<$Res> {
  factory $NotificationInfoResponseCopyWith(NotificationInfoResponse value,
          $Res Function(NotificationInfoResponse) then) =
      _$NotificationInfoResponseCopyWithImpl<$Res, NotificationInfoResponse>;
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      List<NotificationInfoItemResponse>? list,
      @JsonKey(name: 'is_viewed') bool? isViewed});
}

/// @nodoc
class _$NotificationInfoResponseCopyWithImpl<$Res,
        $Val extends NotificationInfoResponse>
    implements $NotificationInfoResponseCopyWith<$Res> {
  _$NotificationInfoResponseCopyWithImpl(this._value, this._then);

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
              as List<NotificationInfoItemResponse>?,
      isViewed: freezed == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationInfoResponseImplCopyWith<$Res>
    implements $NotificationInfoResponseCopyWith<$Res> {
  factory _$$NotificationInfoResponseImplCopyWith(
          _$NotificationInfoResponseImpl value,
          $Res Function(_$NotificationInfoResponseImpl) then) =
      __$$NotificationInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      List<NotificationInfoItemResponse>? list,
      @JsonKey(name: 'is_viewed') bool? isViewed});
}

/// @nodoc
class __$$NotificationInfoResponseImplCopyWithImpl<$Res>
    extends _$NotificationInfoResponseCopyWithImpl<$Res,
        _$NotificationInfoResponseImpl>
    implements _$$NotificationInfoResponseImplCopyWith<$Res> {
  __$$NotificationInfoResponseImplCopyWithImpl(
      _$NotificationInfoResponseImpl _value,
      $Res Function(_$NotificationInfoResponseImpl) _then)
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
    return _then(_$NotificationInfoResponseImpl(
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
              as List<NotificationInfoItemResponse>?,
      isViewed: freezed == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationInfoResponseImpl extends _NotificationInfoResponse {
  _$NotificationInfoResponseImpl(
      {this.r,
      this.e,
      this.errorMessage,
      final List<NotificationInfoItemResponse>? list,
      @JsonKey(name: 'is_viewed') this.isViewed})
      : _list = list,
        super._();

  factory _$NotificationInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationInfoResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;
  final List<NotificationInfoItemResponse>? _list;
  @override
  List<NotificationInfoItemResponse>? get list {
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
    return 'NotificationInfoResponse(r: $r, e: $e, errorMessage: $errorMessage, list: $list, isViewed: $isViewed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationInfoResponseImpl &&
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
  _$$NotificationInfoResponseImplCopyWith<_$NotificationInfoResponseImpl>
      get copyWith => __$$NotificationInfoResponseImplCopyWithImpl<
          _$NotificationInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _NotificationInfoResponse extends NotificationInfoResponse {
  factory _NotificationInfoResponse(
          {final String? r,
          final String? e,
          final String? errorMessage,
          final List<NotificationInfoItemResponse>? list,
          @JsonKey(name: 'is_viewed') final bool? isViewed}) =
      _$NotificationInfoResponseImpl;
  _NotificationInfoResponse._() : super._();

  factory _NotificationInfoResponse.fromJson(Map<String, dynamic> json) =
      _$NotificationInfoResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  List<NotificationInfoItemResponse>? get list;
  @override
  @JsonKey(name: 'is_viewed')
  bool? get isViewed;
  @override
  @JsonKey(ignore: true)
  _$$NotificationInfoResponseImplCopyWith<_$NotificationInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
