// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutique_info_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoutiqueInfoDetailResponse _$BoutiqueInfoDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _BoutiqueInfoDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$BoutiqueInfoDetailResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'category', fromJson: _convertCategory)
  List<BoutiqueCategoryItemResponse>? get category =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoutiqueInfoDetailResponseCopyWith<BoutiqueInfoDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiqueInfoDetailResponseCopyWith<$Res> {
  factory $BoutiqueInfoDetailResponseCopyWith(BoutiqueInfoDetailResponse value,
          $Res Function(BoutiqueInfoDetailResponse) then) =
      _$BoutiqueInfoDetailResponseCopyWithImpl<$Res,
          BoutiqueInfoDetailResponse>;
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      @JsonKey(name: 'category', fromJson: _convertCategory)
      List<BoutiqueCategoryItemResponse>? category});
}

/// @nodoc
class _$BoutiqueInfoDetailResponseCopyWithImpl<$Res,
        $Val extends BoutiqueInfoDetailResponse>
    implements $BoutiqueInfoDetailResponseCopyWith<$Res> {
  _$BoutiqueInfoDetailResponseCopyWithImpl(this._value, this._then);

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
    Object? category = freezed,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<BoutiqueCategoryItemResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoutiqueInfoDetailResponseImplCopyWith<$Res>
    implements $BoutiqueInfoDetailResponseCopyWith<$Res> {
  factory _$$BoutiqueInfoDetailResponseImplCopyWith(
          _$BoutiqueInfoDetailResponseImpl value,
          $Res Function(_$BoutiqueInfoDetailResponseImpl) then) =
      __$$BoutiqueInfoDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      @JsonKey(name: 'category', fromJson: _convertCategory)
      List<BoutiqueCategoryItemResponse>? category});
}

/// @nodoc
class __$$BoutiqueInfoDetailResponseImplCopyWithImpl<$Res>
    extends _$BoutiqueInfoDetailResponseCopyWithImpl<$Res,
        _$BoutiqueInfoDetailResponseImpl>
    implements _$$BoutiqueInfoDetailResponseImplCopyWith<$Res> {
  __$$BoutiqueInfoDetailResponseImplCopyWithImpl(
      _$BoutiqueInfoDetailResponseImpl _value,
      $Res Function(_$BoutiqueInfoDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? category = freezed,
  }) {
    return _then(_$BoutiqueInfoDetailResponseImpl(
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
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<BoutiqueCategoryItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoutiqueInfoDetailResponseImpl extends _BoutiqueInfoDetailResponse {
  _$BoutiqueInfoDetailResponseImpl(
      {this.r,
      this.e,
      this.errorMessage,
      @JsonKey(name: 'category', fromJson: _convertCategory)
      final List<BoutiqueCategoryItemResponse>? category})
      : _category = category,
        super._();

  factory _$BoutiqueInfoDetailResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BoutiqueInfoDetailResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;
  final List<BoutiqueCategoryItemResponse>? _category;
  @override
  @JsonKey(name: 'category', fromJson: _convertCategory)
  List<BoutiqueCategoryItemResponse>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BoutiqueInfoDetailResponse(r: $r, e: $e, errorMessage: $errorMessage, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiqueInfoDetailResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage,
      const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiqueInfoDetailResponseImplCopyWith<_$BoutiqueInfoDetailResponseImpl>
      get copyWith => __$$BoutiqueInfoDetailResponseImplCopyWithImpl<
          _$BoutiqueInfoDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoutiqueInfoDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _BoutiqueInfoDetailResponse extends BoutiqueInfoDetailResponse {
  factory _BoutiqueInfoDetailResponse(
          {final String? r,
          final String? e,
          final String? errorMessage,
          @JsonKey(name: 'category', fromJson: _convertCategory)
          final List<BoutiqueCategoryItemResponse>? category}) =
      _$BoutiqueInfoDetailResponseImpl;
  _BoutiqueInfoDetailResponse._() : super._();

  factory _BoutiqueInfoDetailResponse.fromJson(Map<String, dynamic> json) =
      _$BoutiqueInfoDetailResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  @JsonKey(name: 'category', fromJson: _convertCategory)
  List<BoutiqueCategoryItemResponse>? get category;
  @override
  @JsonKey(ignore: true)
  _$$BoutiqueInfoDetailResponseImplCopyWith<_$BoutiqueInfoDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
