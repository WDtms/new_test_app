import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final GestureTapCallback? onTap;

  const ButtonWidget({required this.backgroundColor, required this.title, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return backgroundColor.withOpacity(0.5);
        }
        return backgroundColor;
      })),
      child: SizedBox(
        height: 40.0,
        width: double.infinity,
        child: Center(child: Text(title)),
      ),
    );
  }
}
