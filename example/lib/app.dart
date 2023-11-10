import 'package:flutter/material.dart';
import './examples/vw_row_example.dart';
import './examples/vw_column_example.dart';

import 'home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
      routes: {
        '/vw_row': (context) => const VWRowExamplePage(),
        '/vw_column': (context) => const VWColumnExamplePage(),
      },
    );
  }
}
