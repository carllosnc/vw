import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vw/vw.dart';

void main() {
  testWidgets(
    'Check initial render',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(builder: (context) {
              return Center(
                child: FilledButton(
                  onPressed: () {
                    VWPage.open(
                      appBar: AppBar(
                        title: const Text('VW Page header'),
                      ),
                      context: context,
                      body: const Center(
                        child: Text('VW Page body'),
                      ),
                      bottomBar: Container(
                        height: 50,
                        color: Colors.red,
                        child: const Center(
                          child: Text('VW Page bottom bar'),
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

      expect(find.text('VW Page header'), findsOneWidget);
      expect(find.text('VW Page body'), findsOneWidget);
      expect(find.text('VW Page bottom bar'), findsOneWidget);
    },
  );

  //check page inside page
  testWidgets(
    'Check page inside page',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(builder: (context) {
              return FilledButton(
                child: const Text('Open first page'),
                onPressed: () {
                  VWPage.open(
                    level: 1,
                    context: context,
                    appBar: AppBar(
                      title: const Text('First page'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('first back'),
                        )
                      ],
                    ),
                    body: Center(
                      child: FilledButton(
                        child: const Text('open second page'),
                        onPressed: () {
                          VWPage.open(
                            level: 2,
                            context: context,
                            appBar: AppBar(
                              title: const Text('Second page'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('second back'),
                                )
                              ],
                            ),
                            body: const Center(
                              child: Text('End'),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              );
            }),
          ),
        ),
      );

      await tester.tap(find.text('Open first page'));
      await tester.pumpAndSettle();

      expect(find.text('First page'), findsOneWidget);
      expect(find.text('open second page'), findsOneWidget);

      await tester.tap(find.text('open second page'));
      await tester.pumpAndSettle();

      expect(find.text('Second page'), findsOneWidget);
      expect(find.text('End'), findsOneWidget);

      await tester.tap(find.text('second back'));
      await tester.pumpAndSettle();

      expect(find.text('First page'), findsOneWidget);
      expect(find.text('open second page'), findsOneWidget);

      await tester.tap(find.text('first back'));
      await tester.pumpAndSettle();

      expect(find.text('Open first page'), findsOneWidget);
    },
  );
}
