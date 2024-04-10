import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VWTextExample extends StatelessWidget {
  const VWTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    String interpolation = "Text to be interpolated";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: SingleChildScrollView(
        child: VWColumn(
          padding: const EdgeInsets.all(20),
          children: [
            VWText(
              text:
                  "lorem [<b><pc><uc>bold adding more text here!</uc></pc></b>] [<b>text and here, we will add more text</b>] dolor sit amet, [<b><ol>$interpolation</b>] consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. [<b>Ut enim ad minim veniam</b>], quis nostrud exercitation ullamco [<i>laboris nisi ut aliquip</i>] ex [<m><b>ea commodo consequat</b></m>]. Duis aute irure dolor in reprehenderit in [<u><pc>voluptate</pc></u>] velit esse cillum dolore eu [<b><pc><d>fugiat nulla pariatur</b></pc></d>]. Excepteur sint occaecat cupidatat non proident, [<m><pc>sunt in culpa qui officia deserunt</pc></m>] mollit anim id est laborum. [<d>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</d>], quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. [<pc><i><d>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum</pc></i></d>] dolore eu fugiat nulla pariatur.",
              primaryColor: Colors.red,
              markColor: const Color.fromARGB(255, 196, 228, 255),
              textStyle: const TextStyle(
                fontSize: 20,
                height: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
