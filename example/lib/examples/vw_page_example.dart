import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VWPageExample extends StatefulWidget {
  const VWPageExample({super.key});

  @override
  State<VWPageExample> createState() => _VWPageExampleState();
}

class _VWPageExampleState extends State<VWPageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VWPageExample'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            VWPage.open(
              context: context,
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                title: const Text(
                  'VWPage',
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.favorite),
                    onPressed: () {},
                  ),
                ],
              ),
              body: Center(
                child: ListView(
                  children: [
                    ListTile(
                      title: const Text('First'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Second'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Third'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Fourth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Fifth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Sixth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Seventh'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Eighth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Ninth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Tenth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Eleventh'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Twelfth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Thirteenth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Fourteenth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Fifteenth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Sixteenth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Seventeenth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Eighteenth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Nineteenth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Twentieth'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Twenty-first'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Twenty-second'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Twenty-third'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              bottomBar: Container(
                height: 50,
                color: Colors.red,
              ),
            );
          },
          child: const Text('Open VW Page'),
        ),
      ),
    );
  }
}
