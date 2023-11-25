import 'package:flutter/material.dart';
import './examples/vw_row_example.dart';
import './examples/vw_column_example.dart';
import './examples/vw_button_example.dart';
import './examples/vw_page_example.dart';

import 'home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const pageTransition = PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      },
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
        //set bottom sheet animation
        pageTransitionsTheme: pageTransition,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
        //set bottom sheet animation
        pageTransitionsTheme: pageTransition,
      ),
      routes: {
        '/vw_row': (context) => const VWRowExamplePage(),
        '/vw_column': (context) => const VWColumnExamplePage(),
        '/vw_button': (context) => const VWButtonExample(),
        '/vw_page': (context) => const VWPageExample(),
      },
    );
  }
}
