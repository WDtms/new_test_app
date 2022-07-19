import 'package:flutter/material.dart';
import 'package:new_test_app/task/state_management/model/models.dart';
import 'package:new_test_app/task/view/list/task_checkbox.dart';

class TaskCard extends StatelessWidget {
  final Task task;

  const TaskCard({required this.task, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TaskCheckbox(color: task.isCompleted ? Colors.green : Colors.blueAccent, isCompleted: task.isCompleted),
        const SizedBox(width: 15),
        Expanded(
          child: Text(task.title),
        )
      ],
    );
  }
}
