import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VWButtonExample extends StatefulWidget {
  const VWButtonExample({super.key});

  @override
  State<VWButtonExample> createState() => _VWButtonExampleState();
}

class _VWButtonExampleState extends State<VWButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VW Buttons'),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: VWButton(
          label: "Button",
        ),
      ),
      body: SingleChildScrollView(
        child: VWColumn(
          padding: const EdgeInsets.all(10),
          gap: 10,
          children: [
            const VWRow(
              gap: 10,
              children: [
                VWButton(
                  label: "Default button",
                ),
              ],
            ),

            const VWRow(
              gap: 10,
              children: [
                VWButton(
                  label: "Red",
                  color: Colors.red,
                ),
                VWButton(
                  label: "Green",
                  color: Colors.green,
                ),
                VWButton(
                  label: "Blue",
                  color: Colors.blue,
                ),
              ],
            ),
            const VWRow(
              gap: 10,
              children: [
                VWButton(
                  label: "Full width",
                  color: Colors.red,
                ),
              ],
            ),
            VWRow(
              gap: 10,
              children: [
                VWButton(
                  label: "Light button",
                  color: Colors.grey.shade300,
                  splashColor: Colors.black,
                ),
              ],
            ),
            //dark button
            VWRow(
              gap: 10,
              children: [
                VWButton(
                  label: "Dark button",
                  color: Colors.grey.shade800,
                ),
              ],
            ),
            const VWRow(
              gap: 10,
              children: [
                VWButton(
                  label: "Full width",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.yellow,
                    ],
                  ),
                ),
              ],
            ),
            const VWRow(
              gap: 10,
              children: [
                VWButton(
                  label: "Loading",
                  isLoading: true,
                ),
                VWButton(
                  label: "",
                  isLoading: true,
                ),
              ],
            ),
            const VWRow(
              gap: 10,
              children: [
                VWButton(
                  label: "Left icon",
                  loadingLabel: "Loading",
                  leftIcon: Icons.favorite,
                ),
                VWButton(
                  label: "Right icon",
                  loadingLabel: "Loading",
                  rightIcon: Icons.favorite,
                ),
              ],
            ),
            const VWRow(
              gap: 10,
              children: [
                VWButton(
                  label: "Right icon",
                  loadingLabel: "Loading",
                  rightIcon: Icons.favorite,
                  leftIcon: Icons.favorite,
                ),
              ],
            ),
            VWRow(
              gap: 10,
              children: [
                VWButton(
                  label: "Gradient",
                  loadingLabel: "Outlined button",
                  color: Colors.white,
                  splashColor: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ],
            ),

            const VWRow(
              gap: 10,
              children: [
                VWButton(
                  label: "Gradient",
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ],
            ),

            VWRow(
              gap: 10,
              verticalAlignment: CrossAxisAlignment.center,
              children: [
                VWButton(
                  onTap: () => debugPrint("Button tapped!"),
                  label: "On tap",
                ),
              ],
            ),

            VWRow(
              gap: 10,
              verticalAlignment: CrossAxisAlignment.center,
              children: [
                VWButton(
                  onDoubleTap: () => debugPrint("Button double tapped!"),
                  label: "Align left",
                  horizontalAlignment: MainAxisAlignment.start,
                ),
                VWButton(
                  onDoubleTap: () => debugPrint("Button double tapped!"),
                  label: "Align left",
                  horizontalAlignment: MainAxisAlignment.end,
                ),
              ],
            ),

            VWRow(
              gap: 10,
              verticalAlignment: CrossAxisAlignment.center,
              children: [
                VWButton(
                  onDoubleTap: () => debugPrint("Button double tapped!"),
                  label: "Align left",
                  leftIcon: Icons.favorite,
                  horizontalAlignment: MainAxisAlignment.spaceBetween,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
