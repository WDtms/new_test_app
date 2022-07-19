import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_test_app/task/state_management/model/models.dart';

part 'tasks_state.freezed.dart';

@freezed
class TasksState with _$TasksState {
  TasksState._();

  factory TasksState.loading({required TaskCategory category}) = TasksLoading;

  factory TasksState.ready({
    required BuiltList<Task> loadedTasks,
    required TaskCategory category,
  }) = TasksReady;

  factory TasksState.error({
    required BuiltList<Task> loadedTasks,
    required TaskCategory category,
  }) = TasksError;

  late final BuiltList<Task> taskList = map(
    loading: (_) => _emptyList,
    ready: (it) => _getTasksToShow(it.loadedTasks, it.category),
    error: (it) => _getTasksToShow(it.loadedTasks, it.category),
  );

  BuiltList<Task> _getTasksToShow(BuiltList<Task> taskList, TaskCategory category) {
    switch (category) {
      case TaskCategory.all:
        return taskList;
      case TaskCategory.completed:
        return taskList.rebuild((list) => list.where((it) => it.isCompleted)).toBuiltList();
      case TaskCategory.uncompleted:
        return taskList.rebuild((list) => list.where((it) => !it.isCompleted)).toBuiltList();
      case TaskCategory.random:
        return _emptyList;
    }
  }
}

BuiltList<Task> _emptyList = BuiltList<Task>.of([]);
