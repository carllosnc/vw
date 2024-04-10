import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vw/vw.dart';

void main() {
  testWidgets('Check initial render', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: VWText(
              text: "[<b>bold</b>] [<i>italic</i>] [<u>underline</u>] [<m>mark</m>] [<d>deleted</d>]",
            ),
          ),
        ),
      ),
    );

    expect(find.byKey(const Key('vw_text')), findsOneWidget);
    expect(find.byKey(const Key('vw_text')), findsNWidgets(1));
  });
}
