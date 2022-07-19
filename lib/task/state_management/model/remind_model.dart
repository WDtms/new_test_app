import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_test_app/task/state_management/model/dropdown_model.dart';

part 'remind_model.freezed.dart';

@freezed
class RemindModel with _$RemindModel implements DropdownModel {
  RemindModel._();

  factory RemindModel.tenMinutesEarly() = RemindTenMinutesEarly;

  factory RemindModel.twentyMinutesEarly() = RemindTwentyMinutesEarly;

  factory RemindModel.thirtyMinutesEarly() = RemindThirdyMinutesEarly;

  @override
  late final String stringValue = map(
    tenMinutesEarly: (_) => '10 minutes early',
    twentyMinutesEarly: (_) => '20 minutes early',
    thirtyMinutesEarly: (_) => '30 minutes early',
  );
}
