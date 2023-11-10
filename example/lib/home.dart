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
            title: const Text('VWRow'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_row');
            },
          ),
          ListTile(
            title: const Text('VWColumn'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_column');
            },
          ),
        ],
      ),
    );
  }
}
