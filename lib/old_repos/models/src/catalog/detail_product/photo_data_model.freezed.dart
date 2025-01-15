// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhotoDataModel {
  List<String> get mini => throw _privateConstructorUsedError;
  List<String> get full => throw _privateConstructorUsedError;
  List<String> get orig => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoDataModelCopyWith<PhotoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoDataModelCopyWith<$Res> {
  factory $PhotoDataModelCopyWith(
          PhotoDataModel value, $Res Function(PhotoDataModel) then) =
      _$PhotoDataModelCopyWithImpl<$Res, PhotoDataModel>;
  @useResult
  $Res call({List<String> mini, List<String> full, List<String> orig});
}

/// @nodoc
class _$PhotoDataModelCopyWithImpl<$Res, $Val extends PhotoDataModel>
    implements $PhotoDataModelCopyWith<$Res> {
  _$PhotoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mini = null,
    Object? full = null,
    Object? orig = null,
  }) {
    return _then(_value.copyWith(
      mini: null == mini
          ? _value.mini
          : mini // ignore: cast_nullable_to_non_nullable
              as List<String>,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as List<String>,
      orig: null == orig
          ? _value.orig
          : orig // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoDataModelImplCopyWith<$Res>
    implements $PhotoDataModelCopyWith<$Res> {
  factory _$$PhotoDataModelImplCopyWith(_$PhotoDataModelImpl value,
          $Res Function(_$PhotoDataModelImpl) then) =
      __$$PhotoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> mini, List<String> full, List<String> orig});
}

/// @nodoc
class __$$PhotoDataModelImplCopyWithImpl<$Res>
    extends _$PhotoDataModelCopyWithImpl<$Res, _$PhotoDataModelImpl>
    implements _$$PhotoDataModelImplCopyWith<$Res> {
  __$$PhotoDataModelImplCopyWithImpl(
      _$PhotoDataModelImpl _value, $Res Function(_$PhotoDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mini = null,
    Object? full = null,
    Object? orig = null,
  }) {
    return _then(_$PhotoDataModelImpl(
      mini: null == mini
          ? _value._mini
          : mini // ignore: cast_nullable_to_non_nullable
              as List<String>,
      full: null == full
          ? _value._full
          : full // ignore: cast_nullable_to_non_nullable
              as List<String>,
      orig: null == orig
          ? _value._orig
          : orig // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$PhotoDataModelImpl extends _PhotoDataModel {
  _$PhotoDataModelImpl(
      {required final List<String> mini,
      required final List<String> full,
      required final List<String> orig})
      : _mini = mini,
        _full = full,
        _orig = orig,
        super._();

  final List<String> _mini;
  @override
  List<String> get mini {
    if (_mini is EqualUnmodifiableListView) return _mini;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mini);
  }

  final List<String> _full;
  @override
  List<String> get full {
    if (_full is EqualUnmodifiableListView) return _full;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_full);
  }

  final List<String> _orig;
  @override
  List<String> get orig {
    if (_orig is EqualUnmodifiableListView) return _orig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orig);
  }

  @override
  String toString() {
    return 'PhotoDataModel(mini: $mini, full: $full, orig: $orig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoDataModelImpl &&
            const DeepCollectionEquality().equals(other._mini, _mini) &&
            const DeepCollectionEquality().equals(other._full, _full) &&
            const DeepCollectionEquality().equals(other._orig, _orig));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_mini),
      const DeepCollectionEquality().hash(_full),
      const DeepCollectionEquality().hash(_orig));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoDataModelImplCopyWith<_$PhotoDataModelImpl> get copyWith =>
      __$$PhotoDataModelImplCopyWithImpl<_$PhotoDataModelImpl>(
          this, _$identity);
}

abstract class _PhotoDataModel extends PhotoDataModel {
  factory _PhotoDataModel(
      {required final List<String> mini,
      required final List<String> full,
      required final List<String> orig}) = _$PhotoDataModelImpl;
  _PhotoDataModel._() : super._();

  @override
  List<String> get mini;
  @override
  List<String> get full;
  @override
  List<String> get orig;
  @override
  @JsonKey(ignore: true)
  _$$PhotoDataModelImplCopyWith<_$PhotoDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
