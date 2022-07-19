import 'package:flutter/material.dart';
import 'package:new_test_app/common/view/input_default_style_wrapper.dart';
import 'package:new_test_app/common/view/model/text_styles.dart';

class ButtonInputWidget extends StatelessWidget {
  final String? value;
  final String hintText;
  final GestureTapCallback onTap;

  const ButtonInputWidget({
    required this.hintText,
    required this.value,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: InputDefaultStyleWrapper(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            value != null ? Text(value!,) : Text(hintText, style: TextStyles.inputHintTextStyle),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
