import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:new_test_app/common/view/model/sizes.dart';
import 'package:new_test_app/task/state_management/model/models.dart';
import 'package:new_test_app/task/view/list/task_card.dart';

class TaskListWidget extends StatelessWidget {
  final BuiltList<Task> taskList;

  const TaskListWidget({required this.taskList, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      clipBehavior: Clip.none,
      padding: const EdgeInsets.only(
        left: Sizes.pageHorizontalPadding,
        right: Sizes.pageHorizontalPadding,
        top: 20.0,
      ),
      itemBuilder: (ctx, idx) => TaskCard(task: taskList[idx]),
      separatorBuilder: (_, __) => const SizedBox(height: 20),
      itemCount: taskList.length,
    );
  }
}
