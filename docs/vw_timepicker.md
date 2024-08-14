# VWTimePicker

A StatefulWidget that provides a customizable time picker.

| Property           | Type                         | Description                                        |
|--------------------|------------------------------|----------------------------------------------------|
| `onChanged`        | `Function(TimeOfDay)`        | Called when the user changes the time.             |
| `validator`        | `String? Function(String?)?` | Called when the user submits the form.             |
| `decoration`       | `InputDecoration?`           | The decoration to show around the text field.      |
| `orientation`      | `Orientation`                | The orientation of the time picker.                |
| `helpText`         | `String`                     | The help text to show in the time picker.          |
| `anchorPoint`      | `Offset?`                    | The anchor point to show in the time picker.       |
| `cancelText`       | `String`                     | The cancel text to show in the time picker.        |
| `confirmText`      | `String`                     | The confirm text to show in the time picker.       |
| `errorInvalidText` | `String`                     | The error invalid text to show in the time picker. |
| `style`            | `TextStyle`                  | Style to decorate textfield                        |

## Example

```dart
VWTimePicker(
  onChanged: (TimeOfDay time) {
    print('The time has been changed to: $time');
  },
  validator: (String? time) {
    if (time == null || time.isEmpty) {
      return 'Please enter a time.';
    }
    return null;
  },
  decoration: InputDecoration(
    labelText: 'Enter time',
  ),
  orientation: Orientation.portrait,
  helpText: 'Select time',
  anchorPoint: Offset(0.5, 0.5),
  cancelText: 'Cancel',
  confirmText: 'Confirm',
  errorInvalidText: 'Invalid time',
);
```
