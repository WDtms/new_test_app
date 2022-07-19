import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_test_app/common/data/storage/hive_list_storage.dart';
import 'package:new_test_app/root/view/app_root.dart';
import 'package:new_test_app/task/data/client/task_client.dart';
import 'package:new_test_app/task/data/model/task_model.dart';
import 'package:new_test_app/task/data/storage/task_hive_adapter.dart';
import 'package:new_test_app/task/service/task_converter.dart';
import 'package:new_test_app/task/service/task_service.dart';
import 'package:new_test_app/task/state_management/task_list/tasks_cubit.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => _buildAppWithDependencies(const AppRoot());

  MultiProvider _buildAppWithDependencies(Widget child) {
    return MultiProvider(
      providers: [
        Provider<TaskHiveAdapter>(create: (_) => TaskHiveAdapter()),
        Provider<TaskClient>(create: (_) => TaskClient()),
        Provider<HiveListStorage<TaskModel>>(create: (ctx) => HiveListStorage<TaskModel>(ctx.read<TaskHiveAdapter>())),
        Provider<TaskConverter>(create: (_) => TaskConverter()),
        Provider<TaskService>(
            create: (ctx) => TaskService(
                  ctx.read<TaskClient>(),
                  ctx.read<HiveListStorage<TaskModel>>(),
                  ctx.read<TaskConverter>(),
                )),
        BlocProvider<TasksCubit>(create: (ctx) => TasksCubit(ctx.read<TaskService>())),
      ],
      child: child,
    );
  }
}
