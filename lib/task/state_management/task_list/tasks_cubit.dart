import 'package:built_collection/built_collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_test_app/task/service/task_service.dart';
import 'package:new_test_app/task/state_management/model/models.dart';

import 'tasks_state.dart';

export 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  final TaskService _taskService;

  TasksCubit(this._taskService) : super(TasksState.loading(category: TaskCategory.all)) {
    loadTasks();
  }

  void loadTasks() async {
    final loadedTasks = await _taskService.getAllTasks();

    if (loadedTasks.error != null) {
      return emit(TasksState.error(
        loadedTasks: BuiltList.from(loadedTasks.tasks),
        category: state.category,
      ));
    }

    return emit(TasksState.ready(
      loadedTasks: BuiltList.from(loadedTasks.tasks),
      category: state.category,
    ));
  }

  void changeCategory(TaskCategory category) => emit(state.copyWith(category: category));
}
