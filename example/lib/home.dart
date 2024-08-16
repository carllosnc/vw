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
          ListTile(
            title: const Text('VW Sheet'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_page');
            },
          ),
          ListTile(
            title: const Text('VW Timepicker'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_timepicker');
            },
          ),
          ListTile(
            title: const Text('VW Select'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_select');
            },
          ),
          ListTile(
            title: const Text('VW Modal'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_modal');
            },
          ),
          ListTile(
            title: const Text('VW Box'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_box');
            },
          ),
          ListTile(
            title: const Text('VW Reveal'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_reveal');
            },
          ),
          ListTile(
            title: const Text('VW Text'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_text');
            },
          ),
          ListTile(
            title: const Text('VW If'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_if');
            },
          ),
          ListTile(
            title: const Text('VW Screen Size Extension'),
            onTap: () {
              Navigator.pushNamed(context, '/vw_screen_size_extension');
            },
          ),
        ],
      ),
    );
  }
}
