import 'package:flutter/material.dart';

class InputDefaultStyleWrapper extends StatelessWidget {
  final Widget child;

  const InputDefaultStyleWrapper({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.only(left: 12.0, right: 8.0),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 41, 91, 0.06),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: child,
    );
  }
}
