import 'package:new_test_app/common/data/model/result.dart';
import 'package:new_test_app/common/data/storage/hive_list_storage.dart';
import 'package:new_test_app/task/data/client/task_client.dart';
import 'package:new_test_app/task/data/model/task_model.dart';
import 'package:new_test_app/task/service/model/tasks_fetch_result.dart';
import 'package:new_test_app/task/service/task_converter.dart';

import '../state_management/model/models.dart';

class TaskService {
  final TaskClient _taskClient;
  final HiveListStorage<TaskModel> _taskListStorage;
  final TaskConverter _taskConverter;

  TaskService(this._taskClient, this._taskListStorage, this._taskConverter);

  Future<Result<void, void>> saveCreatedTask(Task task) async {
    final storageTasks = await _taskListStorage.read();
    return storageTasks.map(
      data: (it) async {
        final list = it.value.toList()..add(_taskConverter.convertTaskToDto(task));
        final savedResult = await _taskListStorage.save(list);

        return savedResult;
      },
      error: (_) {
        return const Result.error(null);
      },
    );
  }

  Future<TasksFetchResult> getAllTasks() async {
    List<Task> allTasks = [];
    TaskFetchError? fetchError;
    TaskFetchError? storageError;

    final fetchedTasks = await _taskClient.fetchTasks();
    fetchedTasks.map(
      data: (it) {
        final List<Task> convertedTasks = it.value
            .map((e) => _taskConverter.tryConvertTaskFromDto(e))
            .where((element) => element != null)
            .cast<Task>()
            .toList();
        allTasks.addAll(convertedTasks);
      },
      error: (_) {
        fetchError = TaskFetchError.network;
      },
    );

    final storageTasks = await _taskListStorage.read();
    storageTasks.map(
      data: (it) {
        final List<Task> convertedTasks = it.value
            .map((e) => _taskConverter.tryConvertTaskFromDto(e))
            .where((element) => element != null)
            .cast<Task>()
            .toList();
        allTasks.addAll(convertedTasks);
      },
      error: (_) {
        storageError = TaskFetchError.storage;
      },
    );

    final resultError = _getResultError(storage: storageError, network: fetchError);
    return TasksFetchResult(tasks: allTasks, error: resultError);
  }

  TaskFetchError? _getResultError({
    required TaskFetchError? storage,
    required TaskFetchError? network,
  }) {
    if (storage != null && network != null) {
      return TaskFetchError.both;
    }
    return storage ?? network;
  }
}
