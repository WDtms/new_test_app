import 'package:new_test_app/common/data/storage/hive_adapter.dart';
import 'package:new_test_app/task/data/model/task_model.dart';

class TaskHiveAdapter extends HiveAdapter<TaskModel> {
  TaskHiveAdapter() : super(fromJson: (json) => TaskModelValue.fromJson(json));
}
