import 'package:new_test_app/task/data/model/task_model.dart';

import '../state_management/model/models.dart';

const int _defaultTaskId = 123456;
const int _defaultUserId = 987654;

class TaskConverter {
  Task? tryConvertTaskFromDto(TaskModel taskModel) {
    final isTaskCompleted = _tryConvertTaskCompletionFromDto(taskModel);
    if (isTaskCompleted == null) {
      return null;
    }

    return Task(
      title: taskModel.title,
      isCompleted: isTaskCompleted,
      timeToComplete: taskModel.timeToComplete,
    );
  }

  bool? _tryConvertTaskCompletionFromDto(TaskModel taskModel) {
    if (taskModel.status == _KnownTaskStatuses.completed) {
      return true;
    }
    if (taskModel.status == _KnownTaskStatuses.pending) {
      return false;
    }

    return null;
  }

  TaskModel convertTaskToDto(Task task) {
    return TaskModelValue(
      _defaultTaskId,
      _defaultUserId,
      task.title,
      task.timeToComplete,
      task.isCompleted ? _KnownTaskStatuses.completed : _KnownTaskStatuses.pending,
    );
  }
}

abstract class _KnownTaskStatuses {
  static const String completed = 'completed';
  static const String pending = 'pending';
}
