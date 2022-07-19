import 'package:flutter/material.dart';
import 'package:new_test_app/common/view/input_default_style_wrapper.dart';
import 'package:new_test_app/common/view/model/text_styles.dart';
import 'package:new_test_app/task/state_management/model/dropdown_model.dart';

class DropdownButtonWidget<T extends DropdownModel> extends StatelessWidget {
  final String hintText;
  final List<T> dropdownItemList;
  final T? dropdownValue;
  final Function(T? newVal) onValSelected;

  const DropdownButtonWidget({
    required this.hintText,
    required this.dropdownValue,
    required this.dropdownItemList,
    required this.onValSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputDefaultStyleWrapper(
      child: DropdownButton(
        onChanged: onValSelected,
        isExpanded: true,
        hint: dropdownValue == null
            ? Text(
                hintText,
                style: TextStyles.inputHintTextStyle,
              )
            : Text(dropdownValue!.stringValue),
        underline: const SizedBox.shrink(),
        items: dropdownItemList
            .map((it) => DropdownMenuItem(
                  value: it,
                  child: Text(it.stringValue),
                ))
            .toList(),
      ),
    );
  }
}
