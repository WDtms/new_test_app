import 'package:flutter/material.dart';
import 'package:new_test_app/common/view/input_default_style_wrapper.dart';
import 'package:new_test_app/common/view/model/text_styles.dart';

class TextInputWidget extends StatefulWidget {
  final String? value;
  final String helperText;
  final ValueChanged<String>? onFormSubmitted;

  const TextInputWidget({
    required this.helperText,
    this.value,
    this.onFormSubmitted,
    Key? key,
  }) : super(key: key);

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InputDefaultStyleWrapper(
      child: TextFormField(
        onChanged: widget.onFormSubmitted,
        controller: _textEditingController,
        decoration: InputDecoration(
          hintText: widget.helperText,
          border: InputBorder.none,
          hintStyle: TextStyles.inputHintTextStyle,
        ),
      ),
    );
  }
}
