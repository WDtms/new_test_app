import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:new_test_app/common/data/model/result.dart';
import 'package:new_test_app/task/data/model/task_model.dart';
import 'package:http/http.dart' as http;

class TaskClient {
  Future<Result<List<TaskModel>, void>> fetchTasks() async {
    var url = Uri.parse('https://gorest.co.in/public/v2/todos');
    final response = await http.get(url);
    if (response.statusCode != 200) return const Result.error(null);
    return compute(_decodeResponse, response.body);
  }
}

Result<List<TaskModel>, void> _decodeResponse(String responseBody) {
  try {
    List<TaskModel> taskModels = [];
    List<dynamic> response = jsonDecode(responseBody);
    for (var it in response) {
      final task = TaskModel.fromJson(it);
      taskModels.add(task);
    }
    return Result.data(taskModels);
  } catch (e) {
    return const Result.error(null);
  }
}