import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_test_app/common/dart/time_of_day_extension.dart';
import 'package:new_test_app/task/service/task_service.dart';
import 'package:new_test_app/task/state_management/model/models.dart';
import 'package:new_test_app/task/state_management/task_list/tasks_cubit.dart';

import 'task_create_state.dart';

export 'task_create_state.dart';

class TaskCreateCubit extends Cubit<TaskCreateState> {
  final TasksCubit _tasksCubit;
  final TaskService _taskService;

  TaskCreateCubit(
    this._tasksCubit,
    this._taskService,
  ) : super(TaskCreateState.ready());

  set title(String? val) {
    if (val == state.titleValue) {
      return;
    }

    _emitStateByNewData(
      val,
      state.deadLineValue,
      state.startTimeValue,
      state.endTimeValue,
      state.repeatValue,
      state.remindValue,
    );
  }

  set deadLine(DateTime? val) {
    if (val == state.deadLineValue) {
      return;
    }

    _emitStateByNewData(
      state.titleValue,
      val,
      state.startTimeValue,
      state.endTimeValue,
      state.repeatValue,
      state.remindValue,
    );
  }

  set startTime(TimeOfDay? val) {
    if (val == state.startTimeValue) {
      return;
    }

    _emitStateByNewData(
      state.titleValue,
      state.deadLineValue,
      val,
      state.endTimeValue,
      state.repeatValue,
      state.remindValue,
    );
  }

  set endTime(TimeOfDay? val) {
    if (val == state.endTimeValue) {
      return;
    }

    _emitStateByNewData(
      state.titleValue,
      state.deadLineValue,
      state.startTimeValue,
      val,
      state.repeatValue,
      state.remindValue,
    );
  }

  set remind(RemindModel? val) {
    if (val == state.remindValue) {
      return;
    }

    _emitStateByNewData(
      state.titleValue,
      state.deadLineValue,
      state.startTimeValue,
      state.endTimeValue,
      state.repeatValue,
      val,
    );
  }

  set repeat(RepeatModel? val) {
    if (val == state.repeatValue) {
      return;
    }

    _emitStateByNewData(
      state.titleValue,
      state.deadLineValue,
      state.startTimeValue,
      state.endTimeValue,
      val,
      state.remindValue,
    );
  }

  void _emitStateByNewData(
    String? titleVal,
    DateTime? deadlineVal,
    TimeOfDay? startTime,
    TimeOfDay? endTime,
    RepeatModel? repeatModel,
    RemindModel? remindModel,
  ) =>
      emit(state.copyWith(
        titleValue: titleVal,
        deadLineValue: deadlineVal,
        startTimeValue: startTime,
        endTimeValue: endTime,
        repeatValue: repeatModel,
        remindValue: remindModel,
      ));

  Future<bool> createTask() async {
    final validatedState = _validate();
    if (validatedState is! TaskCreateReady) {
      return false;
    }

    final createResult = await _taskService.saveCreatedTask(
      Task(
        title: state.titleValue!,
        isCompleted: false,
        timeToComplete: state.deadLineValue!,
      ),
    );

    return createResult.map(
      data: (_) async {
        _tasksCubit.loadTasks();

        return true;
      },
      error: (_) => false,
    );
  }

  TaskCreateState _validate() {
    final titleError = _validateTitle(state.titleValue);
    final deadlineError = _validateDeadline(state.deadLineValue);
    final startEndTimeError = _validateStartEndTime(state.startTimeValue, state.endTimeValue);
    final remindError = _validateRemindValue(state.remindValue);
    final repeatError = _validateRepeatValue(state.repeatValue);

    if (titleError != null ||
        deadlineError != null ||
        startEndTimeError != null ||
        remindError != null ||
        repeatError != null) {
      final stateToEmit = TaskCreateState.error(
        titleValue: state.titleValue,
        deadLineValue: state.deadLineValue,
        startTimeValue: state.startTimeValue,
        endTimeValue: state.endTimeValue,
        remindValue: state.remindValue,
        repeatValue: state.repeatValue,
      );
      emit(stateToEmit);
      _emitNotReadyState();
      return stateToEmit;
    }

    final stateToEmit = TaskCreateState.ready(
      titleValue: state.titleValue,
      deadLineValue: state.deadLineValue,
      startTimeValue: state.startTimeValue,
      endTimeValue: state.endTimeValue,
      remindValue: state.remindValue,
      repeatValue: state.repeatValue,
    );
    emit(stateToEmit);
    return stateToEmit;
  }

  void _emitNotReadyState() async {
    emit(TaskCreateState.notReady(
      titleValue: state.titleValue,
      deadLineValue: state.deadLineValue,
      startTimeValue: state.startTimeValue,
      endTimeValue: state.endTimeValue,
      remindValue: state.remindValue,
      repeatValue: state.repeatValue,
    ));
    await Future.delayed(const Duration(seconds: 2));
    if (!isClosed) {
      emit(TaskCreateState.ready(
        titleValue: state.titleValue,
        deadLineValue: state.deadLineValue,
        startTimeValue: state.startTimeValue,
        endTimeValue: state.endTimeValue,
        remindValue: state.remindValue,
        repeatValue: state.repeatValue,
      ));
    }
  }

  TitleError? _validateTitle(String? title) {
    if (title == null || title.isEmpty) {
      return TitleError.empty;
    }

    return null;
  }

  DeadlineError? _validateDeadline(DateTime? dateTime) {
    if (dateTime == null) {
      return DeadlineError.empty;
    }

    if (dateTime.isBefore(DateTime.now())) {
      return DeadlineError.beforeNow;
    }

    return null;
  }

  StartEndTimeError? _validateStartEndTime(TimeOfDay? startTime, TimeOfDay? endTime) {
    if (startTime == null || endTime == null) {
      return StartEndTimeError.empty;
    }

    if (startTime.isAfter(endTime)) {
      return StartEndTimeError.endBeforeStart;
    }

    return null;
  }

  RemindError? _validateRemindValue(RemindModel? remindValue) {
    if (remindValue == null) {
      return RemindError.empty;
    }

    return null;
  }

  RepeatError? _validateRepeatValue(RepeatModel? repeatValue) {
    if (repeatValue == null) {
      return RepeatError.empty;
    }

    return null;
  }
}
