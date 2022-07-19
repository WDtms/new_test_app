import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_test_app/task/state_management/model/models.dart';

part 'tasks_fetch_result.freezed.dart';

@freezed
class TasksFetchResult with _$TasksFetchResult {
  const factory TasksFetchResult({required List<Task> tasks, TaskFetchError? error}) = TasksFetchResultError;
}

enum TaskFetchError {
  storage, network, both
}