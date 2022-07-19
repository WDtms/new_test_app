import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:new_test_app/root/view/model/app_routes.dart';
import 'package:new_test_app/task/service/task_service.dart';
import 'package:new_test_app/task/state_management/task_create/task_create_cubit.dart';
import 'package:new_test_app/task/state_management/task_list/tasks_cubit.dart';
import 'package:new_test_app/task/view/create_task/create_task_page.dart';
import 'package:new_test_app/task/view/list/task_list_page.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  _AppRootState createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  late GoRouter _router;

  @override
  void initState() {
    _router = GoRouter(routes: [
      GoRoute(path: '/', redirect: (_) => AppRoutes.taskListRoute),
      GoRoute(
        path: AppRoutes.taskListRoute,
        pageBuilder: (context, state) =>
            CustomTransitionPage(
              key: state.pageKey,
              child: const TaskListPage(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                  FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
            ),
      ),
      GoRoute(
        path: AppRoutes.taskCreateRoute,
        pageBuilder: (context, state) =>
            CustomTransitionPage(
              key: state.pageKey,
              child: BlocProvider(
                  create: (ctx) => TaskCreateCubit(ctx.read<TasksCubit>(), ctx.read<TaskService>()),
                  child: const CreateTaskPage()),
              transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                  FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
            ),
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My Test App',
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
