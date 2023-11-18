import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vw/vw_column.dart';

void main() {
  testWidgets('Check initial render', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWColumn(
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    expect(find.byKey(const Key('vw-column-container')), findsOneWidget);
    expect(find.byKey(const Key('vw-column-content')), findsOneWidget);
    expect(find.text('first'), findsOneWidget);
    expect(find.text('second'), findsOneWidget);
    expect(find.text('third'), findsOneWidget);
  });

  testWidgets('Check gap property', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWColumn(
            gap: 10,
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
              Text('fourth'),
              Text('fifth'),
            ],
          ),
        ),
      ),
    );

    expect(find.byKey(const Key('vw-column-gap-0')), findsOneWidget);
    expect(find.byKey(const Key('vw-column-gap-1')), findsOneWidget);
    expect(find.byKey(const Key('vw-column-gap-2')), findsOneWidget);
    expect(find.byKey(const Key('vw-column-gap-3')), findsOneWidget);
  });

  testWidgets('Check alignment', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWColumn(
            horizontalAlignment: CrossAxisAlignment.center,
            verticalAlignment: MainAxisAlignment.center,
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    final Column column = tester.firstWidget(find.byKey(const Key('vw-column-content')));
    expect(column.mainAxisAlignment, MainAxisAlignment.center);
    expect(column.crossAxisAlignment, CrossAxisAlignment.center);
  });

  testWidgets('Check padding', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWColumn(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    final Container container = tester.firstWidget(find.byKey(const Key('vw-column-container')));
    expect(container.padding, const EdgeInsets.all(10));
    expect(container.margin, const EdgeInsets.all(10));
  });
}
