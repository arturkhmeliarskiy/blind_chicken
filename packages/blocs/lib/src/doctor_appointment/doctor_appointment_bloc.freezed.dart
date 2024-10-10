// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppointmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(BoutiqueDataModel selectBoutique) selectBoutique,
    required TResult Function(DateTime selectDateTime) selectDateTime,
    required TResult Function(DateTime selectTime) selectTime,
    required TResult Function() createDoctorAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(BoutiqueDataModel selectBoutique)? selectBoutique,
    TResult? Function(DateTime selectDateTime)? selectDateTime,
    TResult? Function(DateTime selectTime)? selectTime,
    TResult? Function()? createDoctorAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(BoutiqueDataModel selectBoutique)? selectBoutique,
    TResult Function(DateTime selectDateTime)? selectDateTime,
    TResult Function(DateTime selectTime)? selectTime,
    TResult Function()? createDoctorAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppointmentEvent value) preloadData,
    required TResult Function(SelectBoutiqueAppointmentEvent value)
        selectBoutique,
    required TResult Function(SelectDateTimeAppointmentEvent value)
        selectDateTime,
    required TResult Function(SelectTimeAppointmentEvent value) selectTime,
    required TResult Function(CreateDoctorAppointmentAppointmentEvent value)
        createDoctorAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppointmentEvent value)? preloadData,
    TResult? Function(SelectBoutiqueAppointmentEvent value)? selectBoutique,
    TResult? Function(SelectDateTimeAppointmentEvent value)? selectDateTime,
    TResult? Function(SelectTimeAppointmentEvent value)? selectTime,
    TResult? Function(CreateDoctorAppointmentAppointmentEvent value)?
        createDoctorAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppointmentEvent value)? preloadData,
    TResult Function(SelectBoutiqueAppointmentEvent value)? selectBoutique,
    TResult Function(SelectDateTimeAppointmentEvent value)? selectDateTime,
    TResult Function(SelectTimeAppointmentEvent value)? selectTime,
    TResult Function(CreateDoctorAppointmentAppointmentEvent value)?
        createDoctorAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentEventCopyWith<$Res> {
  factory $AppointmentEventCopyWith(
          AppointmentEvent value, $Res Function(AppointmentEvent) then) =
      _$AppointmentEventCopyWithImpl<$Res, AppointmentEvent>;
}

/// @nodoc
class _$AppointmentEventCopyWithImpl<$Res, $Val extends AppointmentEvent>
    implements $AppointmentEventCopyWith<$Res> {
  _$AppointmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitAppointmentEventImplCopyWith<$Res> {
  factory _$$InitAppointmentEventImplCopyWith(_$InitAppointmentEventImpl value,
          $Res Function(_$InitAppointmentEventImpl) then) =
      __$$InitAppointmentEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitAppointmentEventImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$InitAppointmentEventImpl>
    implements _$$InitAppointmentEventImplCopyWith<$Res> {
  __$$InitAppointmentEventImplCopyWithImpl(_$InitAppointmentEventImpl _value,
      $Res Function(_$InitAppointmentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitAppointmentEventImpl implements InitAppointmentEvent {
  const _$InitAppointmentEventImpl();

  @override
  String toString() {
    return 'AppointmentEvent.preloadData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitAppointmentEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(BoutiqueDataModel selectBoutique) selectBoutique,
    required TResult Function(DateTime selectDateTime) selectDateTime,
    required TResult Function(DateTime selectTime) selectTime,
    required TResult Function() createDoctorAppointment,
  }) {
    return preloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(BoutiqueDataModel selectBoutique)? selectBoutique,
    TResult? Function(DateTime selectDateTime)? selectDateTime,
    TResult? Function(DateTime selectTime)? selectTime,
    TResult? Function()? createDoctorAppointment,
  }) {
    return preloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(BoutiqueDataModel selectBoutique)? selectBoutique,
    TResult Function(DateTime selectDateTime)? selectDateTime,
    TResult Function(DateTime selectTime)? selectTime,
    TResult Function()? createDoctorAppointment,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppointmentEvent value) preloadData,
    required TResult Function(SelectBoutiqueAppointmentEvent value)
        selectBoutique,
    required TResult Function(SelectDateTimeAppointmentEvent value)
        selectDateTime,
    required TResult Function(SelectTimeAppointmentEvent value) selectTime,
    required TResult Function(CreateDoctorAppointmentAppointmentEvent value)
        createDoctorAppointment,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppointmentEvent value)? preloadData,
    TResult? Function(SelectBoutiqueAppointmentEvent value)? selectBoutique,
    TResult? Function(SelectDateTimeAppointmentEvent value)? selectDateTime,
    TResult? Function(SelectTimeAppointmentEvent value)? selectTime,
    TResult? Function(CreateDoctorAppointmentAppointmentEvent value)?
        createDoctorAppointment,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppointmentEvent value)? preloadData,
    TResult Function(SelectBoutiqueAppointmentEvent value)? selectBoutique,
    TResult Function(SelectDateTimeAppointmentEvent value)? selectDateTime,
    TResult Function(SelectTimeAppointmentEvent value)? selectTime,
    TResult Function(CreateDoctorAppointmentAppointmentEvent value)?
        createDoctorAppointment,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class InitAppointmentEvent implements AppointmentEvent {
  const factory InitAppointmentEvent() = _$InitAppointmentEventImpl;
}

/// @nodoc
abstract class _$$SelectBoutiqueAppointmentEventImplCopyWith<$Res> {
  factory _$$SelectBoutiqueAppointmentEventImplCopyWith(
          _$SelectBoutiqueAppointmentEventImpl value,
          $Res Function(_$SelectBoutiqueAppointmentEventImpl) then) =
      __$$SelectBoutiqueAppointmentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BoutiqueDataModel selectBoutique});

  $BoutiqueDataModelCopyWith<$Res> get selectBoutique;
}

/// @nodoc
class __$$SelectBoutiqueAppointmentEventImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res,
        _$SelectBoutiqueAppointmentEventImpl>
    implements _$$SelectBoutiqueAppointmentEventImplCopyWith<$Res> {
  __$$SelectBoutiqueAppointmentEventImplCopyWithImpl(
      _$SelectBoutiqueAppointmentEventImpl _value,
      $Res Function(_$SelectBoutiqueAppointmentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectBoutique = null,
  }) {
    return _then(_$SelectBoutiqueAppointmentEventImpl(
      selectBoutique: null == selectBoutique
          ? _value.selectBoutique
          : selectBoutique // ignore: cast_nullable_to_non_nullable
              as BoutiqueDataModel,
    ));
  }

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BoutiqueDataModelCopyWith<$Res> get selectBoutique {
    return $BoutiqueDataModelCopyWith<$Res>(_value.selectBoutique, (value) {
      return _then(_value.copyWith(selectBoutique: value));
    });
  }
}

/// @nodoc

class _$SelectBoutiqueAppointmentEventImpl
    implements SelectBoutiqueAppointmentEvent {
  const _$SelectBoutiqueAppointmentEventImpl({required this.selectBoutique});

  @override
  final BoutiqueDataModel selectBoutique;

  @override
  String toString() {
    return 'AppointmentEvent.selectBoutique(selectBoutique: $selectBoutique)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectBoutiqueAppointmentEventImpl &&
            (identical(other.selectBoutique, selectBoutique) ||
                other.selectBoutique == selectBoutique));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectBoutique);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectBoutiqueAppointmentEventImplCopyWith<
          _$SelectBoutiqueAppointmentEventImpl>
      get copyWith => __$$SelectBoutiqueAppointmentEventImplCopyWithImpl<
          _$SelectBoutiqueAppointmentEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(BoutiqueDataModel selectBoutique) selectBoutique,
    required TResult Function(DateTime selectDateTime) selectDateTime,
    required TResult Function(DateTime selectTime) selectTime,
    required TResult Function() createDoctorAppointment,
  }) {
    return selectBoutique(this.selectBoutique);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(BoutiqueDataModel selectBoutique)? selectBoutique,
    TResult? Function(DateTime selectDateTime)? selectDateTime,
    TResult? Function(DateTime selectTime)? selectTime,
    TResult? Function()? createDoctorAppointment,
  }) {
    return selectBoutique?.call(this.selectBoutique);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(BoutiqueDataModel selectBoutique)? selectBoutique,
    TResult Function(DateTime selectDateTime)? selectDateTime,
    TResult Function(DateTime selectTime)? selectTime,
    TResult Function()? createDoctorAppointment,
    required TResult orElse(),
  }) {
    if (selectBoutique != null) {
      return selectBoutique(this.selectBoutique);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppointmentEvent value) preloadData,
    required TResult Function(SelectBoutiqueAppointmentEvent value)
        selectBoutique,
    required TResult Function(SelectDateTimeAppointmentEvent value)
        selectDateTime,
    required TResult Function(SelectTimeAppointmentEvent value) selectTime,
    required TResult Function(CreateDoctorAppointmentAppointmentEvent value)
        createDoctorAppointment,
  }) {
    return selectBoutique(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppointmentEvent value)? preloadData,
    TResult? Function(SelectBoutiqueAppointmentEvent value)? selectBoutique,
    TResult? Function(SelectDateTimeAppointmentEvent value)? selectDateTime,
    TResult? Function(SelectTimeAppointmentEvent value)? selectTime,
    TResult? Function(CreateDoctorAppointmentAppointmentEvent value)?
        createDoctorAppointment,
  }) {
    return selectBoutique?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppointmentEvent value)? preloadData,
    TResult Function(SelectBoutiqueAppointmentEvent value)? selectBoutique,
    TResult Function(SelectDateTimeAppointmentEvent value)? selectDateTime,
    TResult Function(SelectTimeAppointmentEvent value)? selectTime,
    TResult Function(CreateDoctorAppointmentAppointmentEvent value)?
        createDoctorAppointment,
    required TResult orElse(),
  }) {
    if (selectBoutique != null) {
      return selectBoutique(this);
    }
    return orElse();
  }
}

abstract class SelectBoutiqueAppointmentEvent implements AppointmentEvent {
  const factory SelectBoutiqueAppointmentEvent(
          {required final BoutiqueDataModel selectBoutique}) =
      _$SelectBoutiqueAppointmentEventImpl;

  BoutiqueDataModel get selectBoutique;

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectBoutiqueAppointmentEventImplCopyWith<
          _$SelectBoutiqueAppointmentEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectDateTimeAppointmentEventImplCopyWith<$Res> {
  factory _$$SelectDateTimeAppointmentEventImplCopyWith(
          _$SelectDateTimeAppointmentEventImpl value,
          $Res Function(_$SelectDateTimeAppointmentEventImpl) then) =
      __$$SelectDateTimeAppointmentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectDateTime});
}

/// @nodoc
class __$$SelectDateTimeAppointmentEventImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res,
        _$SelectDateTimeAppointmentEventImpl>
    implements _$$SelectDateTimeAppointmentEventImplCopyWith<$Res> {
  __$$SelectDateTimeAppointmentEventImplCopyWithImpl(
      _$SelectDateTimeAppointmentEventImpl _value,
      $Res Function(_$SelectDateTimeAppointmentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectDateTime = null,
  }) {
    return _then(_$SelectDateTimeAppointmentEventImpl(
      selectDateTime: null == selectDateTime
          ? _value.selectDateTime
          : selectDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SelectDateTimeAppointmentEventImpl
    implements SelectDateTimeAppointmentEvent {
  const _$SelectDateTimeAppointmentEventImpl({required this.selectDateTime});

  @override
  final DateTime selectDateTime;

  @override
  String toString() {
    return 'AppointmentEvent.selectDateTime(selectDateTime: $selectDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDateTimeAppointmentEventImpl &&
            (identical(other.selectDateTime, selectDateTime) ||
                other.selectDateTime == selectDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectDateTime);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDateTimeAppointmentEventImplCopyWith<
          _$SelectDateTimeAppointmentEventImpl>
      get copyWith => __$$SelectDateTimeAppointmentEventImplCopyWithImpl<
          _$SelectDateTimeAppointmentEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(BoutiqueDataModel selectBoutique) selectBoutique,
    required TResult Function(DateTime selectDateTime) selectDateTime,
    required TResult Function(DateTime selectTime) selectTime,
    required TResult Function() createDoctorAppointment,
  }) {
    return selectDateTime(this.selectDateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(BoutiqueDataModel selectBoutique)? selectBoutique,
    TResult? Function(DateTime selectDateTime)? selectDateTime,
    TResult? Function(DateTime selectTime)? selectTime,
    TResult? Function()? createDoctorAppointment,
  }) {
    return selectDateTime?.call(this.selectDateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(BoutiqueDataModel selectBoutique)? selectBoutique,
    TResult Function(DateTime selectDateTime)? selectDateTime,
    TResult Function(DateTime selectTime)? selectTime,
    TResult Function()? createDoctorAppointment,
    required TResult orElse(),
  }) {
    if (selectDateTime != null) {
      return selectDateTime(this.selectDateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppointmentEvent value) preloadData,
    required TResult Function(SelectBoutiqueAppointmentEvent value)
        selectBoutique,
    required TResult Function(SelectDateTimeAppointmentEvent value)
        selectDateTime,
    required TResult Function(SelectTimeAppointmentEvent value) selectTime,
    required TResult Function(CreateDoctorAppointmentAppointmentEvent value)
        createDoctorAppointment,
  }) {
    return selectDateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppointmentEvent value)? preloadData,
    TResult? Function(SelectBoutiqueAppointmentEvent value)? selectBoutique,
    TResult? Function(SelectDateTimeAppointmentEvent value)? selectDateTime,
    TResult? Function(SelectTimeAppointmentEvent value)? selectTime,
    TResult? Function(CreateDoctorAppointmentAppointmentEvent value)?
        createDoctorAppointment,
  }) {
    return selectDateTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppointmentEvent value)? preloadData,
    TResult Function(SelectBoutiqueAppointmentEvent value)? selectBoutique,
    TResult Function(SelectDateTimeAppointmentEvent value)? selectDateTime,
    TResult Function(SelectTimeAppointmentEvent value)? selectTime,
    TResult Function(CreateDoctorAppointmentAppointmentEvent value)?
        createDoctorAppointment,
    required TResult orElse(),
  }) {
    if (selectDateTime != null) {
      return selectDateTime(this);
    }
    return orElse();
  }
}

abstract class SelectDateTimeAppointmentEvent implements AppointmentEvent {
  const factory SelectDateTimeAppointmentEvent(
          {required final DateTime selectDateTime}) =
      _$SelectDateTimeAppointmentEventImpl;

  DateTime get selectDateTime;

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectDateTimeAppointmentEventImplCopyWith<
          _$SelectDateTimeAppointmentEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTimeAppointmentEventImplCopyWith<$Res> {
  factory _$$SelectTimeAppointmentEventImplCopyWith(
          _$SelectTimeAppointmentEventImpl value,
          $Res Function(_$SelectTimeAppointmentEventImpl) then) =
      __$$SelectTimeAppointmentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectTime});
}

/// @nodoc
class __$$SelectTimeAppointmentEventImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res,
        _$SelectTimeAppointmentEventImpl>
    implements _$$SelectTimeAppointmentEventImplCopyWith<$Res> {
  __$$SelectTimeAppointmentEventImplCopyWithImpl(
      _$SelectTimeAppointmentEventImpl _value,
      $Res Function(_$SelectTimeAppointmentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectTime = null,
  }) {
    return _then(_$SelectTimeAppointmentEventImpl(
      selectTime: null == selectTime
          ? _value.selectTime
          : selectTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SelectTimeAppointmentEventImpl implements SelectTimeAppointmentEvent {
  const _$SelectTimeAppointmentEventImpl({required this.selectTime});

  @override
  final DateTime selectTime;

  @override
  String toString() {
    return 'AppointmentEvent.selectTime(selectTime: $selectTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTimeAppointmentEventImpl &&
            (identical(other.selectTime, selectTime) ||
                other.selectTime == selectTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectTime);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTimeAppointmentEventImplCopyWith<_$SelectTimeAppointmentEventImpl>
      get copyWith => __$$SelectTimeAppointmentEventImplCopyWithImpl<
          _$SelectTimeAppointmentEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(BoutiqueDataModel selectBoutique) selectBoutique,
    required TResult Function(DateTime selectDateTime) selectDateTime,
    required TResult Function(DateTime selectTime) selectTime,
    required TResult Function() createDoctorAppointment,
  }) {
    return selectTime(this.selectTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(BoutiqueDataModel selectBoutique)? selectBoutique,
    TResult? Function(DateTime selectDateTime)? selectDateTime,
    TResult? Function(DateTime selectTime)? selectTime,
    TResult? Function()? createDoctorAppointment,
  }) {
    return selectTime?.call(this.selectTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(BoutiqueDataModel selectBoutique)? selectBoutique,
    TResult Function(DateTime selectDateTime)? selectDateTime,
    TResult Function(DateTime selectTime)? selectTime,
    TResult Function()? createDoctorAppointment,
    required TResult orElse(),
  }) {
    if (selectTime != null) {
      return selectTime(this.selectTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppointmentEvent value) preloadData,
    required TResult Function(SelectBoutiqueAppointmentEvent value)
        selectBoutique,
    required TResult Function(SelectDateTimeAppointmentEvent value)
        selectDateTime,
    required TResult Function(SelectTimeAppointmentEvent value) selectTime,
    required TResult Function(CreateDoctorAppointmentAppointmentEvent value)
        createDoctorAppointment,
  }) {
    return selectTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppointmentEvent value)? preloadData,
    TResult? Function(SelectBoutiqueAppointmentEvent value)? selectBoutique,
    TResult? Function(SelectDateTimeAppointmentEvent value)? selectDateTime,
    TResult? Function(SelectTimeAppointmentEvent value)? selectTime,
    TResult? Function(CreateDoctorAppointmentAppointmentEvent value)?
        createDoctorAppointment,
  }) {
    return selectTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppointmentEvent value)? preloadData,
    TResult Function(SelectBoutiqueAppointmentEvent value)? selectBoutique,
    TResult Function(SelectDateTimeAppointmentEvent value)? selectDateTime,
    TResult Function(SelectTimeAppointmentEvent value)? selectTime,
    TResult Function(CreateDoctorAppointmentAppointmentEvent value)?
        createDoctorAppointment,
    required TResult orElse(),
  }) {
    if (selectTime != null) {
      return selectTime(this);
    }
    return orElse();
  }
}

abstract class SelectTimeAppointmentEvent implements AppointmentEvent {
  const factory SelectTimeAppointmentEvent(
      {required final DateTime selectTime}) = _$SelectTimeAppointmentEventImpl;

  DateTime get selectTime;

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectTimeAppointmentEventImplCopyWith<_$SelectTimeAppointmentEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateDoctorAppointmentAppointmentEventImplCopyWith<$Res> {
  factory _$$CreateDoctorAppointmentAppointmentEventImplCopyWith(
          _$CreateDoctorAppointmentAppointmentEventImpl value,
          $Res Function(_$CreateDoctorAppointmentAppointmentEventImpl) then) =
      __$$CreateDoctorAppointmentAppointmentEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateDoctorAppointmentAppointmentEventImplCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res,
        _$CreateDoctorAppointmentAppointmentEventImpl>
    implements _$$CreateDoctorAppointmentAppointmentEventImplCopyWith<$Res> {
  __$$CreateDoctorAppointmentAppointmentEventImplCopyWithImpl(
      _$CreateDoctorAppointmentAppointmentEventImpl _value,
      $Res Function(_$CreateDoctorAppointmentAppointmentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateDoctorAppointmentAppointmentEventImpl
    implements CreateDoctorAppointmentAppointmentEvent {
  const _$CreateDoctorAppointmentAppointmentEventImpl();

  @override
  String toString() {
    return 'AppointmentEvent.createDoctorAppointment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDoctorAppointmentAppointmentEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(BoutiqueDataModel selectBoutique) selectBoutique,
    required TResult Function(DateTime selectDateTime) selectDateTime,
    required TResult Function(DateTime selectTime) selectTime,
    required TResult Function() createDoctorAppointment,
  }) {
    return createDoctorAppointment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(BoutiqueDataModel selectBoutique)? selectBoutique,
    TResult? Function(DateTime selectDateTime)? selectDateTime,
    TResult? Function(DateTime selectTime)? selectTime,
    TResult? Function()? createDoctorAppointment,
  }) {
    return createDoctorAppointment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(BoutiqueDataModel selectBoutique)? selectBoutique,
    TResult Function(DateTime selectDateTime)? selectDateTime,
    TResult Function(DateTime selectTime)? selectTime,
    TResult Function()? createDoctorAppointment,
    required TResult orElse(),
  }) {
    if (createDoctorAppointment != null) {
      return createDoctorAppointment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppointmentEvent value) preloadData,
    required TResult Function(SelectBoutiqueAppointmentEvent value)
        selectBoutique,
    required TResult Function(SelectDateTimeAppointmentEvent value)
        selectDateTime,
    required TResult Function(SelectTimeAppointmentEvent value) selectTime,
    required TResult Function(CreateDoctorAppointmentAppointmentEvent value)
        createDoctorAppointment,
  }) {
    return createDoctorAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppointmentEvent value)? preloadData,
    TResult? Function(SelectBoutiqueAppointmentEvent value)? selectBoutique,
    TResult? Function(SelectDateTimeAppointmentEvent value)? selectDateTime,
    TResult? Function(SelectTimeAppointmentEvent value)? selectTime,
    TResult? Function(CreateDoctorAppointmentAppointmentEvent value)?
        createDoctorAppointment,
  }) {
    return createDoctorAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppointmentEvent value)? preloadData,
    TResult Function(SelectBoutiqueAppointmentEvent value)? selectBoutique,
    TResult Function(SelectDateTimeAppointmentEvent value)? selectDateTime,
    TResult Function(SelectTimeAppointmentEvent value)? selectTime,
    TResult Function(CreateDoctorAppointmentAppointmentEvent value)?
        createDoctorAppointment,
    required TResult orElse(),
  }) {
    if (createDoctorAppointment != null) {
      return createDoctorAppointment(this);
    }
    return orElse();
  }
}

abstract class CreateDoctorAppointmentAppointmentEvent
    implements AppointmentEvent {
  const factory CreateDoctorAppointmentAppointmentEvent() =
      _$CreateDoctorAppointmentAppointmentEventImpl;
}

/// @nodoc
mixin _$AppointmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() authorization,
    required TResult Function(String name, String date, String time)
        recordCreatedSuccessfully,
    required TResult Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? authorization,
    TResult? Function(String name, String date, String time)?
        recordCreatedSuccessfully,
    TResult? Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? authorization,
    TResult Function(String name, String date, String time)?
        recordCreatedSuccessfully,
    TResult Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppointmentState value) init,
    required TResult Function(LoadingAppointmentState value) load,
    required TResult Function(AuthorizationAppointmentState value)
        authorization,
    required TResult Function(RecordCreatedSuccessfullyAppointmentState value)
        recordCreatedSuccessfully,
    required TResult Function(PreloadDataCompletedAppointmentState value)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppointmentState value)? init,
    TResult? Function(LoadingAppointmentState value)? load,
    TResult? Function(AuthorizationAppointmentState value)? authorization,
    TResult? Function(RecordCreatedSuccessfullyAppointmentState value)?
        recordCreatedSuccessfully,
    TResult? Function(PreloadDataCompletedAppointmentState value)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppointmentState value)? init,
    TResult Function(LoadingAppointmentState value)? load,
    TResult Function(AuthorizationAppointmentState value)? authorization,
    TResult Function(RecordCreatedSuccessfullyAppointmentState value)?
        recordCreatedSuccessfully,
    TResult Function(PreloadDataCompletedAppointmentState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentStateCopyWith<$Res> {
  factory $AppointmentStateCopyWith(
          AppointmentState value, $Res Function(AppointmentState) then) =
      _$AppointmentStateCopyWithImpl<$Res, AppointmentState>;
}

/// @nodoc
class _$AppointmentStateCopyWithImpl<$Res, $Val extends AppointmentState>
    implements $AppointmentStateCopyWith<$Res> {
  _$AppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitAppointmentStateImplCopyWith<$Res> {
  factory _$$InitAppointmentStateImplCopyWith(_$InitAppointmentStateImpl value,
          $Res Function(_$InitAppointmentStateImpl) then) =
      __$$InitAppointmentStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitAppointmentStateImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$InitAppointmentStateImpl>
    implements _$$InitAppointmentStateImplCopyWith<$Res> {
  __$$InitAppointmentStateImplCopyWithImpl(_$InitAppointmentStateImpl _value,
      $Res Function(_$InitAppointmentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitAppointmentStateImpl implements InitAppointmentState {
  const _$InitAppointmentStateImpl();

  @override
  String toString() {
    return 'AppointmentState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitAppointmentStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() authorization,
    required TResult Function(String name, String date, String time)
        recordCreatedSuccessfully,
    required TResult Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)
        preloadDataCompleted,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? authorization,
    TResult? Function(String name, String date, String time)?
        recordCreatedSuccessfully,
    TResult? Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)?
        preloadDataCompleted,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? authorization,
    TResult Function(String name, String date, String time)?
        recordCreatedSuccessfully,
    TResult Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppointmentState value) init,
    required TResult Function(LoadingAppointmentState value) load,
    required TResult Function(AuthorizationAppointmentState value)
        authorization,
    required TResult Function(RecordCreatedSuccessfullyAppointmentState value)
        recordCreatedSuccessfully,
    required TResult Function(PreloadDataCompletedAppointmentState value)
        preloadDataCompleted,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppointmentState value)? init,
    TResult? Function(LoadingAppointmentState value)? load,
    TResult? Function(AuthorizationAppointmentState value)? authorization,
    TResult? Function(RecordCreatedSuccessfullyAppointmentState value)?
        recordCreatedSuccessfully,
    TResult? Function(PreloadDataCompletedAppointmentState value)?
        preloadDataCompleted,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppointmentState value)? init,
    TResult Function(LoadingAppointmentState value)? load,
    TResult Function(AuthorizationAppointmentState value)? authorization,
    TResult Function(RecordCreatedSuccessfullyAppointmentState value)?
        recordCreatedSuccessfully,
    TResult Function(PreloadDataCompletedAppointmentState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitAppointmentState implements AppointmentState {
  const factory InitAppointmentState() = _$InitAppointmentStateImpl;
}

/// @nodoc
abstract class _$$LoadingAppointmentStateImplCopyWith<$Res> {
  factory _$$LoadingAppointmentStateImplCopyWith(
          _$LoadingAppointmentStateImpl value,
          $Res Function(_$LoadingAppointmentStateImpl) then) =
      __$$LoadingAppointmentStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAppointmentStateImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$LoadingAppointmentStateImpl>
    implements _$$LoadingAppointmentStateImplCopyWith<$Res> {
  __$$LoadingAppointmentStateImplCopyWithImpl(
      _$LoadingAppointmentStateImpl _value,
      $Res Function(_$LoadingAppointmentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingAppointmentStateImpl implements LoadingAppointmentState {
  const _$LoadingAppointmentStateImpl();

  @override
  String toString() {
    return 'AppointmentState.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingAppointmentStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() authorization,
    required TResult Function(String name, String date, String time)
        recordCreatedSuccessfully,
    required TResult Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)
        preloadDataCompleted,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? authorization,
    TResult? Function(String name, String date, String time)?
        recordCreatedSuccessfully,
    TResult? Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)?
        preloadDataCompleted,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? authorization,
    TResult Function(String name, String date, String time)?
        recordCreatedSuccessfully,
    TResult Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppointmentState value) init,
    required TResult Function(LoadingAppointmentState value) load,
    required TResult Function(AuthorizationAppointmentState value)
        authorization,
    required TResult Function(RecordCreatedSuccessfullyAppointmentState value)
        recordCreatedSuccessfully,
    required TResult Function(PreloadDataCompletedAppointmentState value)
        preloadDataCompleted,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppointmentState value)? init,
    TResult? Function(LoadingAppointmentState value)? load,
    TResult? Function(AuthorizationAppointmentState value)? authorization,
    TResult? Function(RecordCreatedSuccessfullyAppointmentState value)?
        recordCreatedSuccessfully,
    TResult? Function(PreloadDataCompletedAppointmentState value)?
        preloadDataCompleted,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppointmentState value)? init,
    TResult Function(LoadingAppointmentState value)? load,
    TResult Function(AuthorizationAppointmentState value)? authorization,
    TResult Function(RecordCreatedSuccessfullyAppointmentState value)?
        recordCreatedSuccessfully,
    TResult Function(PreloadDataCompletedAppointmentState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingAppointmentState implements AppointmentState {
  const factory LoadingAppointmentState() = _$LoadingAppointmentStateImpl;
}

/// @nodoc
abstract class _$$AuthorizationAppointmentStateImplCopyWith<$Res> {
  factory _$$AuthorizationAppointmentStateImplCopyWith(
          _$AuthorizationAppointmentStateImpl value,
          $Res Function(_$AuthorizationAppointmentStateImpl) then) =
      __$$AuthorizationAppointmentStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorizationAppointmentStateImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res,
        _$AuthorizationAppointmentStateImpl>
    implements _$$AuthorizationAppointmentStateImplCopyWith<$Res> {
  __$$AuthorizationAppointmentStateImplCopyWithImpl(
      _$AuthorizationAppointmentStateImpl _value,
      $Res Function(_$AuthorizationAppointmentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthorizationAppointmentStateImpl
    implements AuthorizationAppointmentState {
  const _$AuthorizationAppointmentStateImpl();

  @override
  String toString() {
    return 'AppointmentState.authorization()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationAppointmentStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() authorization,
    required TResult Function(String name, String date, String time)
        recordCreatedSuccessfully,
    required TResult Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)
        preloadDataCompleted,
  }) {
    return authorization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? authorization,
    TResult? Function(String name, String date, String time)?
        recordCreatedSuccessfully,
    TResult? Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)?
        preloadDataCompleted,
  }) {
    return authorization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? authorization,
    TResult Function(String name, String date, String time)?
        recordCreatedSuccessfully,
    TResult Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (authorization != null) {
      return authorization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppointmentState value) init,
    required TResult Function(LoadingAppointmentState value) load,
    required TResult Function(AuthorizationAppointmentState value)
        authorization,
    required TResult Function(RecordCreatedSuccessfullyAppointmentState value)
        recordCreatedSuccessfully,
    required TResult Function(PreloadDataCompletedAppointmentState value)
        preloadDataCompleted,
  }) {
    return authorization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppointmentState value)? init,
    TResult? Function(LoadingAppointmentState value)? load,
    TResult? Function(AuthorizationAppointmentState value)? authorization,
    TResult? Function(RecordCreatedSuccessfullyAppointmentState value)?
        recordCreatedSuccessfully,
    TResult? Function(PreloadDataCompletedAppointmentState value)?
        preloadDataCompleted,
  }) {
    return authorization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppointmentState value)? init,
    TResult Function(LoadingAppointmentState value)? load,
    TResult Function(AuthorizationAppointmentState value)? authorization,
    TResult Function(RecordCreatedSuccessfullyAppointmentState value)?
        recordCreatedSuccessfully,
    TResult Function(PreloadDataCompletedAppointmentState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (authorization != null) {
      return authorization(this);
    }
    return orElse();
  }
}

abstract class AuthorizationAppointmentState implements AppointmentState {
  const factory AuthorizationAppointmentState() =
      _$AuthorizationAppointmentStateImpl;
}

/// @nodoc
abstract class _$$RecordCreatedSuccessfullyAppointmentStateImplCopyWith<$Res> {
  factory _$$RecordCreatedSuccessfullyAppointmentStateImplCopyWith(
          _$RecordCreatedSuccessfullyAppointmentStateImpl value,
          $Res Function(_$RecordCreatedSuccessfullyAppointmentStateImpl) then) =
      __$$RecordCreatedSuccessfullyAppointmentStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String date, String time});
}

/// @nodoc
class __$$RecordCreatedSuccessfullyAppointmentStateImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res,
        _$RecordCreatedSuccessfullyAppointmentStateImpl>
    implements _$$RecordCreatedSuccessfullyAppointmentStateImplCopyWith<$Res> {
  __$$RecordCreatedSuccessfullyAppointmentStateImplCopyWithImpl(
      _$RecordCreatedSuccessfullyAppointmentStateImpl _value,
      $Res Function(_$RecordCreatedSuccessfullyAppointmentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? time = null,
  }) {
    return _then(_$RecordCreatedSuccessfullyAppointmentStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecordCreatedSuccessfullyAppointmentStateImpl
    implements RecordCreatedSuccessfullyAppointmentState {
  const _$RecordCreatedSuccessfullyAppointmentStateImpl(
      {required this.name, required this.date, required this.time});

  @override
  final String name;
  @override
  final String date;
  @override
  final String time;

  @override
  String toString() {
    return 'AppointmentState.recordCreatedSuccessfully(name: $name, date: $date, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordCreatedSuccessfullyAppointmentStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, date, time);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordCreatedSuccessfullyAppointmentStateImplCopyWith<
          _$RecordCreatedSuccessfullyAppointmentStateImpl>
      get copyWith =>
          __$$RecordCreatedSuccessfullyAppointmentStateImplCopyWithImpl<
                  _$RecordCreatedSuccessfullyAppointmentStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() authorization,
    required TResult Function(String name, String date, String time)
        recordCreatedSuccessfully,
    required TResult Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)
        preloadDataCompleted,
  }) {
    return recordCreatedSuccessfully(name, date, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? authorization,
    TResult? Function(String name, String date, String time)?
        recordCreatedSuccessfully,
    TResult? Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)?
        preloadDataCompleted,
  }) {
    return recordCreatedSuccessfully?.call(name, date, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? authorization,
    TResult Function(String name, String date, String time)?
        recordCreatedSuccessfully,
    TResult Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (recordCreatedSuccessfully != null) {
      return recordCreatedSuccessfully(name, date, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppointmentState value) init,
    required TResult Function(LoadingAppointmentState value) load,
    required TResult Function(AuthorizationAppointmentState value)
        authorization,
    required TResult Function(RecordCreatedSuccessfullyAppointmentState value)
        recordCreatedSuccessfully,
    required TResult Function(PreloadDataCompletedAppointmentState value)
        preloadDataCompleted,
  }) {
    return recordCreatedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppointmentState value)? init,
    TResult? Function(LoadingAppointmentState value)? load,
    TResult? Function(AuthorizationAppointmentState value)? authorization,
    TResult? Function(RecordCreatedSuccessfullyAppointmentState value)?
        recordCreatedSuccessfully,
    TResult? Function(PreloadDataCompletedAppointmentState value)?
        preloadDataCompleted,
  }) {
    return recordCreatedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppointmentState value)? init,
    TResult Function(LoadingAppointmentState value)? load,
    TResult Function(AuthorizationAppointmentState value)? authorization,
    TResult Function(RecordCreatedSuccessfullyAppointmentState value)?
        recordCreatedSuccessfully,
    TResult Function(PreloadDataCompletedAppointmentState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (recordCreatedSuccessfully != null) {
      return recordCreatedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class RecordCreatedSuccessfullyAppointmentState
    implements AppointmentState {
  const factory RecordCreatedSuccessfullyAppointmentState(
          {required final String name,
          required final String date,
          required final String time}) =
      _$RecordCreatedSuccessfullyAppointmentStateImpl;

  String get name;
  String get date;
  String get time;

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordCreatedSuccessfullyAppointmentStateImplCopyWith<
          _$RecordCreatedSuccessfullyAppointmentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreloadDataCompletedAppointmentStateImplCopyWith<$Res> {
  factory _$$PreloadDataCompletedAppointmentStateImplCopyWith(
          _$PreloadDataCompletedAppointmentStateImpl value,
          $Res Function(_$PreloadDataCompletedAppointmentStateImpl) then) =
      __$$PreloadDataCompletedAppointmentStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<BoutiqueDataModel> boutiques,
      BoutiqueDataModel selectBoutique,
      Map<int, List<DateTime>> time,
      DateTime selectDateTime});

  $BoutiqueDataModelCopyWith<$Res> get selectBoutique;
}

/// @nodoc
class __$$PreloadDataCompletedAppointmentStateImplCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res,
        _$PreloadDataCompletedAppointmentStateImpl>
    implements _$$PreloadDataCompletedAppointmentStateImplCopyWith<$Res> {
  __$$PreloadDataCompletedAppointmentStateImplCopyWithImpl(
      _$PreloadDataCompletedAppointmentStateImpl _value,
      $Res Function(_$PreloadDataCompletedAppointmentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boutiques = null,
    Object? selectBoutique = null,
    Object? time = null,
    Object? selectDateTime = null,
  }) {
    return _then(_$PreloadDataCompletedAppointmentStateImpl(
      boutiques: null == boutiques
          ? _value._boutiques
          : boutiques // ignore: cast_nullable_to_non_nullable
              as List<BoutiqueDataModel>,
      selectBoutique: null == selectBoutique
          ? _value.selectBoutique
          : selectBoutique // ignore: cast_nullable_to_non_nullable
              as BoutiqueDataModel,
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as Map<int, List<DateTime>>,
      selectDateTime: null == selectDateTime
          ? _value.selectDateTime
          : selectDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BoutiqueDataModelCopyWith<$Res> get selectBoutique {
    return $BoutiqueDataModelCopyWith<$Res>(_value.selectBoutique, (value) {
      return _then(_value.copyWith(selectBoutique: value));
    });
  }
}

/// @nodoc

class _$PreloadDataCompletedAppointmentStateImpl
    implements PreloadDataCompletedAppointmentState {
  const _$PreloadDataCompletedAppointmentStateImpl(
      {required final List<BoutiqueDataModel> boutiques,
      required this.selectBoutique,
      required final Map<int, List<DateTime>> time,
      required this.selectDateTime})
      : _boutiques = boutiques,
        _time = time;

  final List<BoutiqueDataModel> _boutiques;
  @override
  List<BoutiqueDataModel> get boutiques {
    if (_boutiques is EqualUnmodifiableListView) return _boutiques;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boutiques);
  }

  @override
  final BoutiqueDataModel selectBoutique;
  final Map<int, List<DateTime>> _time;
  @override
  Map<int, List<DateTime>> get time {
    if (_time is EqualUnmodifiableMapView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_time);
  }

  @override
  final DateTime selectDateTime;

  @override
  String toString() {
    return 'AppointmentState.preloadDataCompleted(boutiques: $boutiques, selectBoutique: $selectBoutique, time: $time, selectDateTime: $selectDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedAppointmentStateImpl &&
            const DeepCollectionEquality()
                .equals(other._boutiques, _boutiques) &&
            (identical(other.selectBoutique, selectBoutique) ||
                other.selectBoutique == selectBoutique) &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            (identical(other.selectDateTime, selectDateTime) ||
                other.selectDateTime == selectDateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_boutiques),
      selectBoutique,
      const DeepCollectionEquality().hash(_time),
      selectDateTime);

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataCompletedAppointmentStateImplCopyWith<
          _$PreloadDataCompletedAppointmentStateImpl>
      get copyWith => __$$PreloadDataCompletedAppointmentStateImplCopyWithImpl<
          _$PreloadDataCompletedAppointmentStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function() authorization,
    required TResult Function(String name, String date, String time)
        recordCreatedSuccessfully,
    required TResult Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(
        boutiques, selectBoutique, time, selectDateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function()? authorization,
    TResult? Function(String name, String date, String time)?
        recordCreatedSuccessfully,
    TResult? Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(
        boutiques, selectBoutique, time, selectDateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function()? authorization,
    TResult Function(String name, String date, String time)?
        recordCreatedSuccessfully,
    TResult Function(
            List<BoutiqueDataModel> boutiques,
            BoutiqueDataModel selectBoutique,
            Map<int, List<DateTime>> time,
            DateTime selectDateTime)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(
          boutiques, selectBoutique, time, selectDateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppointmentState value) init,
    required TResult Function(LoadingAppointmentState value) load,
    required TResult Function(AuthorizationAppointmentState value)
        authorization,
    required TResult Function(RecordCreatedSuccessfullyAppointmentState value)
        recordCreatedSuccessfully,
    required TResult Function(PreloadDataCompletedAppointmentState value)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppointmentState value)? init,
    TResult? Function(LoadingAppointmentState value)? load,
    TResult? Function(AuthorizationAppointmentState value)? authorization,
    TResult? Function(RecordCreatedSuccessfullyAppointmentState value)?
        recordCreatedSuccessfully,
    TResult? Function(PreloadDataCompletedAppointmentState value)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppointmentState value)? init,
    TResult Function(LoadingAppointmentState value)? load,
    TResult Function(AuthorizationAppointmentState value)? authorization,
    TResult Function(RecordCreatedSuccessfullyAppointmentState value)?
        recordCreatedSuccessfully,
    TResult Function(PreloadDataCompletedAppointmentState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(this);
    }
    return orElse();
  }
}

abstract class PreloadDataCompletedAppointmentState
    implements AppointmentState {
  const factory PreloadDataCompletedAppointmentState(
          {required final List<BoutiqueDataModel> boutiques,
          required final BoutiqueDataModel selectBoutique,
          required final Map<int, List<DateTime>> time,
          required final DateTime selectDateTime}) =
      _$PreloadDataCompletedAppointmentStateImpl;

  List<BoutiqueDataModel> get boutiques;
  BoutiqueDataModel get selectBoutique;
  Map<int, List<DateTime>> get time;
  DateTime get selectDateTime;

  /// Create a copy of AppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreloadDataCompletedAppointmentStateImplCopyWith<
          _$PreloadDataCompletedAppointmentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
