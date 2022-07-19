import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_test_app/task/state_management/model/dropdown_model.dart';

part 'repeat_model.freezed.dart';

@freezed
class RepeatModel with _$RepeatModel implements DropdownModel {
  RepeatModel._();

  factory RepeatModel.weekly() = RepeatWeekly;

  factory RepeatModel.minutly() = RepeatMinutly;

  factory RepeatModel.nanosecondly() = RepeatNanosecoundly;

  @override
  late final String stringValue = map(
    weekly: (_) => 'Weekly',
    minutly: (_) => 'Minutly',
    nanosecondly: (_) => 'Microsecondly',
  );
}
