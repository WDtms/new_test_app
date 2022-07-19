import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_test_app/task/state_management/model/models.dart';

part 'task_create_state.freezed.dart';

@freezed
class TaskCreateState with _$TaskCreateState {
  TaskCreateState._();

  factory TaskCreateState.ready({
    String? titleValue,
    DateTime? deadLineValue,
    TimeOfDay? startTimeValue,
    TimeOfDay? endTimeValue,
    RepeatModel? repeatValue,
    RemindModel? remindValue,
  }) = TaskCreateReady;

  factory TaskCreateState.notReady({
    String? titleValue,
    DateTime? deadLineValue,
    TimeOfDay? startTimeValue,
    TimeOfDay? endTimeValue,
    RepeatModel? repeatValue,
    RemindModel? remindValue,
  }) = TaskCreateNotReady;

  factory TaskCreateState.error({
    String? titleValue,
    DateTime? deadLineValue,
    TimeOfDay? startTimeValue,
    TimeOfDay? endTimeValue,
    RepeatModel? repeatValue,
    RemindModel? remindValue,
  }) = TaskCreateError;

  late final bool canCreateTask = maybeMap(
   ready: (_) => true,
    orElse: () => false,
  );
}

enum TitleError { empty }

enum DeadlineError { empty, beforeNow }

enum StartEndTimeError { empty, endBeforeStart }

enum RemindError { empty }

enum RepeatError { empty }
