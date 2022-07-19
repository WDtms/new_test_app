// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_create_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskCreateState {
  String? get titleValue => throw _privateConstructorUsedError;
  DateTime? get deadLineValue => throw _privateConstructorUsedError;
  TimeOfDay? get startTimeValue => throw _privateConstructorUsedError;
  TimeOfDay? get endTimeValue => throw _privateConstructorUsedError;
  RepeatModel? get repeatValue => throw _privateConstructorUsedError;
  RemindModel? get remindValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)
        ready,
    required TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)
        notReady,
    required TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        ready,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        notReady,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        ready,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        notReady,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskCreateReady value) ready,
    required TResult Function(TaskCreateNotReady value) notReady,
    required TResult Function(TaskCreateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskCreateReady value)? ready,
    TResult Function(TaskCreateNotReady value)? notReady,
    TResult Function(TaskCreateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskCreateReady value)? ready,
    TResult Function(TaskCreateNotReady value)? notReady,
    TResult Function(TaskCreateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCreateStateCopyWith<TaskCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCreateStateCopyWith<$Res> {
  factory $TaskCreateStateCopyWith(
          TaskCreateState value, $Res Function(TaskCreateState) then) =
      _$TaskCreateStateCopyWithImpl<$Res>;
  $Res call(
      {String? titleValue,
      DateTime? deadLineValue,
      TimeOfDay? startTimeValue,
      TimeOfDay? endTimeValue,
      RepeatModel? repeatValue,
      RemindModel? remindValue});

  $RepeatModelCopyWith<$Res>? get repeatValue;
  $RemindModelCopyWith<$Res>? get remindValue;
}

/// @nodoc
class _$TaskCreateStateCopyWithImpl<$Res>
    implements $TaskCreateStateCopyWith<$Res> {
  _$TaskCreateStateCopyWithImpl(this._value, this._then);

  final TaskCreateState _value;
  // ignore: unused_field
  final $Res Function(TaskCreateState) _then;

  @override
  $Res call({
    Object? titleValue = freezed,
    Object? deadLineValue = freezed,
    Object? startTimeValue = freezed,
    Object? endTimeValue = freezed,
    Object? repeatValue = freezed,
    Object? remindValue = freezed,
  }) {
    return _then(_value.copyWith(
      titleValue: titleValue == freezed
          ? _value.titleValue
          : titleValue // ignore: cast_nullable_to_non_nullable
              as String?,
      deadLineValue: deadLineValue == freezed
          ? _value.deadLineValue
          : deadLineValue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTimeValue: startTimeValue == freezed
          ? _value.startTimeValue
          : startTimeValue // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endTimeValue: endTimeValue == freezed
          ? _value.endTimeValue
          : endTimeValue // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      repeatValue: repeatValue == freezed
          ? _value.repeatValue
          : repeatValue // ignore: cast_nullable_to_non_nullable
              as RepeatModel?,
      remindValue: remindValue == freezed
          ? _value.remindValue
          : remindValue // ignore: cast_nullable_to_non_nullable
              as RemindModel?,
    ));
  }

  @override
  $RepeatModelCopyWith<$Res>? get repeatValue {
    if (_value.repeatValue == null) {
      return null;
    }

    return $RepeatModelCopyWith<$Res>(_value.repeatValue!, (value) {
      return _then(_value.copyWith(repeatValue: value));
    });
  }

  @override
  $RemindModelCopyWith<$Res>? get remindValue {
    if (_value.remindValue == null) {
      return null;
    }

    return $RemindModelCopyWith<$Res>(_value.remindValue!, (value) {
      return _then(_value.copyWith(remindValue: value));
    });
  }
}

/// @nodoc
abstract class _$$TaskCreateReadyCopyWith<$Res>
    implements $TaskCreateStateCopyWith<$Res> {
  factory _$$TaskCreateReadyCopyWith(
          _$TaskCreateReady value, $Res Function(_$TaskCreateReady) then) =
      __$$TaskCreateReadyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? titleValue,
      DateTime? deadLineValue,
      TimeOfDay? startTimeValue,
      TimeOfDay? endTimeValue,
      RepeatModel? repeatValue,
      RemindModel? remindValue});

  @override
  $RepeatModelCopyWith<$Res>? get repeatValue;
  @override
  $RemindModelCopyWith<$Res>? get remindValue;
}

/// @nodoc
class __$$TaskCreateReadyCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res>
    implements _$$TaskCreateReadyCopyWith<$Res> {
  __$$TaskCreateReadyCopyWithImpl(
      _$TaskCreateReady _value, $Res Function(_$TaskCreateReady) _then)
      : super(_value, (v) => _then(v as _$TaskCreateReady));

  @override
  _$TaskCreateReady get _value => super._value as _$TaskCreateReady;

  @override
  $Res call({
    Object? titleValue = freezed,
    Object? deadLineValue = freezed,
    Object? startTimeValue = freezed,
    Object? endTimeValue = freezed,
    Object? repeatValue = freezed,
    Object? remindValue = freezed,
  }) {
    return _then(_$TaskCreateReady(
      titleValue: titleValue == freezed
          ? _value.titleValue
          : titleValue // ignore: cast_nullable_to_non_nullable
              as String?,
      deadLineValue: deadLineValue == freezed
          ? _value.deadLineValue
          : deadLineValue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTimeValue: startTimeValue == freezed
          ? _value.startTimeValue
          : startTimeValue // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endTimeValue: endTimeValue == freezed
          ? _value.endTimeValue
          : endTimeValue // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      repeatValue: repeatValue == freezed
          ? _value.repeatValue
          : repeatValue // ignore: cast_nullable_to_non_nullable
              as RepeatModel?,
      remindValue: remindValue == freezed
          ? _value.remindValue
          : remindValue // ignore: cast_nullable_to_non_nullable
              as RemindModel?,
    ));
  }
}

/// @nodoc

class _$TaskCreateReady extends TaskCreateReady {
  _$TaskCreateReady(
      {this.titleValue,
      this.deadLineValue,
      this.startTimeValue,
      this.endTimeValue,
      this.repeatValue,
      this.remindValue})
      : super._();

  @override
  final String? titleValue;
  @override
  final DateTime? deadLineValue;
  @override
  final TimeOfDay? startTimeValue;
  @override
  final TimeOfDay? endTimeValue;
  @override
  final RepeatModel? repeatValue;
  @override
  final RemindModel? remindValue;

  @override
  String toString() {
    return 'TaskCreateState.ready(titleValue: $titleValue, deadLineValue: $deadLineValue, startTimeValue: $startTimeValue, endTimeValue: $endTimeValue, repeatValue: $repeatValue, remindValue: $remindValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCreateReady &&
            const DeepCollectionEquality()
                .equals(other.titleValue, titleValue) &&
            const DeepCollectionEquality()
                .equals(other.deadLineValue, deadLineValue) &&
            const DeepCollectionEquality()
                .equals(other.startTimeValue, startTimeValue) &&
            const DeepCollectionEquality()
                .equals(other.endTimeValue, endTimeValue) &&
            const DeepCollectionEquality()
                .equals(other.repeatValue, repeatValue) &&
            const DeepCollectionEquality()
                .equals(other.remindValue, remindValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(titleValue),
      const DeepCollectionEquality().hash(deadLineValue),
      const DeepCollectionEquality().hash(startTimeValue),
      const DeepCollectionEquality().hash(endTimeValue),
      const DeepCollectionEquality().hash(repeatValue),
      const DeepCollectionEquality().hash(remindValue));

  @JsonKey(ignore: true)
  @override
  _$$TaskCreateReadyCopyWith<_$TaskCreateReady> get copyWith =>
      __$$TaskCreateReadyCopyWithImpl<_$TaskCreateReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)
        ready,
    required TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)
        notReady,
    required TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)
        error,
  }) {
    return ready(titleValue, deadLineValue, startTimeValue, endTimeValue,
        repeatValue, remindValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        ready,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        notReady,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        error,
  }) {
    return ready?.call(titleValue, deadLineValue, startTimeValue, endTimeValue,
        repeatValue, remindValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        ready,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        notReady,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(titleValue, deadLineValue, startTimeValue, endTimeValue,
          repeatValue, remindValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskCreateReady value) ready,
    required TResult Function(TaskCreateNotReady value) notReady,
    required TResult Function(TaskCreateError value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskCreateReady value)? ready,
    TResult Function(TaskCreateNotReady value)? notReady,
    TResult Function(TaskCreateError value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskCreateReady value)? ready,
    TResult Function(TaskCreateNotReady value)? notReady,
    TResult Function(TaskCreateError value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class TaskCreateReady extends TaskCreateState {
  factory TaskCreateReady(
      {final String? titleValue,
      final DateTime? deadLineValue,
      final TimeOfDay? startTimeValue,
      final TimeOfDay? endTimeValue,
      final RepeatModel? repeatValue,
      final RemindModel? remindValue}) = _$TaskCreateReady;
  TaskCreateReady._() : super._();

  @override
  String? get titleValue;
  @override
  DateTime? get deadLineValue;
  @override
  TimeOfDay? get startTimeValue;
  @override
  TimeOfDay? get endTimeValue;
  @override
  RepeatModel? get repeatValue;
  @override
  RemindModel? get remindValue;
  @override
  @JsonKey(ignore: true)
  _$$TaskCreateReadyCopyWith<_$TaskCreateReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskCreateNotReadyCopyWith<$Res>
    implements $TaskCreateStateCopyWith<$Res> {
  factory _$$TaskCreateNotReadyCopyWith(_$TaskCreateNotReady value,
          $Res Function(_$TaskCreateNotReady) then) =
      __$$TaskCreateNotReadyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? titleValue,
      DateTime? deadLineValue,
      TimeOfDay? startTimeValue,
      TimeOfDay? endTimeValue,
      RepeatModel? repeatValue,
      RemindModel? remindValue});

  @override
  $RepeatModelCopyWith<$Res>? get repeatValue;
  @override
  $RemindModelCopyWith<$Res>? get remindValue;
}

/// @nodoc
class __$$TaskCreateNotReadyCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res>
    implements _$$TaskCreateNotReadyCopyWith<$Res> {
  __$$TaskCreateNotReadyCopyWithImpl(
      _$TaskCreateNotReady _value, $Res Function(_$TaskCreateNotReady) _then)
      : super(_value, (v) => _then(v as _$TaskCreateNotReady));

  @override
  _$TaskCreateNotReady get _value => super._value as _$TaskCreateNotReady;

  @override
  $Res call({
    Object? titleValue = freezed,
    Object? deadLineValue = freezed,
    Object? startTimeValue = freezed,
    Object? endTimeValue = freezed,
    Object? repeatValue = freezed,
    Object? remindValue = freezed,
  }) {
    return _then(_$TaskCreateNotReady(
      titleValue: titleValue == freezed
          ? _value.titleValue
          : titleValue // ignore: cast_nullable_to_non_nullable
              as String?,
      deadLineValue: deadLineValue == freezed
          ? _value.deadLineValue
          : deadLineValue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTimeValue: startTimeValue == freezed
          ? _value.startTimeValue
          : startTimeValue // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endTimeValue: endTimeValue == freezed
          ? _value.endTimeValue
          : endTimeValue // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      repeatValue: repeatValue == freezed
          ? _value.repeatValue
          : repeatValue // ignore: cast_nullable_to_non_nullable
              as RepeatModel?,
      remindValue: remindValue == freezed
          ? _value.remindValue
          : remindValue // ignore: cast_nullable_to_non_nullable
              as RemindModel?,
    ));
  }
}

/// @nodoc

class _$TaskCreateNotReady extends TaskCreateNotReady {
  _$TaskCreateNotReady(
      {this.titleValue,
      this.deadLineValue,
      this.startTimeValue,
      this.endTimeValue,
      this.repeatValue,
      this.remindValue})
      : super._();

  @override
  final String? titleValue;
  @override
  final DateTime? deadLineValue;
  @override
  final TimeOfDay? startTimeValue;
  @override
  final TimeOfDay? endTimeValue;
  @override
  final RepeatModel? repeatValue;
  @override
  final RemindModel? remindValue;

  @override
  String toString() {
    return 'TaskCreateState.notReady(titleValue: $titleValue, deadLineValue: $deadLineValue, startTimeValue: $startTimeValue, endTimeValue: $endTimeValue, repeatValue: $repeatValue, remindValue: $remindValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCreateNotReady &&
            const DeepCollectionEquality()
                .equals(other.titleValue, titleValue) &&
            const DeepCollectionEquality()
                .equals(other.deadLineValue, deadLineValue) &&
            const DeepCollectionEquality()
                .equals(other.startTimeValue, startTimeValue) &&
            const DeepCollectionEquality()
                .equals(other.endTimeValue, endTimeValue) &&
            const DeepCollectionEquality()
                .equals(other.repeatValue, repeatValue) &&
            const DeepCollectionEquality()
                .equals(other.remindValue, remindValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(titleValue),
      const DeepCollectionEquality().hash(deadLineValue),
      const DeepCollectionEquality().hash(startTimeValue),
      const DeepCollectionEquality().hash(endTimeValue),
      const DeepCollectionEquality().hash(repeatValue),
      const DeepCollectionEquality().hash(remindValue));

  @JsonKey(ignore: true)
  @override
  _$$TaskCreateNotReadyCopyWith<_$TaskCreateNotReady> get copyWith =>
      __$$TaskCreateNotReadyCopyWithImpl<_$TaskCreateNotReady>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)
        ready,
    required TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)
        notReady,
    required TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)
        error,
  }) {
    return notReady(titleValue, deadLineValue, startTimeValue, endTimeValue,
        repeatValue, remindValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        ready,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        notReady,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        error,
  }) {
    return notReady?.call(titleValue, deadLineValue, startTimeValue,
        endTimeValue, repeatValue, remindValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        ready,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        notReady,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        error,
    required TResult orElse(),
  }) {
    if (notReady != null) {
      return notReady(titleValue, deadLineValue, startTimeValue, endTimeValue,
          repeatValue, remindValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskCreateReady value) ready,
    required TResult Function(TaskCreateNotReady value) notReady,
    required TResult Function(TaskCreateError value) error,
  }) {
    return notReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskCreateReady value)? ready,
    TResult Function(TaskCreateNotReady value)? notReady,
    TResult Function(TaskCreateError value)? error,
  }) {
    return notReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskCreateReady value)? ready,
    TResult Function(TaskCreateNotReady value)? notReady,
    TResult Function(TaskCreateError value)? error,
    required TResult orElse(),
  }) {
    if (notReady != null) {
      return notReady(this);
    }
    return orElse();
  }
}

abstract class TaskCreateNotReady extends TaskCreateState {
  factory TaskCreateNotReady(
      {final String? titleValue,
      final DateTime? deadLineValue,
      final TimeOfDay? startTimeValue,
      final TimeOfDay? endTimeValue,
      final RepeatModel? repeatValue,
      final RemindModel? remindValue}) = _$TaskCreateNotReady;
  TaskCreateNotReady._() : super._();

  @override
  String? get titleValue;
  @override
  DateTime? get deadLineValue;
  @override
  TimeOfDay? get startTimeValue;
  @override
  TimeOfDay? get endTimeValue;
  @override
  RepeatModel? get repeatValue;
  @override
  RemindModel? get remindValue;
  @override
  @JsonKey(ignore: true)
  _$$TaskCreateNotReadyCopyWith<_$TaskCreateNotReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskCreateErrorCopyWith<$Res>
    implements $TaskCreateStateCopyWith<$Res> {
  factory _$$TaskCreateErrorCopyWith(
          _$TaskCreateError value, $Res Function(_$TaskCreateError) then) =
      __$$TaskCreateErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? titleValue,
      DateTime? deadLineValue,
      TimeOfDay? startTimeValue,
      TimeOfDay? endTimeValue,
      RepeatModel? repeatValue,
      RemindModel? remindValue});

  @override
  $RepeatModelCopyWith<$Res>? get repeatValue;
  @override
  $RemindModelCopyWith<$Res>? get remindValue;
}

/// @nodoc
class __$$TaskCreateErrorCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res>
    implements _$$TaskCreateErrorCopyWith<$Res> {
  __$$TaskCreateErrorCopyWithImpl(
      _$TaskCreateError _value, $Res Function(_$TaskCreateError) _then)
      : super(_value, (v) => _then(v as _$TaskCreateError));

  @override
  _$TaskCreateError get _value => super._value as _$TaskCreateError;

  @override
  $Res call({
    Object? titleValue = freezed,
    Object? deadLineValue = freezed,
    Object? startTimeValue = freezed,
    Object? endTimeValue = freezed,
    Object? repeatValue = freezed,
    Object? remindValue = freezed,
  }) {
    return _then(_$TaskCreateError(
      titleValue: titleValue == freezed
          ? _value.titleValue
          : titleValue // ignore: cast_nullable_to_non_nullable
              as String?,
      deadLineValue: deadLineValue == freezed
          ? _value.deadLineValue
          : deadLineValue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTimeValue: startTimeValue == freezed
          ? _value.startTimeValue
          : startTimeValue // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endTimeValue: endTimeValue == freezed
          ? _value.endTimeValue
          : endTimeValue // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      repeatValue: repeatValue == freezed
          ? _value.repeatValue
          : repeatValue // ignore: cast_nullable_to_non_nullable
              as RepeatModel?,
      remindValue: remindValue == freezed
          ? _value.remindValue
          : remindValue // ignore: cast_nullable_to_non_nullable
              as RemindModel?,
    ));
  }
}

/// @nodoc

class _$TaskCreateError extends TaskCreateError {
  _$TaskCreateError(
      {this.titleValue,
      this.deadLineValue,
      this.startTimeValue,
      this.endTimeValue,
      this.repeatValue,
      this.remindValue})
      : super._();

  @override
  final String? titleValue;
  @override
  final DateTime? deadLineValue;
  @override
  final TimeOfDay? startTimeValue;
  @override
  final TimeOfDay? endTimeValue;
  @override
  final RepeatModel? repeatValue;
  @override
  final RemindModel? remindValue;

  @override
  String toString() {
    return 'TaskCreateState.error(titleValue: $titleValue, deadLineValue: $deadLineValue, startTimeValue: $startTimeValue, endTimeValue: $endTimeValue, repeatValue: $repeatValue, remindValue: $remindValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCreateError &&
            const DeepCollectionEquality()
                .equals(other.titleValue, titleValue) &&
            const DeepCollectionEquality()
                .equals(other.deadLineValue, deadLineValue) &&
            const DeepCollectionEquality()
                .equals(other.startTimeValue, startTimeValue) &&
            const DeepCollectionEquality()
                .equals(other.endTimeValue, endTimeValue) &&
            const DeepCollectionEquality()
                .equals(other.repeatValue, repeatValue) &&
            const DeepCollectionEquality()
                .equals(other.remindValue, remindValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(titleValue),
      const DeepCollectionEquality().hash(deadLineValue),
      const DeepCollectionEquality().hash(startTimeValue),
      const DeepCollectionEquality().hash(endTimeValue),
      const DeepCollectionEquality().hash(repeatValue),
      const DeepCollectionEquality().hash(remindValue));

  @JsonKey(ignore: true)
  @override
  _$$TaskCreateErrorCopyWith<_$TaskCreateError> get copyWith =>
      __$$TaskCreateErrorCopyWithImpl<_$TaskCreateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)
        ready,
    required TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)
        notReady,
    required TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)
        error,
  }) {
    return error(titleValue, deadLineValue, startTimeValue, endTimeValue,
        repeatValue, remindValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        ready,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        notReady,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        error,
  }) {
    return error?.call(titleValue, deadLineValue, startTimeValue, endTimeValue,
        repeatValue, remindValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        ready,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        notReady,
    TResult Function(
            String? titleValue,
            DateTime? deadLineValue,
            TimeOfDay? startTimeValue,
            TimeOfDay? endTimeValue,
            RepeatModel? repeatValue,
            RemindModel? remindValue)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(titleValue, deadLineValue, startTimeValue, endTimeValue,
          repeatValue, remindValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskCreateReady value) ready,
    required TResult Function(TaskCreateNotReady value) notReady,
    required TResult Function(TaskCreateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskCreateReady value)? ready,
    TResult Function(TaskCreateNotReady value)? notReady,
    TResult Function(TaskCreateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskCreateReady value)? ready,
    TResult Function(TaskCreateNotReady value)? notReady,
    TResult Function(TaskCreateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TaskCreateError extends TaskCreateState {
  factory TaskCreateError(
      {final String? titleValue,
      final DateTime? deadLineValue,
      final TimeOfDay? startTimeValue,
      final TimeOfDay? endTimeValue,
      final RepeatModel? repeatValue,
      final RemindModel? remindValue}) = _$TaskCreateError;
  TaskCreateError._() : super._();

  @override
  String? get titleValue;
  @override
  DateTime? get deadLineValue;
  @override
  TimeOfDay? get startTimeValue;
  @override
  TimeOfDay? get endTimeValue;
  @override
  RepeatModel? get repeatValue;
  @override
  RemindModel? get remindValue;
  @override
  @JsonKey(ignore: true)
  _$$TaskCreateErrorCopyWith<_$TaskCreateError> get copyWith =>
      throw _privateConstructorUsedError;
}
