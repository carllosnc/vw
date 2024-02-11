import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vw/vw.dart';

void main() {
  testWidgets('Check initial render', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(builder: (context) {
            return Center(
              child: FilledButton(
                onPressed: () {
                  VWModal.open(
                    context: context,
                    body: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: FilledButton(
                          onPressed: () {
                            VWModal.close(context);
                          },
                          child: const Text('Close'),
                        ),
                      ),
                    ),
                  );
                },
                child: const Text('Button'),
              ),
            );
          }),
        ),
      ),
    );

    await tester.tap(find.text('Button'));
    await tester.pumpAndSettle();

    expect(find.text('Close'), findsOneWidget);

    await tester.tap(find.text('Close'));
    await tester.pumpAndSettle();

    expect(find.text('Close'), findsNothing);
  });
}
