import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VWIfExample extends StatelessWidget {
  const VWIfExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VWIf'),
      ),
      body: const Center(
        child: VWColumn(
          gap: 20,
          verticalAlignment: MainAxisAlignment.center,
          children: [
            VWIf(
              condition: true,
              ifTrue: Text(
                'This is my first condition',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ifFalse: Text(
                'This is my second condition',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            VWIf(
              condition: false,
              ifTrue: Text(
                'This is my first condition',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ifFalse: Text(
                'This is my second condition',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            VWIf(
              condition: false,
              ifTrue: Text(
                'This is my first condition',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ifFalse: Text(
                'This is my second condition',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
