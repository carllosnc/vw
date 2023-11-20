# VWButton

`VWButton` is a custom widget that extends the StatefulWidget. It allows you to create a button with additional features.

## Parameters

- `fullWidth`: A boolean value that determines whether the button should take up the full width of the parent widget.
- `label`: The text that is displayed on the button.
- `color`: The background color of the button. Default is null, which means the button will use the default color.
- `gradient`: The gradient of the button. Default is null, which means the button will not have a gradient.
- `splashColor`: The splash color of the button.
- `labelStyle`: The style of the label text. Default is null, which means the label will use the default text style.
- `leftIcon`: The icon that is displayed on the left side of the label. Default is null, which means no icon will be displayed on the left side.
- `leftIconSize`: The size of the left icon. Default is null, which means the icon will use the default size.
- `rightIcon`: The icon that is displayed on the right side of the label. Default is null, which means no icon will be displayed on the right side.
- `rightIconSize`: The size of the right icon. Default is null, which means the icon will use the default size.

## Usage

To use this widget, simply import it and use it in your widget tree. You can customize its appearance and behavior using its parameters.

```dart
VWButton(
  fullWidth: true,
  label: 'Click Me',
  color: Colors.blue,
  gradient: null,
  splashColor: Colors.white,
  labelStyle: TextStyle(color: Colors.white),
  leftIcon: Icons.add,
  leftIconSize: 24,
  rightIcon: Icons.arrow_forward,
  rightIconSize: 24,
)
```