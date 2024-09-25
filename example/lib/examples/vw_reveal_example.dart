import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VWRevealExample extends StatelessWidget {
  const VWRevealExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VWReveal'),
      ),
      body: Center(
        child: VWColumn(
          gap: 10,
          children: [
            VWReveal(
              delay: const Duration(milliseconds: 0),
              direction: VWRevealDirection.bottom,
              child: VWBox(
                borderRadius: BorderRadius.circular(20),
                width: 300,
                height: 100,
                color: Colors.red,
              ),
            ),
            VWReveal(
              delay: const Duration(milliseconds: 300),
              direction: VWRevealDirection.top,
              child: VWBox(
                borderRadius: BorderRadius.circular(20),
                width: 300,
                height: 100,
                color: Colors.green,
              ),
            ),
            VWReveal(
              delay: const Duration(milliseconds: 600),
              direction: VWRevealDirection.right,
              child: VWBox(
                borderRadius: BorderRadius.circular(20),
                width: 300,
                height: 100,
                color: Colors.blue,
              ),
            ),
            VWReveal(
              delay: const Duration(milliseconds: 900),
              direction: VWRevealDirection.left,
              child: VWBox(
                borderRadius: BorderRadius.circular(20),
                width: 300,
                height: 100,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
