// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tasks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksState {
  TaskCategory get category => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCategory category) loading,
    required TResult Function(
            BuiltList<Task> loadedTasks, TaskCategory category)
        ready,
    required TResult Function(
            BuiltList<Task> loadedTasks, TaskCategory category)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TaskCategory category)? loading,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? ready,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCategory category)? loading,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? ready,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoading value) loading,
    required TResult Function(TasksReady value) ready,
    required TResult Function(TasksError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksLoading value)? loading,
    TResult Function(TasksReady value)? ready,
    TResult Function(TasksError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoading value)? loading,
    TResult Function(TasksReady value)? ready,
    TResult Function(TasksError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksStateCopyWith<TasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res>;
  $Res call({TaskCategory category});
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res> implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  final TasksState _value;
  // ignore: unused_field
  final $Res Function(TasksState) _then;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TaskCategory,
    ));
  }
}

/// @nodoc
abstract class _$$TasksLoadingCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$TasksLoadingCopyWith(
          _$TasksLoading value, $Res Function(_$TasksLoading) then) =
      __$$TasksLoadingCopyWithImpl<$Res>;
  @override
  $Res call({TaskCategory category});
}

/// @nodoc
class __$$TasksLoadingCopyWithImpl<$Res> extends _$TasksStateCopyWithImpl<$Res>
    implements _$$TasksLoadingCopyWith<$Res> {
  __$$TasksLoadingCopyWithImpl(
      _$TasksLoading _value, $Res Function(_$TasksLoading) _then)
      : super(_value, (v) => _then(v as _$TasksLoading));

  @override
  _$TasksLoading get _value => super._value as _$TasksLoading;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$TasksLoading(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TaskCategory,
    ));
  }
}

/// @nodoc

class _$TasksLoading extends TasksLoading {
  _$TasksLoading({required this.category}) : super._();

  @override
  final TaskCategory category;

  @override
  String toString() {
    return 'TasksState.loading(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksLoading &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$TasksLoadingCopyWith<_$TasksLoading> get copyWith =>
      __$$TasksLoadingCopyWithImpl<_$TasksLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCategory category) loading,
    required TResult Function(
            BuiltList<Task> loadedTasks, TaskCategory category)
        ready,
    required TResult Function(
            BuiltList<Task> loadedTasks, TaskCategory category)
        error,
  }) {
    return loading(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TaskCategory category)? loading,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? ready,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? error,
  }) {
    return loading?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCategory category)? loading,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? ready,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoading value) loading,
    required TResult Function(TasksReady value) ready,
    required TResult Function(TasksError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksLoading value)? loading,
    TResult Function(TasksReady value)? ready,
    TResult Function(TasksError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoading value)? loading,
    TResult Function(TasksReady value)? ready,
    TResult Function(TasksError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TasksLoading extends TasksState {
  factory TasksLoading({required final TaskCategory category}) = _$TasksLoading;
  TasksLoading._() : super._();

  @override
  TaskCategory get category;
  @override
  @JsonKey(ignore: true)
  _$$TasksLoadingCopyWith<_$TasksLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksReadyCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$TasksReadyCopyWith(
          _$TasksReady value, $Res Function(_$TasksReady) then) =
      __$$TasksReadyCopyWithImpl<$Res>;
  @override
  $Res call({BuiltList<Task> loadedTasks, TaskCategory category});
}

/// @nodoc
class __$$TasksReadyCopyWithImpl<$Res> extends _$TasksStateCopyWithImpl<$Res>
    implements _$$TasksReadyCopyWith<$Res> {
  __$$TasksReadyCopyWithImpl(
      _$TasksReady _value, $Res Function(_$TasksReady) _then)
      : super(_value, (v) => _then(v as _$TasksReady));

  @override
  _$TasksReady get _value => super._value as _$TasksReady;

  @override
  $Res call({
    Object? loadedTasks = freezed,
    Object? category = freezed,
  }) {
    return _then(_$TasksReady(
      loadedTasks: loadedTasks == freezed
          ? _value.loadedTasks
          : loadedTasks // ignore: cast_nullable_to_non_nullable
              as BuiltList<Task>,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TaskCategory,
    ));
  }
}

/// @nodoc

class _$TasksReady extends TasksReady {
  _$TasksReady({required this.loadedTasks, required this.category}) : super._();

  @override
  final BuiltList<Task> loadedTasks;
  @override
  final TaskCategory category;

  @override
  String toString() {
    return 'TasksState.ready(loadedTasks: $loadedTasks, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksReady &&
            const DeepCollectionEquality()
                .equals(other.loadedTasks, loadedTasks) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loadedTasks),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$TasksReadyCopyWith<_$TasksReady> get copyWith =>
      __$$TasksReadyCopyWithImpl<_$TasksReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCategory category) loading,
    required TResult Function(
            BuiltList<Task> loadedTasks, TaskCategory category)
        ready,
    required TResult Function(
            BuiltList<Task> loadedTasks, TaskCategory category)
        error,
  }) {
    return ready(loadedTasks, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TaskCategory category)? loading,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? ready,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? error,
  }) {
    return ready?.call(loadedTasks, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCategory category)? loading,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? ready,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(loadedTasks, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoading value) loading,
    required TResult Function(TasksReady value) ready,
    required TResult Function(TasksError value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksLoading value)? loading,
    TResult Function(TasksReady value)? ready,
    TResult Function(TasksError value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoading value)? loading,
    TResult Function(TasksReady value)? ready,
    TResult Function(TasksError value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class TasksReady extends TasksState {
  factory TasksReady(
      {required final BuiltList<Task> loadedTasks,
      required final TaskCategory category}) = _$TasksReady;
  TasksReady._() : super._();

  BuiltList<Task> get loadedTasks;
  @override
  TaskCategory get category;
  @override
  @JsonKey(ignore: true)
  _$$TasksReadyCopyWith<_$TasksReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksErrorCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$TasksErrorCopyWith(
          _$TasksError value, $Res Function(_$TasksError) then) =
      __$$TasksErrorCopyWithImpl<$Res>;
  @override
  $Res call({BuiltList<Task> loadedTasks, TaskCategory category});
}

/// @nodoc
class __$$TasksErrorCopyWithImpl<$Res> extends _$TasksStateCopyWithImpl<$Res>
    implements _$$TasksErrorCopyWith<$Res> {
  __$$TasksErrorCopyWithImpl(
      _$TasksError _value, $Res Function(_$TasksError) _then)
      : super(_value, (v) => _then(v as _$TasksError));

  @override
  _$TasksError get _value => super._value as _$TasksError;

  @override
  $Res call({
    Object? loadedTasks = freezed,
    Object? category = freezed,
  }) {
    return _then(_$TasksError(
      loadedTasks: loadedTasks == freezed
          ? _value.loadedTasks
          : loadedTasks // ignore: cast_nullable_to_non_nullable
              as BuiltList<Task>,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TaskCategory,
    ));
  }
}

/// @nodoc

class _$TasksError extends TasksError {
  _$TasksError({required this.loadedTasks, required this.category}) : super._();

  @override
  final BuiltList<Task> loadedTasks;
  @override
  final TaskCategory category;

  @override
  String toString() {
    return 'TasksState.error(loadedTasks: $loadedTasks, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksError &&
            const DeepCollectionEquality()
                .equals(other.loadedTasks, loadedTasks) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loadedTasks),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$TasksErrorCopyWith<_$TasksError> get copyWith =>
      __$$TasksErrorCopyWithImpl<_$TasksError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskCategory category) loading,
    required TResult Function(
            BuiltList<Task> loadedTasks, TaskCategory category)
        ready,
    required TResult Function(
            BuiltList<Task> loadedTasks, TaskCategory category)
        error,
  }) {
    return error(loadedTasks, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TaskCategory category)? loading,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? ready,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? error,
  }) {
    return error?.call(loadedTasks, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskCategory category)? loading,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? ready,
    TResult Function(BuiltList<Task> loadedTasks, TaskCategory category)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(loadedTasks, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksLoading value) loading,
    required TResult Function(TasksReady value) ready,
    required TResult Function(TasksError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksLoading value)? loading,
    TResult Function(TasksReady value)? ready,
    TResult Function(TasksError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksLoading value)? loading,
    TResult Function(TasksReady value)? ready,
    TResult Function(TasksError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TasksError extends TasksState {
  factory TasksError(
      {required final BuiltList<Task> loadedTasks,
      required final TaskCategory category}) = _$TasksError;
  TasksError._() : super._();

  BuiltList<Task> get loadedTasks;
  @override
  TaskCategory get category;
  @override
  @JsonKey(ignore: true)
  _$$TasksErrorCopyWith<_$TasksError> get copyWith =>
      throw _privateConstructorUsedError;
}
