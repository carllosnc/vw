import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vw/vw.dart';

main() {
  testWidgets(
    'Check screen size extension provided by build context',
    (tester) async {
      late double screenWidth;
      late double screenHeight;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              screenWidth = context.screenWidth();
              screenHeight = context.screenHeight();

              return const Scaffold(
                body: Center(
                  child: Text(
                    "Check Screen size",
                  ),
                ),
              );
            },
          ),
        ),
      );

      expect(screenWidth, 800);
      expect(screenHeight, 600);
    },
  );

  testWidgets(
    "Check box size provided by BoxConstraints",
    (tester) async {
      late double boxWidth;
      late double boxHeight;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SizedBox(
              width: 500,
              height: 300,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  boxWidth = constraints.boxWidth();
                  boxHeight = constraints.boxHeight();

                  return const Text("check box size");
                },
              ),
            ),
          ),
        ),
      );

      expect(boxWidth, 500);
      expect(boxHeight, 300);
    },
  );

  testWidgets(
    "Check break point provided by BuildContext",
    (tester) async {
      late dynamic breakPoint;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                breakPoint = context.breakPoint({
                  1200: Colors.red.shade200,
                  1000: Colors.blue.shade200,
                  800: Colors.pink.shade200,
                  600: Colors.yellow.shade200,
                  400: Colors.purple.shade200,
                  0: Colors.grey.shade200,
                });

                return const Text("Check Break Point");
              },
            ),
          ),
        ),
      );

      expect(breakPoint, Colors.pink.shade200);
    },
  );
}
