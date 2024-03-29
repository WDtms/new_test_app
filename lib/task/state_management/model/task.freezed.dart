// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Task {
  String get title => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  DateTime get timeToComplete => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call({String title, bool isCompleted, DateTime timeToComplete});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? isCompleted = freezed,
    Object? timeToComplete = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      timeToComplete: timeToComplete == freezed
          ? _value.timeToComplete
          : timeToComplete // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$TaskValueCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskValueCopyWith(
          _$TaskValue value, $Res Function(_$TaskValue) then) =
      __$$TaskValueCopyWithImpl<$Res>;
  @override
  $Res call({String title, bool isCompleted, DateTime timeToComplete});
}

/// @nodoc
class __$$TaskValueCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$TaskValueCopyWith<$Res> {
  __$$TaskValueCopyWithImpl(
      _$TaskValue _value, $Res Function(_$TaskValue) _then)
      : super(_value, (v) => _then(v as _$TaskValue));

  @override
  _$TaskValue get _value => super._value as _$TaskValue;

  @override
  $Res call({
    Object? title = freezed,
    Object? isCompleted = freezed,
    Object? timeToComplete = freezed,
  }) {
    return _then(_$TaskValue(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      timeToComplete: timeToComplete == freezed
          ? _value.timeToComplete
          : timeToComplete // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TaskValue implements TaskValue {
  const _$TaskValue(
      {required this.title,
      required this.isCompleted,
      required this.timeToComplete});

  @override
  final String title;
  @override
  final bool isCompleted;
  @override
  final DateTime timeToComplete;

  @override
  String toString() {
    return 'Task(title: $title, isCompleted: $isCompleted, timeToComplete: $timeToComplete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskValue &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.isCompleted, isCompleted) &&
            const DeepCollectionEquality()
                .equals(other.timeToComplete, timeToComplete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(isCompleted),
      const DeepCollectionEquality().hash(timeToComplete));

  @JsonKey(ignore: true)
  @override
  _$$TaskValueCopyWith<_$TaskValue> get copyWith =>
      __$$TaskValueCopyWithImpl<_$TaskValue>(this, _$identity);
}

abstract class TaskValue implements Task {
  const factory TaskValue(
      {required final String title,
      required final bool isCompleted,
      required final DateTime timeToComplete}) = _$TaskValue;

  @override
  String get title;
  @override
  bool get isCompleted;
  @override
  DateTime get timeToComplete;
  @override
  @JsonKey(ignore: true)
  _$$TaskValueCopyWith<_$TaskValue> get copyWith =>
      throw _privateConstructorUsedError;
}
