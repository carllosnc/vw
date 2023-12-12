import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vw/vw.dart';

void main() {
  testWidgets('Check initial render', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWSelect(
            onSelected: (dynamic value) {
              debugPrint(value);
            },
            options: const [
              VWSelectOption(
                value: '1',
                listTile: ListTile(
                  title: Text('Item 1'),
                  subtitle: Text("This is the description"),
                  leading: Icon(Icons.star),
                ),
                displayText: "First item",
              ),
              VWSelectOption(
                value: '2',
                listTile: ListTile(
                  title: Text('Item 2'),
                  subtitle: Text("This is the description"),
                  leading: Icon(Icons.star),
                ),
                displayText: "First item",
              ),
              VWSelectOption(
                value: '3',
                listTile: ListTile(
                  title: Text('Item 3'),
                  subtitle: Text("This is the description"),
                  leading: Icon(Icons.star),
                ),
                displayText: "First item",
              ),
            ],
          ),
        ),
      ),
    );

    expect(find.byKey(const Key("vw_select_textfield")), findsOneWidget);
    expect(find.byKey(const Key("vw_select_modal")), findsNothing);

    //tap

    await tester.tap(find.byKey(const Key("vw_select_textfield")));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key("vw_select_modal")), findsOneWidget);
    expect(find.byKey(const Key("vw_select_modal_option_0")), findsOneWidget);
    expect(find.byKey(const Key("vw_select_modal_option_1")), findsOneWidget);
    expect(find.byKey(const Key("vw_select_modal_option_2")), findsOneWidget);
  });
}
