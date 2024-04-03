import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vw/vw.dart';

void main() {
  testWidgets("Check initial render", (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: VWColumn(
              children: [
                VWReveal(
                  delay: const Duration(milliseconds: 0),
                  direction: VWRevealDirection.bottom,
                  child: VWBox(
                    borderRadius: BorderRadius.circular(20),
                    width: 300,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                VWReveal(
                  delay: const Duration(milliseconds: 300),
                  direction: VWRevealDirection.top,
                  child: VWBox(
                    borderRadius: BorderRadius.circular(20),
                    width: 300,
                    height: 100,
                    color: Colors.green,
                  ),
                ),
                VWReveal(
                  delay: const Duration(milliseconds: 600),
                  direction: VWRevealDirection.right,
                  child: VWBox(
                    borderRadius: BorderRadius.circular(20),
                    width: 300,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                VWReveal(
                  delay: const Duration(milliseconds: 900),
                  direction: VWRevealDirection.left,
                  child: VWBox(
                    borderRadius: BorderRadius.circular(20),
                    width: 300,
                    height: 100,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byKey(const Key("vw-reveal-slide")), findsWidgets);
    expect(find.byKey(const Key("vw-reveal-opacity")), findsWidgets);

    expect(VWRevealDirection.top.getOffset(), const Offset(0, -0.6));
    expect(VWRevealDirection.bottom.getOffset(), const Offset(0, 0.6));
    expect(VWRevealDirection.left.getOffset(), const Offset(-0.6, 0));
    expect(VWRevealDirection.right.getOffset(), const Offset(0.6, 0));
  });
}
