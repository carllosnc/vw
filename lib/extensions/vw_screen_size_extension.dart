import 'package:flutter/cupertino.dart';

extension ScreenSizeExtension on BuildContext {
  ///[size] is the size of the screen width based on percentage.
  ///[offset] is the offset that will be subtracted from the scree width.
  double screenWidth({
    double size = 1,
    double offset = 0,
  }) {
    double screenSize = MediaQuery.of(this).size.width;
    return screenSize * size - offset;
  }

  ///[size] is the size of the screen height based on percentage.
  ///[offset] is the offset that will be subtracted from the screen height.
  double screenHeight({
    double size = 1,
    double offset = 0,
  }) {
    double screenSize = MediaQuery.of(this).size.height;
    return screenSize * size - offset;
  }
}

extension BoxSizeExtension on BoxConstraints {
  ///[size] is the size of the parent width based on percentage.
  ///[offset] is the offset that will be subtracted from the parent width.
  double boxWidth({
    double size = 1,
    double offset = 0,
  }) {
    double boxSize = maxWidth;
    return (boxSize * size) - offset;
  }

  ///[size] is the size of the parent height based on percentage.
  ///[offset] is the offset that will be subtracted from the parent height.
  double boxHeight({
    double size = 1,
    double offset = 0,
  }) {
    double boxSize = maxHeight;
    return (boxSize * size) - offset;
  }
}

extension BreakpointExtension on BuildContext {
  ///[breaks] is a map of breakpoints and their corresponding values.
  dynamic breakPoint(Map<double, dynamic> breaks) {
    var keys = breaks.keys.toList();

    for (var key in keys) {
      if (key <= MediaQuery.of(this).size.width) {
        return breaks[key];
      }
    }
  }
}
