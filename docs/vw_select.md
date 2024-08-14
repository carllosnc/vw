# VWSelect

Select option widget based on bottom sheet.

| Property              | Type                             | Description                                                             |
|-----------------------|----------------------------------|-------------------------------------------------------------------------|
| `inputDecoration`     | InputDecoration?                 | The decoration to show around the dropdown button.                      |
| `options`             | List<VWSelectOption>             | The list of options to display in the dropdown menu.                    |
| `onSelected`          | Function(dynamic value)          | Called when the user selects an option.                                 |
| `title`               | String                           | The title of the dropdown button.                                       |
| `titleTextStyle`      | TextStyle?                       | The style to use for the title text.                                    |
| `headerBoxDecoration` | BoxDecoration?                   | The decoration to show around the header of the dropdown menu.          |
| `validator`           | String? Function(String? value)? | Called when the user submits the form.                                  |
| `borderRadius`        | Double                           | The border radius of top right and top left corner of the bottom sheet. |

## VWSelectOption

A class that represents an option in the dropdown menu.

| Property      | Type     | Description                                                             |
|---------------|----------|-------------------------------------------------------------------------|
| `value`       | dynamic  | The value of the option.                                                |
| `listTile`    | ListTile | The ListTile to display in the dropdown menu.                           |
| `displayText` | String   | The text to display in the dropdown button when the option is selected. |

**Usage:**

```dart
VWSelect(
  inputDecoration: InputDecoration(
    labelText: 'Select an option',
  ),
  options: [
    VWSelectOption(
      value: 'Option 1',
      listTile: ListTile(
        title: Text('Option 1'),
      ),
      displayText: 'Option 1',
    ),
    VWSelectOption(
      value: 'Option 2',
      listTile: ListTile(
        title: Text('Option 2'),
      ),
      displayText: 'Option 2',
    ),
  ],
  onSelected: (value) {
    print('The selected option is: $value');
  },
  title: 'Select an option',
  titleTextStyle: TextStyle(
    color: Colors.blue,
    fontSize: 16,
  ),
  headerBoxDecoration: BoxDecoration(
    color: Colors.grey[200],
  ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please select an option.';
    }
    return null;
  },
);
```