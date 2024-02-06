// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sections_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionsResponse _$SectionsResponseFromJson(Map<String, dynamic> json) {
  return _SectionsResponse.fromJson(json);
}

/// @nodoc
mixin _$SectionsResponse {
  PrevResponse? get prev => throw _privateConstructorUsedError;
  @JsonKey(name: 'this')
  ThisResponse? get thiss => throw _privateConstructorUsedError;
  NextResponse? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionsResponseCopyWith<SectionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsResponseCopyWith<$Res> {
  factory $SectionsResponseCopyWith(
          SectionsResponse value, $Res Function(SectionsResponse) then) =
      _$SectionsResponseCopyWithImpl<$Res, SectionsResponse>;
  @useResult
  $Res call(
      {PrevResponse? prev,
      @JsonKey(name: 'this') ThisResponse? thiss,
      NextResponse? next});

  $PrevResponseCopyWith<$Res>? get prev;
  $ThisResponseCopyWith<$Res>? get thiss;
  $NextResponseCopyWith<$Res>? get next;
}

/// @nodoc
class _$SectionsResponseCopyWithImpl<$Res, $Val extends SectionsResponse>
    implements $SectionsResponseCopyWith<$Res> {
  _$SectionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prev = freezed,
    Object? thiss = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as PrevResponse?,
      thiss: freezed == thiss
          ? _value.thiss
          : thiss // ignore: cast_nullable_to_non_nullable
              as ThisResponse?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as NextResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrevResponseCopyWith<$Res>? get prev {
    if (_value.prev == null) {
      return null;
    }

    return $PrevResponseCopyWith<$Res>(_value.prev!, (value) {
      return _then(_value.copyWith(prev: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThisResponseCopyWith<$Res>? get thiss {
    if (_value.thiss == null) {
      return null;
    }

    return $ThisResponseCopyWith<$Res>(_value.thiss!, (value) {
      return _then(_value.copyWith(thiss: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NextResponseCopyWith<$Res>? get next {
    if (_value.next == null) {
      return null;
    }

    return $NextResponseCopyWith<$Res>(_value.next!, (value) {
      return _then(_value.copyWith(next: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionsResponseImplCopyWith<$Res>
    implements $SectionsResponseCopyWith<$Res> {
  factory _$$SectionsResponseImplCopyWith(_$SectionsResponseImpl value,
          $Res Function(_$SectionsResponseImpl) then) =
      __$$SectionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PrevResponse? prev,
      @JsonKey(name: 'this') ThisResponse? thiss,
      NextResponse? next});

  @override
  $PrevResponseCopyWith<$Res>? get prev;
  @override
  $ThisResponseCopyWith<$Res>? get thiss;
  @override
  $NextResponseCopyWith<$Res>? get next;
}

/// @nodoc
class __$$SectionsResponseImplCopyWithImpl<$Res>
    extends _$SectionsResponseCopyWithImpl<$Res, _$SectionsResponseImpl>
    implements _$$SectionsResponseImplCopyWith<$Res> {
  __$$SectionsResponseImplCopyWithImpl(_$SectionsResponseImpl _value,
      $Res Function(_$SectionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prev = freezed,
    Object? thiss = freezed,
    Object? next = freezed,
  }) {
    return _then(_$SectionsResponseImpl(
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as PrevResponse?,
      thiss: freezed == thiss
          ? _value.thiss
          : thiss // ignore: cast_nullable_to_non_nullable
              as ThisResponse?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as NextResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionsResponseImpl extends _SectionsResponse {
  _$SectionsResponseImpl(
      {this.prev, @JsonKey(name: 'this') this.thiss, this.next})
      : super._();

  factory _$SectionsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionsResponseImplFromJson(json);

  @override
  final PrevResponse? prev;
  @override
  @JsonKey(name: 'this')
  final ThisResponse? thiss;
  @override
  final NextResponse? next;

  @override
  String toString() {
    return 'SectionsResponse(prev: $prev, thiss: $thiss, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionsResponseImpl &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.thiss, thiss) || other.thiss == thiss) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prev, thiss, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionsResponseImplCopyWith<_$SectionsResponseImpl> get copyWith =>
      __$$SectionsResponseImplCopyWithImpl<_$SectionsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionsResponseImplToJson(
      this,
    );
  }
}

abstract class _SectionsResponse extends SectionsResponse {
  factory _SectionsResponse(
      {final PrevResponse? prev,
      @JsonKey(name: 'this') final ThisResponse? thiss,
      final NextResponse? next}) = _$SectionsResponseImpl;
  _SectionsResponse._() : super._();

  factory _SectionsResponse.fromJson(Map<String, dynamic> json) =
      _$SectionsResponseImpl.fromJson;

  @override
  PrevResponse? get prev;
  @override
  @JsonKey(name: 'this')
  ThisResponse? get thiss;
  @override
  NextResponse? get next;
  @override
  @JsonKey(ignore: true)
  _$$SectionsResponseImplCopyWith<_$SectionsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
