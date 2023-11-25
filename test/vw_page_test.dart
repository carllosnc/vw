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
                        title: const Text('VW Page'),
                      ),
                      context: context,
                      body: const Center(
                        child: Text('VW Page'),
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
    },
  );
}
