import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vw/vw.dart';

void main() {
  testWidgets('Check timepicker initial render', (tester) async {
    TimeOfDay? selectedTime;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWTimePicker(
            onChanged: (time) {
              selectedTime = time;
            },
          ),
        ),
      ),
    );

    expect(find.byKey(const Key('vw_timepicker_input')), findsOneWidget);

    await tester.tap(find.byKey(const Key('vw_timepicker_input')));

    await tester.pumpAndSettle();

    expect(find.text('Select time'), findsOneWidget);
    expect(find.text('Cancel'), findsOneWidget);
    expect(find.text('Ok'), findsOneWidget);

    await tester.tap(find.text('Ok'));
    await tester.pumpAndSettle();
    expect(selectedTime, isNotNull);

    final now = DateTime.now();

    expect(selectedTime!.hour, now.hour);
  });
}
