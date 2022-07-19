import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_test_app/common/view/app_bar_action_widget.dart';
import 'package:new_test_app/common/view/app_bar_widget.dart';
import 'package:new_test_app/common/view/button_widget.dart';
import 'package:new_test_app/common/view/model/sizes.dart';
import 'package:new_test_app/root/view/model/app_routes.dart';
import 'package:new_test_app/task/state_management/task_list/tasks_cubit.dart';
import 'package:new_test_app/task/view/list/task_category_list_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:new_test_app/task/view/list/task_list_widget.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          _buildPage(),
          _buildBottomButton(context),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() => const AppBarWidget(
        title: 'Board',
        actions: [
          AppBarActionWidget(
            onTap: null,
            iconAsset: Icons.youtube_searched_for,
          ),
          AppBarActionWidget(
            onTap: null,
            iconAsset: Icons.notifications_none_outlined,
          ),
          AppBarActionWidget(
            onTap: null,
            iconAsset: Icons.wrap_text,
          )
        ],
      );

  Widget _buildPage() {
    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) => ListView(
        children: [
          TaskCategoryListWidget(selectedCategory: state.category),
          state.maybeMap(
            loading: (_) => _buildLoadingForm(),
            orElse: () => TaskListWidget(taskList: state.taskList),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingForm() {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildBottomButton(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.pageHorizontalPadding),
            child: ButtonWidget(
              backgroundColor: Colors.green,
              title: 'Add a task',
              onTap: () => context.push(AppRoutes.taskCreateRoute),
            )),
      ),
    );
  }
}
