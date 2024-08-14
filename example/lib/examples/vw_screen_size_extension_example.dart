import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VwScreenSizeExtensionExample extends StatelessWidget {
  const VwScreenSizeExtensionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.breakPoint({
        1200: Colors.red.shade200,
        1000: Colors.blue.shade200,
        800: Colors.pink.shade200,
        600: Colors.yellow.shade200,
        400: Colors.purple.shade200,
        0: Colors.grey.shade200,
      }),
      appBar: AppBar(
        title: const Text('VWScreenSizeExtension'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: context.screenWidth(),
          child: VWColumn(
            children: [
              VWColumn(
                padding: const EdgeInsets.all(20),
                horizontalAlignment: CrossAxisAlignment.start,
                verticalAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Screen Width: ${context.screenWidth().toStringAsFixed(2)}',
                  ),
                  Text(
                    'Screen Height: ${context.screenHeight().toStringAsFixed(2)}',
                  ),
                  Text(
                    'Screen Width: ${MediaQuery.of(context).size.width.toStringAsFixed(2)}',
                  ),
                ],
              ),
              VWRow(
                children: [
                  Container(
                    width: context.screenWidth(size: 0.5),
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: context.screenWidth(size: 0.25),
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    width: context.screenWidth(size: 0.25),
                    height: 100,
                    color: Colors.black,
                  ),
                ],
              ),
              VWRow(
                children: [
                  Container(
                    width: context.screenWidth(size: 0.25),
                    height: context.screenHeight(size: 0.4),
                    color: Colors.green.shade200,
                  ),
                  Container(
                    width: context.screenWidth(size: 0.25),
                    height: context.screenHeight(size: 0.3),
                    color: Colors.green.shade400,
                  ),
                  Container(
                    width: context.screenWidth(size: 0.25),
                    height: context.screenHeight(size: 0.2),
                    color: Colors.green.shade500,
                  ),
                  Container(
                    width: context.screenWidth(size: 0.25),
                    height: context.screenHeight(size: 0.1),
                    color: Colors.green.shade600,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Box constraints",
                ),
              ),
              Container(
                width: context.screenWidth(size: 1),
                height: 200,
                padding: const EdgeInsets.all(20),
                color: Colors.green.shade600,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return VWRow(
                      horizontalAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.black,
                          width: constraints.boxWidth(size: 0.5, offset: 10),
                          height: constraints.boxHeight(),
                        ),
                        Container(
                          color: Colors.yellow,
                          width: constraints.boxWidth(size: 0.5, offset: 10),
                          height: constraints.boxHeight(),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
