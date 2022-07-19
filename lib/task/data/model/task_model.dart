import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_test_app/common/data/model/serializable.dart';

part 'task_model.freezed.dart';

part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel implements Serializable {
  const factory TaskModel(
    int id,
    @JsonKey(name: 'user_id') int userId,
    String title,
    @JsonKey(name: 'due_on') DateTime timeToComplete,
    String status,
  ) = TaskModelValue;

  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);
}
