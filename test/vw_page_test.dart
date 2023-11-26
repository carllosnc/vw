import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vw/vw.dart';

void main() {
  testWidgets(
    'vw page ...',
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
}
