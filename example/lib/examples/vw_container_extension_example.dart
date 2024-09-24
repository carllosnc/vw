import 'package:flutter/material.dart';

class VWContainerExtensionExample extends StatelessWidget {
  const VWContainerExtensionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
