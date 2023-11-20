import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VW Components'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('VW Row'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_row');
            },
          ),
          ListTile(
            title: const Text('VW Column'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_column');
            },
          ),
          ListTile(
            title: const Text('VW Button'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_button');
            },
          ),
        ],
      ),
    );
  }
}
