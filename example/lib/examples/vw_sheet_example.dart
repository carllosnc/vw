import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VWSheetExample extends StatefulWidget {
  const VWSheetExample({super.key});

  @override
  State<VWSheetExample> createState() => _VWSheetExampleState();
}

class _VWSheetExampleState extends State<VWSheetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VWSheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              child: const Text('Open first page'),
              onPressed: () {
                VWSheet.open(
                  level: 1,
                  context: context,
                  appBar: AppBar(
                    title: const Text('First page'),
                  ),
                  body: Center(
                    child: FilledButton(
                      child: const Text('open second page'),
                      onPressed: () {
                        VWSheet.open(
                          level: 2,
                          context: context,
                          appBar: AppBar(
                            title: const Text('Second page'),
                          ),
                          body: Center(
                            child: FilledButton(
                              child: const Text('open third page'),
                              onPressed: () {
                                VWSheet.open(
                                  level: 3,
                                  context: context,
                                  appBar: AppBar(
                                    title: const Text('Third page'),
                                  ),
                                  body: Center(
                                    child: FilledButton(
                                      child: const Text('open fourth page'),
                                      onPressed: () {
                                        VWSheet.open(
                                          level: 4,
                                          context: context,
                                          appBar: AppBar(
                                            title: const Text('Fourth page'),
                                          ),
                                          body: Center(
                                            child: FilledButton(
                                              child: const Text('open fifth page'),
                                              onPressed: () {
                                                VWSheet.open(
                                                  level: 5,
                                                  context: context,
                                                  appBar: AppBar(
                                                    title: const Text('Fifth page'),
                                                  ),
                                                  body: const Center(
                                                    child: Text('End'),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
            FilledButton(
              onPressed: () {
                VWSheet.open(
                  borderRadius: 28,
                  context: context,
                  appBar: AppBar(
                    leading: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    title: const Text(
                      'VWSheet',
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
              child: const Text('Open VW Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
