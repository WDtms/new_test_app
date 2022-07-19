import 'package:flutter/material.dart';
import 'package:new_test_app/common/view/divider_widget.dart';
import 'package:new_test_app/common/view/model/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_test_app/task/state_management/model/models.dart';
import 'package:new_test_app/task/state_management/task_list/tasks_cubit.dart';

class TaskCategoryListWidget extends StatelessWidget {
  final TaskCategory selectedCategory;

  const TaskCategoryListWidget({required this.selectedCategory, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.pageHorizontalPadding),
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, idx) => _buildCategoryItem(ctx, TaskCategory.values[idx]),
            separatorBuilder: (_, __) => const SizedBox(width: 70),
            itemCount: TaskCategory.values.length,
          ),
        ),
        buildDivider(),
      ],
    );
  }

  Widget _buildCategoryItem(BuildContext context, TaskCategory category) {
    final Border? border = category == selectedCategory
        ? const Border(bottom: BorderSide(color: Colors.black, width: 4.0))
        : null;

    return GestureDetector(
      onTap: () => context.read<TasksCubit>().changeCategory(category),
      child: Container(
        decoration: BoxDecoration(border: border),
        child: Center(
          child: Text(
            category.name,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
