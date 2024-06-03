import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vw/vw.dart';

void main() {
  testWidgets("Check VWIf", (widgetTester) async {
    await widgetTester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            VWIf(
              condition: true,
              ifTrue: Text('test1: true'),
              ifFalse: Text('test1: false'),
            ),
            VWIf(
              condition: false,
              ifTrue: Text('test2: true'),
              ifFalse: Text('test2: false'),
            ),
            VWIf(
              condition: true,
              ifTrue: Text('test3: true'),
            ),
            VWIf(
              condition: false,
              ifTrue: Text('test4: true'),
            ),
          ],
        ),
      ),
    ));

    expect(find.text('test1: true'), findsOneWidget);
    expect(find.text('test1: false'), findsNothing);

    expect(find.text('test2: true'), findsNothing);
    expect(find.text('test2: false'), findsOneWidget);

    expect(find.text('test3: true'), findsOneWidget);

    expect(find.text('test4: true'), findsNothing);
  });
}
