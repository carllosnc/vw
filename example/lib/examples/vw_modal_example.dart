import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VWModalExample extends StatelessWidget {
  const VWModalExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VWDialog Example'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            VWModal.open(
              context: context,
              body: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: FilledButton(
                    onPressed: () {
                      VWModal.close(context);
                    },
                    child: const Text('Close'),
                  ),
                ),
              ),
            );
          },
          child: const Text('Open Dialog'),
        ),
      ),
    );
  }
}
