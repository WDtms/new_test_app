import 'package:flutter/material.dart';

class AppBarActionWidget extends StatelessWidget {
  final IconData iconAsset;
  final GestureTapCallback? onTap;

  const AppBarActionWidget({required this.iconAsset, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(iconAsset),
    );
  }
}
