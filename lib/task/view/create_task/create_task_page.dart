import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:new_test_app/common/view/app_bar_widget.dart';
import 'package:new_test_app/common/view/button_widget.dart';
import 'package:new_test_app/common/view/model/sizes.dart';
import 'package:new_test_app/task/state_management/model/models.dart';
import 'package:new_test_app/task/state_management/task_create/task_create_cubit.dart';
import 'package:new_test_app/task/view/create_task/button_input_widget.dart';
import 'package:new_test_app/task/view/create_task/dropdown_button_widget.dart';
import 'package:new_test_app/task/view/create_task/text_input_widget.dart';

class CreateTaskPage extends StatefulWidget {
  const CreateTaskPage({Key? key}) : super(key: key);

  @override
  State<CreateTaskPage> createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBarWidget(
          prefixWidget: GestureDetector(
            onTap: () => context.pop(),
            child: const Icon(
              Icons.arrow_back_ios_sharp,
              size: 16,
            ),
          ),
          title: 'Add Task',
        ),
        body: BlocConsumer<TaskCreateCubit, TaskCreateState>(
          listener: (context, state) {
            if (state is TaskCreateError) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Error, gde-to cho-to nepravilno zapolneno'),
                ),
              );
            }
          },
          builder: (context, state) => Stack(
            children: [
              ListView(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.pageHorizontalPadding),
                children: [
                  _buildInputWithTitle(
                    'Title',
                    TextInputWidget(
                      value: state.titleValue,
                      helperText: 'Design team meeting',
                      onFormSubmitted: (newVal) => context.read<TaskCreateCubit>().title = newVal,
                    ),
                  ),
                  _buildInputWithTitle(
                    'Deadline',
                    ButtonInputWidget(
                      onTap: () async => context.read<TaskCreateCubit>().deadLine = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2024),
                      ),
                      hintText: '2021-02-28',
                      value: _getFormattedDateTime(state.deadLineValue),
                    ),
                  ),
                  _buildRowWithStartEnd(context, state.startTimeValue, state.endTimeValue),
                  _buildInputWithTitle(
                    'Remind',
                    DropdownButtonWidget(
                      onValSelected: (RemindModel? val) => context.read<TaskCreateCubit>().remind = val,
                      hintText: '10 minutes early',
                      dropdownValue: state.remindValue,
                      dropdownItemList: [
                        RemindModel.tenMinutesEarly(),
                        RemindModel.twentyMinutesEarly(),
                        RemindModel.thirtyMinutesEarly(),
                      ],
                    ),
                  ),
                  _buildInputWithTitle(
                    'Repeat',
                    DropdownButtonWidget(
                      onValSelected: (RepeatModel? val) => context.read<TaskCreateCubit>().repeat = val,
                      hintText: 'Weekly',
                      dropdownValue: state.repeatValue,
                      dropdownItemList: [
                        RepeatModel.weekly(),
                        RepeatModel.minutly(),
                        RepeatModel.nanosecondly(),
                      ],
                    ),
                  ),
                ],
              ),
              _buildBottomButton(context, state),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputWithTitle(String title, Widget input) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [const SizedBox(height: 30), Text(title), const SizedBox(height: 10), input],
    );
  }

  Widget _buildRowWithStartEnd(BuildContext context, TimeOfDay? startTime, TimeOfDay? endTime) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: _buildInputWithTitle(
            'Start Time',
            ButtonInputWidget(
              hintText: '11:00 Am',
              value: _getFormattedTimeOfDay(context, startTime),
              onTap: () async => context.read<TaskCreateCubit>().startTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _buildInputWithTitle(
            'End Time',
            ButtonInputWidget(
              hintText: '14:00 Pm',
              value: _getFormattedTimeOfDay(context, endTime),
              onTap: () async => context.read<TaskCreateCubit>().endTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  String? _getFormattedTimeOfDay(BuildContext context, TimeOfDay? timeOfDay) {
    if (timeOfDay == null) {
      return null;
    }

    return timeOfDay.format(context);
  }

  String? _getFormattedDateTime(DateTime? dateTime) {
    if (dateTime == null) {
      return null;
    }

    return DateFormat('yyyy-MM-dd').format(dateTime);
  }

  Widget _buildBottomButton(BuildContext context, TaskCreateState state) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.pageHorizontalPadding),
            child: ButtonWidget(
              backgroundColor: Colors.green,
              title: 'Create a task',
              onTap: state.canCreateTask
                  ? () async {
                      bool succeed = await context.read<TaskCreateCubit>().createTask();
                      if (succeed && mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Hooray')));
                        Future.delayed(const Duration(seconds: 1), () => context.pop());
                      }
                    }
                  : null,
            )),
      ),
    );
  }
}
