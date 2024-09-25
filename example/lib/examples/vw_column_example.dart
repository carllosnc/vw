import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VWColumnExamplePage extends StatelessWidget {
  const VWColumnExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VWComponents'),
      ),
      body: SingleChildScrollView(
        child: VWColumn(
          gap: 20,
          horizontalAlignment: CrossAxisAlignment.end,
          verticalAlignment: MainAxisAlignment.start,
          padding: const EdgeInsets.all(20),
          children: [
            Container(
              height: 50,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 50,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 50,
              width: 300,
              color: Colors.red,
            ),
            Container(
              height: 50,
              color: Colors.red,
            ),
            VWColumn(
              gap: 1,
              horizontalAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.red,
                  width: double.infinity,
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.',
                  ),
                ),
                Container(
                  width: 250,
                  color: Colors.red,
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.',
                  ),
                ),
                Container(
                  width: 300,
                  color: Colors.red,
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
