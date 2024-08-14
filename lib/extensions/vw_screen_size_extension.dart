import 'package:flutter/cupertino.dart';

extension ScreenSizeExtension on BuildContext {
  double screenWidth({
    double size = 1,
    double offset = 0,
  }) {
    double screenSize = MediaQuery.of(this).size.width;
    return screenSize * size - offset;
  }

  double screenHeight({
    double size = 1,
    double offset = 0,
  }) {
    double screenSize = MediaQuery.of(this).size.height;
    return screenSize * size - offset;
  }
}

extension BoxSizeExtension on BoxConstraints {
  double boxWidth({
    double size = 1,
    double offset = 0,
  }) {
    double boxSize = maxWidth;
    return (boxSize * size) - offset;
  }

  double boxHeight({
    double size = 1,
    double offset = 0,
  }) {
    double boxSize = maxHeight;
    return (boxSize * size) - offset;
  }
}

extension BreakpointExtension on BuildContext {
  dynamic breakPoint(Map<double, dynamic> items) {
    var keys = items.keys.toList();

    for (var key in keys) {
      if (key <= MediaQuery.of(this).size.width) {
        return items[key];
      }
    }
  }
}
