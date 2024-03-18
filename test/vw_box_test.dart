import 'dart:ui';

import 'package:vw/vw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Check initial render", (widgetTester) async {
    await widgetTester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWBox(
            child: Text('Hello World'),
          ),
        ),
      ),
    );

    expect(find.byKey(const Key('vw-box-container')), findsOneWidget);
    expect(find.byKey(const Key('vw-box-subcontainer')), findsOneWidget);
    expect(find.byKey(const Key('vw-box-backdrop_filter')), findsOneWidget);
    expect(find.byKey(const Key('vw-box-material')), findsOneWidget);
    expect(find.byKey(const Key('vw-box-inkwell')), findsOneWidget);
    expect(find.byKey(const Key('vw-box-content')), findsOneWidget);
    expect(find.text('Hello World'), findsOneWidget);
  });

  testWidgets("Check boxy content", (widgetTester) async {
    await widgetTester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWBox(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black, width: 2),
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(10),
          ),
        ),
      ),
    );

    final container = widgetTester.firstWidget(find.byKey(const Key('vw-box-content'))) as Container;

    expect(
      container.decoration,
      BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
    );

    //constraints
    expect(
      container.constraints,
      const BoxConstraints.tightFor(width: 100, height: 100),
    );

    //padding
    expect(container.padding, const EdgeInsets.all(10));
  });

  testWidgets("Check boxy inkwell", (widgetTester) async {
    var tapCount = 0;
    var doubleTapCount = 0;
    var longPressCount = 0;

    await widgetTester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: VWBox(
            onTap: () {
              tapCount++;
            },
            onDoubleTap: () {
              doubleTapCount++;
            },
            onLongPress: () {
              longPressCount++;
            },
          ),
        ),
      ),
    );

    final inkwell = widgetTester.firstWidget(find.byKey(const Key('vw-box-inkwell'))) as InkWell;

    //onTap
    inkwell.onTap!();
    expect(tapCount, 1);

    //onDoubleTap
    inkwell.onDoubleTap!();
    expect(doubleTapCount, 1);

    //onLongPress
    inkwell.onLongPress!();
    expect(longPressCount, 1);
  });

  testWidgets("Check boxy material", (widgetTester) async {
    await widgetTester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWBox(
            color: Colors.red,
          ),
        ),
      ),
    );

    final material = widgetTester.firstWidget(
      find.byKey(const Key('vw-box-material')),
    ) as Material;

    expect(material.color, Colors.red);
  });

  testWidgets("Check boxy backdrop filter", (widgetTester) async {
    await widgetTester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWBox(
            blurEffect: 10,
          ),
        ),
      ),
    );

    final backdropFilter = widgetTester.firstWidget(
      find.byKey(const Key('vw-box-backdrop_filter')),
    ) as BackdropFilter;

    expect(
      backdropFilter.filter,
      ImageFilter.blur(
        sigmaX: 10,
        sigmaY: 10,
      ),
    );
  });

  testWidgets("Check boxy subcontainer", (widgetTester) async {
    await widgetTester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWBox(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.blue],
            ),
          ),
        ),
      ),
    );

    final subcontainer = widgetTester.firstWidget(
      find.byKey(const Key('vw-box-subcontainer')),
    ) as Container;

    expect(
      subcontainer.decoration,
      const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.blue],
        ),
      ),
    );
  });

  testWidgets("Check boxy container", (widgetTester) async {
    await widgetTester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: VWBox(
            backgroundImage: AssetImage('./assets/image.jpg'),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                spreadRadius: 10,
              ),
            ],
          ),
        ),
      ),
    );

    final container = widgetTester.firstWidget(
      find.byKey(const Key('vw-box-container')),
    ) as Container;

    expect(
      container.decoration,
      const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('./assets/image.jpg'),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10,
            spreadRadius: 10,
          ),
        ],
      ),
    );
  });
}
