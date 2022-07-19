import 'package:flutter/material.dart';

const taskCheckBoxSize = 25.0;

class TaskCheckbox extends StatelessWidget {
  final bool isCompleted;
  final Color color;

  const TaskCheckbox({required this.color, required this.isCompleted, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: taskCheckBoxSize,
        width: taskCheckBoxSize,
        decoration: BoxDecoration(
          color: isCompleted ? color : Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(width: 2.0, color: color),
        ),
        child: isCompleted ? const Center(
          child: Icon(Icons.check, color: Colors.white, size: 15.0,),
        ) : null,
      ),
    );
  }
}
