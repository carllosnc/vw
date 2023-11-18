import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vw/vw.dart';

void main() {
  testWidgets("Check initial render", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWRow(
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    expect(find.byKey(const Key("vw-row-container")), findsOneWidget);
    expect(find.byKey(const Key("vw-row-content")), findsOneWidget);
    expect(find.text('first'), findsOneWidget);
    expect(find.text('second'), findsOneWidget);
    expect(find.text('third'), findsOneWidget);
  });

  testWidgets("Check gap property", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWRow(
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

    expect(find.byKey(const Key("vw-row-gap-0")), findsOneWidget);
    expect(find.byKey(const Key("vw-row-gap-1")), findsOneWidget);
    expect(find.byKey(const Key("vw-row-gap-2")), findsOneWidget);
    expect(find.byKey(const Key("vw-row-gap-3")), findsOneWidget);
  });

  testWidgets("Check expandItems property", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWRow(
            expandItems: true,
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    expect(find.byKey(const Key("vw-row-expanded-0")), findsOneWidget);
    expect(find.byKey(const Key("vw-row-expanded-1")), findsOneWidget);
    expect(find.byKey(const Key("vw-row-expanded-2")), findsOneWidget);
  });

  testWidgets("Check scrollable property", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWRow(
            scrollable: true,
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    expect(find.byKey(const Key("vw-row-scroll-container")), findsOneWidget);
    expect(find.byKey(const Key("vw-row-scroll-view")), findsOneWidget);
    expect(find.byKey(const Key("vw-row-scroll-content")), findsOneWidget);

    expect(find.byKey(const Key("vw-row-container")), findsNothing);
    expect(find.byKey(const Key("vw-row-content")), findsNothing);
  });

  testWidgets("Check exception if scrollable and expandItems are true", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWRow(
            scrollable: true,
            expandItems: true,
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    expect(tester.takeException(), isInstanceOf<Exception>());
  });

  testWidgets("Check margin and padding", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWRow(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    final Container container = tester.firstWidget(find.byKey(const Key("vw-row-container")));

    expect(container.margin, const EdgeInsets.all(10));
    expect(container.padding, const EdgeInsets.all(10));
  });

  testWidgets("Check margin and padding when scrollable is true", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWRow(
            scrollable: true,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    final Container container = tester.firstWidget(
      find.byKey(const Key("vw-row-scroll-container")),
    );

    final SingleChildScrollView scrollView = tester.firstWidget(
      find.byKey(const Key("vw-row-scroll-view")),
    );

    expect(container.margin, const EdgeInsets.all(10));
    expect(scrollView.padding, const EdgeInsets.all(10));
  });

  testWidgets("Check reverseScroll, physics, controller", (WidgetTester tester) async {
    final ScrollController controller = ScrollController();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWRow(
            scrollable: true,
            reverseScroll: true,
            physics: const BouncingScrollPhysics(),
            controller: controller,
            children: const [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    final SingleChildScrollView scrollView = tester.firstWidget(
      find.byKey(const Key("vw-row-scroll-view")),
    );

    expect(scrollView.reverse, true);
    expect(scrollView.physics, const BouncingScrollPhysics());
    expect(scrollView.controller, controller);
  });

  testWidgets("Check horizontalAlignment and verticalAlignment", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWRow(
            horizontalAlignment: MainAxisAlignment.center,
            verticalAlignment: CrossAxisAlignment.center,
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    final Row row = tester.firstWidget(find.byKey(const Key("vw-row-content")));

    expect(row.mainAxisAlignment, MainAxisAlignment.center);
    expect(row.crossAxisAlignment, CrossAxisAlignment.center);
  });

  testWidgets("Check horizontalAlignment and verticalAlignment when scrollable is true", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWRow(
            scrollable: true,
            horizontalAlignment: MainAxisAlignment.center,
            verticalAlignment: CrossAxisAlignment.center,
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    final Row row = tester.firstWidget(find.byKey(const Key("vw-row-scroll-content")));

    expect(row.mainAxisAlignment, MainAxisAlignment.center);
    expect(row.crossAxisAlignment, CrossAxisAlignment.center);
  });

  testWidgets("Check exception if controller is used when scrollable is false", (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWRow(
            controller: ScrollController(),
            children: const [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    expect(tester.takeException(), isInstanceOf<Exception>());
  });

  testWidgets("Check exception if reverseScroll is used when scrollable is false", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWRow(
            reverseScroll: true,
            children: [
              Text('first'),
              Text('second'),
              Text('third'),
            ],
          ),
        ),
      ),
    );

    expect(tester.takeException(), isInstanceOf<Exception>());
  });
}
