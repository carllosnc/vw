import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VWSelectExample extends StatelessWidget {
  const VWSelectExample({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('VWSelect'),
      ),
      body: Form(
        key: formKey,
        child: VWColumn(
          gap: 40,
          padding: const EdgeInsets.all(20),
          children: [
            VWColumn(
              children: [
                VWSelect(
                  onSelected: (dynamic value) {
                    debugPrint(value);
                  },
                  title: "Select sample",
                  titleTextStyle: const TextStyle(fontSize: 18),
                  inputDecoration: const InputDecoration(
                    labelText: 'Select',
                    suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select an option';
                    }

                    return null;
                  },
                  options: const [
                    VWSelectOption(
                      value: '1',
                      displayText: "First item",
                      listTile: ListTile(
                        title: Text('Item 1'),
                        subtitle: Text("First item description"),
                        leading: Icon(Icons.star),
                      ),
                    ),
                    VWSelectOption(
                      value: '2',
                      displayText: "Second item",
                      listTile: ListTile(
                        title: Text('Item 2'),
                        subtitle: Text("Second item description"),
                        leading: Icon(Icons.abc_rounded),
                      ),
                    ),
                    VWSelectOption(
                      value: '3',
                      displayText: "Third item",
                      listTile: ListTile(
                        title: Text('Item 3'),
                        subtitle: Text("Third item description"),
                        leading: Icon(Icons.ac_unit_sharp),
                      ),
                    ),
                    VWSelectOption(
                      value: '4',
                      displayText: "Fourth item",
                      listTile: ListTile(
                        title: Text('Item 4'),
                        subtitle: Text("Fourth item description"),
                        leading: Icon(Icons.access_time),
                      ),
                    ),
                    VWSelectOption(
                      value: '5',
                      displayText: "Fifth item",
                      listTile: ListTile(
                        title: Text('Item 5'),
                        subtitle: Text("Fifth item description"),
                        leading: Icon(Icons.adf_scanner),
                      ),
                    ),
                    VWSelectOption(
                      value: '6',
                      displayText: "Sixth item",
                      listTile: ListTile(
                        title: Text('Item 6'),
                        subtitle: Text("Sixth item description"),
                        leading: Icon(Icons.accessibility_sharp),
                      ),
                    ),
                    VWSelectOption(
                      value: '7',
                      displayText: "Seventh item",
                      listTile: ListTile(
                        title: Text('Item 7'),
                        subtitle: Text("Seventh item description"),
                        leading: Icon(Icons.account_balance_sharp),
                      ),
                    ),
                    VWSelectOption(
                      value: '8',
                      displayText: "Eighth item",
                      listTile: ListTile(
                        title: Text('Item 8'),
                        subtitle: Text("Eighth item description"),
                        leading: Icon(Icons.account_balance_wallet_outlined),
                      ),
                    ),
                    VWSelectOption(
                      value: '9',
                      displayText: "Ninth item",
                      listTile: ListTile(
                        title: Text('Item 9'),
                        subtitle: Text("Ninth item description"),
                        leading: Icon(Icons.account_box_outlined),
                      ),
                    ),
                    VWSelectOption(
                      value: '10',
                      displayText: "Tenth item",
                      listTile: ListTile(
                        title: Text('Item 10'),
                        subtitle: Text("Tenth item description"),
                        leading: Icon(Icons.account_tree_sharp),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    suffixIcon: Icon(Icons.edit),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }

                    return null;
                  },
                ),
              ],
            ),
            VWButton(
              label: "Submit",
              onTap: () {
                if (formKey.currentState!.validate()) {
                  debugPrint("Form is valid");
                } else {
                  debugPrint("Form is invalid");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
