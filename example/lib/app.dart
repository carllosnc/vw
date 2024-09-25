import 'package:flutter/material.dart';
import './examples/vw_row_example.dart';
import './examples/vw_column_example.dart';
import './examples/vw_button_example.dart';
import './examples/vw_sheet_example.dart';
import './examples/vw_timepicker_example.dart';
import './examples/vw_select_example.dart';
import './examples/vw_modal_example.dart';
import './examples/vw_box_example.dart';
import './examples/vw_reveal_example.dart';
import './examples/vw_text_example.dart';
import './examples/vw_if_example.dart';
import './examples/vw_screen_size_extension_example.dart';
import './examples/vw_text_extension_example.dart';

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
        pageTransitionsTheme: pageTransition,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
        pageTransitionsTheme: pageTransition,
      ),
      routes: {
        '/vw_row': (context) => const VWRowExamplePage(),
        '/vw_column': (context) => const VWColumnExamplePage(),
        '/vw_button': (context) => const VWButtonExample(),
        '/vw_page': (context) => const VWSheetExample(),
        '/vw_timepicker': (context) => const VWTimepickerExample(),
        '/vw_select': (context) => const VWSelectExample(),
        '/vw_modal': (context) => const VWModalExample(),
        '/vw_box': (context) => const VWBoxExample(),
        '/vw_reveal': (context) => const VWRevealExample(),
        '/vw_text': (context) => const VWTextExample(),
        '/vw_if': (context) => const VWIfExample(),
        '/vw_screen_size_extension': (context) => const VWScreenSizeExtensionExample(),
        '/vw_text_extension': (context) => const VWTextExtensionExample(),
      },
    );
  }
}
