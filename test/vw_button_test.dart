import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vw/vw.dart';

void main() {
  testWidgets('Check initial render', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWColumn(
            children: [
              VWButton(
                label: 'Button',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );

    expect(find.byKey(const Key('vw_button_expanded')), findsOneWidget);
    expect(find.byKey(const Key('vw_button_label')), findsOneWidget);
    expect(find.byKey(const Key('vw_button_container')), findsOneWidget);
    expect(find.byKey(const Key('vw_button_material')), findsOneWidget);
    expect(find.byKey(const Key('vw_button_inkwell')), findsOneWidget);
    expect(find.byKey(const Key('vw_button_sub-container')), findsOneWidget);

    var expanded = tester.firstWidget(find.byKey(const Key('vw_button_expanded'))) as Expanded;
    expect(expanded.flex, 0);
  });

  testWidgets('Check fullwidth property', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWColumn(
            children: [
              VWButton(
                label: 'Button',
                onTap: () {},
                fullWidth: true,
              )
            ],
          ),
        ),
      ),
    );

    var expanded = tester.firstWidget(find.byKey(const Key('vw_button_expanded'))) as Expanded;
    expect(expanded.flex, 1);
  });

  testWidgets('Check color property', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWColumn(
            children: [
              VWButton(
                label: 'Button',
                onTap: () {},
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );

    var container = tester.firstWidget(find.byKey(const Key('vw_button_container'))) as Container;

    var decoration = const BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.all(Radius.circular(100)),
      gradient: null,
      border: null,
    );

    expect(container.decoration, decoration);
  });

  testWidgets('Check gradient property', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWColumn(
            children: [
              VWButton(
                label: 'Button',
                onTap: () {},
                gradient: const LinearGradient(
                  colors: [Colors.red, Colors.blue],
                ),
              )
            ],
          ),
        ),
      ),
    );

    BuildContext context = tester.element(find.byKey(const Key('vw_button_container')));

    var container = tester.firstWidget(find.byKey(const Key('vw_button_container'))) as Container;

    var decoration = BoxDecoration(
      color: Theme.of(context).colorScheme.primary,
      borderRadius: const BorderRadius.all(Radius.circular(100)),
      gradient: const LinearGradient(
        colors: [Colors.red, Colors.blue],
      ),
      border: null,
    );

    expect(container.decoration, decoration);
  });

  testWidgets('Check splashColor property', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWColumn(
            children: [
              VWButton(
                label: 'Button',
                onTap: () {},
                splashColor: Colors.red,
              )
            ],
          ),
        ),
      ),
    );

    var inkWell = tester.firstWidget(find.byKey(const Key('vw_button_inkwell'))) as InkWell;

    expect(inkWell.splashColor, Colors.red.withOpacity(0.1));
  });

  testWidgets('Check leftIcon property', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWColumn(
            children: [
              VWButton(
                label: 'Button',
                onTap: () {},
                leftIcon: Icons.favorite,
                rightIcon: Icons.favorite,
              )
            ],
          ),
        ),
      ),
    );

    expect(find.byKey(const Key('vw_button_left_icon')), findsOneWidget);
    expect(find.byKey(const Key('vw_button_right_icon')), findsOneWidget);
  });

  testWidgets('Check onTap event', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWColumn(
            children: [
              VWButton(
                label: 'Button',
                onTap: () {},
                onDoubleTap: () {},
                onLongPress: () {},
              )
            ],
          ),
        ),
      ),
    );

    var button = tester.firstWidget(find.byKey(const Key('vw_button_inkwell'))) as InkWell;

    expect(button.onTap, isNotNull);
    expect(button.onDoubleTap, isNotNull);
    expect(button.onLongPress, isNotNull);
  });

  testWidgets('Check border and border radius', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWColumn(
            children: [
              VWButton(
                label: 'Button',
                onTap: () {},
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );

    var container = tester.firstWidget(find.byKey(const Key('vw_button_container'))) as Container;

    var decoration = BoxDecoration(
      color: Theme.of(tester.element(find.byKey(const Key('vw_button_container')))).colorScheme.primary,
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
      gradient: null,
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
    );

    expect(container.decoration, decoration);
  });
}
