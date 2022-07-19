import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  bool isAfter(TimeOfDay other) {
    if (_toDouble(this) > _toDouble(other)) {
      return true;
    }

    return false;
  }

  double _toDouble(TimeOfDay myTime) => myTime.hour + myTime.minute/60.0;
}