// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tasks_fetch_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksFetchResult {
  List<Task> get tasks => throw _privateConstructorUsedError;
  TaskFetchError? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksFetchResultCopyWith<TasksFetchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksFetchResultCopyWith<$Res> {
  factory $TasksFetchResultCopyWith(
          TasksFetchResult value, $Res Function(TasksFetchResult) then) =
      _$TasksFetchResultCopyWithImpl<$Res>;
  $Res call({List<Task> tasks, TaskFetchError? error});
}

/// @nodoc
class _$TasksFetchResultCopyWithImpl<$Res>
    implements $TasksFetchResultCopyWith<$Res> {
  _$TasksFetchResultCopyWithImpl(this._value, this._then);

  final TasksFetchResult _value;
  // ignore: unused_field
  final $Res Function(TasksFetchResult) _then;

  @override
  $Res call({
    Object? tasks = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TaskFetchError?,
    ));
  }
}

/// @nodoc
abstract class _$$TasksFetchResultErrorCopyWith<$Res>
    implements $TasksFetchResultCopyWith<$Res> {
  factory _$$TasksFetchResultErrorCopyWith(_$TasksFetchResultError value,
          $Res Function(_$TasksFetchResultError) then) =
      __$$TasksFetchResultErrorCopyWithImpl<$Res>;
  @override
  $Res call({List<Task> tasks, TaskFetchError? error});
}

/// @nodoc
class __$$TasksFetchResultErrorCopyWithImpl<$Res>
    extends _$TasksFetchResultCopyWithImpl<$Res>
    implements _$$TasksFetchResultErrorCopyWith<$Res> {
  __$$TasksFetchResultErrorCopyWithImpl(_$TasksFetchResultError _value,
      $Res Function(_$TasksFetchResultError) _then)
      : super(_value, (v) => _then(v as _$TasksFetchResultError));

  @override
  _$TasksFetchResultError get _value => super._value as _$TasksFetchResultError;

  @override
  $Res call({
    Object? tasks = freezed,
    Object? error = freezed,
  }) {
    return _then(_$TasksFetchResultError(
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TaskFetchError?,
    ));
  }
}

/// @nodoc

class _$TasksFetchResultError implements TasksFetchResultError {
  const _$TasksFetchResultError({required final List<Task> tasks, this.error})
      : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final TaskFetchError? error;

  @override
  String toString() {
    return 'TasksFetchResult(tasks: $tasks, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksFetchResultError &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$TasksFetchResultErrorCopyWith<_$TasksFetchResultError> get copyWith =>
      __$$TasksFetchResultErrorCopyWithImpl<_$TasksFetchResultError>(
          this, _$identity);
}

abstract class TasksFetchResultError implements TasksFetchResult {
  const factory TasksFetchResultError(
      {required final List<Task> tasks,
      final TaskFetchError? error}) = _$TasksFetchResultError;

  @override
  List<Task> get tasks;
  @override
  TaskFetchError? get error;
  @override
  @JsonKey(ignore: true)
  _$$TasksFetchResultErrorCopyWith<_$TasksFetchResultError> get copyWith =>
      throw _privateConstructorUsedError;
}
