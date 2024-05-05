// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sections_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SectionsDataModel {
  PrevDataModel get prev => throw _privateConstructorUsedError;
  ThisDataModel get thiss => throw _privateConstructorUsedError;
  NextDataModel get next => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionsDataModelCopyWith<SectionsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsDataModelCopyWith<$Res> {
  factory $SectionsDataModelCopyWith(
          SectionsDataModel value, $Res Function(SectionsDataModel) then) =
      _$SectionsDataModelCopyWithImpl<$Res, SectionsDataModel>;
  @useResult
  $Res call({PrevDataModel prev, ThisDataModel thiss, NextDataModel next});

  $PrevDataModelCopyWith<$Res> get prev;
  $ThisDataModelCopyWith<$Res> get thiss;
  $NextDataModelCopyWith<$Res> get next;
}

/// @nodoc
class _$SectionsDataModelCopyWithImpl<$Res, $Val extends SectionsDataModel>
    implements $SectionsDataModelCopyWith<$Res> {
  _$SectionsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prev = null,
    Object? thiss = null,
    Object? next = null,
  }) {
    return _then(_value.copyWith(
      prev: null == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as PrevDataModel,
      thiss: null == thiss
          ? _value.thiss
          : thiss // ignore: cast_nullable_to_non_nullable
              as ThisDataModel,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as NextDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrevDataModelCopyWith<$Res> get prev {
    return $PrevDataModelCopyWith<$Res>(_value.prev, (value) {
      return _then(_value.copyWith(prev: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThisDataModelCopyWith<$Res> get thiss {
    return $ThisDataModelCopyWith<$Res>(_value.thiss, (value) {
      return _then(_value.copyWith(thiss: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NextDataModelCopyWith<$Res> get next {
    return $NextDataModelCopyWith<$Res>(_value.next, (value) {
      return _then(_value.copyWith(next: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionsDataModelImplCopyWith<$Res>
    implements $SectionsDataModelCopyWith<$Res> {
  factory _$$SectionsDataModelImplCopyWith(_$SectionsDataModelImpl value,
          $Res Function(_$SectionsDataModelImpl) then) =
      __$$SectionsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PrevDataModel prev, ThisDataModel thiss, NextDataModel next});

  @override
  $PrevDataModelCopyWith<$Res> get prev;
  @override
  $ThisDataModelCopyWith<$Res> get thiss;
  @override
  $NextDataModelCopyWith<$Res> get next;
}

/// @nodoc
class __$$SectionsDataModelImplCopyWithImpl<$Res>
    extends _$SectionsDataModelCopyWithImpl<$Res, _$SectionsDataModelImpl>
    implements _$$SectionsDataModelImplCopyWith<$Res> {
  __$$SectionsDataModelImplCopyWithImpl(_$SectionsDataModelImpl _value,
      $Res Function(_$SectionsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prev = null,
    Object? thiss = null,
    Object? next = null,
  }) {
    return _then(_$SectionsDataModelImpl(
      prev: null == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as PrevDataModel,
      thiss: null == thiss
          ? _value.thiss
          : thiss // ignore: cast_nullable_to_non_nullable
              as ThisDataModel,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as NextDataModel,
    ));
  }
}

/// @nodoc

class _$SectionsDataModelImpl extends _SectionsDataModel {
  _$SectionsDataModelImpl(
      {required this.prev, required this.thiss, required this.next})
      : super._();

  @override
  final PrevDataModel prev;
  @override
  final ThisDataModel thiss;
  @override
  final NextDataModel next;

  @override
  String toString() {
    return 'SectionsDataModel(prev: $prev, thiss: $thiss, next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionsDataModelImpl &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.thiss, thiss) || other.thiss == thiss) &&
            (identical(other.next, next) || other.next == next));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prev, thiss, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionsDataModelImplCopyWith<_$SectionsDataModelImpl> get copyWith =>
      __$$SectionsDataModelImplCopyWithImpl<_$SectionsDataModelImpl>(
          this, _$identity);
}

abstract class _SectionsDataModel extends SectionsDataModel {
  factory _SectionsDataModel(
      {required final PrevDataModel prev,
      required final ThisDataModel thiss,
      required final NextDataModel next}) = _$SectionsDataModelImpl;
  _SectionsDataModel._() : super._();

  @override
  PrevDataModel get prev;
  @override
  ThisDataModel get thiss;
  @override
  NextDataModel get next;
  @override
  @JsonKey(ignore: true)
  _$$SectionsDataModelImplCopyWith<_$SectionsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
