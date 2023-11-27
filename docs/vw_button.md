# VWButton

`VWButton` is a custom widget that extends the StatefulWidget. It allows you to create a button with additional features.

## Properties

| Property              | Type              | Description                                                                       | Default Value                            |
| --------------------- | ----------------- | --------------------------------------------------------------------------------- | ---------------------------------------- |
| `fullWidth`           | bool              | Determines whether the button should take up the full width of the parent widget. | `false`                                  |
| `label`               | String            | The text that is displayed on the button.                                         | `'Button'`                               |
| `color`               | Color             | The background color of the button.                                               | `Theme.of(context).colorScheme.primary`  |
| `gradient`            | Gradient          | The gradient of the button.                                                       | `null`                                   |
| `splashColor`         | Color             | The splash color of the button.                                                   | `Colors.white`                           |
| `labelStyle`          | TextStyle         | The style of the label text.                                                      | `null`                                   |
| `leftIcon`            | IconData          | The icon that is displayed on the left side of the label.                         | `null`                                   |
| `leftIconSize`        | double            | The size of the left icon.                                                        | `null`                                   |
| `rightIcon`           | IconData          | The icon that is displayed on the right side of the label.                        | `null`                                   |
| `rightIconSize`       | double            | The size of the right icon.                                                       | `null`                                   |
| `isLoading`           | bool              | Determines whether the button should display a loading indicator.                 | `false`                                  |
| `loadingLabel`        | String            | The text that is displayed when the button is loading.                            | `null`                                   |
| `borderRadius`        | BorderRadius      | The border radius of the button.                                                  | `BorderRadius.all(Radius.circular(100))` |
| `border`              | Border            | The border of the button.                                                         | `null`                                   |
| `onTap`               | void Function()?  | The function that is called when the button is tapped.                            | `null`                                   |
| `onDoubleTap`         | void Function()?  | The function that is called when the button is double tapped.                     | `null`                                   |
| `onLongPress`         | void Function()?  | The function that is called when the button is long pressed.                      | `null`                                   |
| `horizontalAlignment` | MainAxisAlignment | The horizontal alignment of the button                                            | `MainAxisAlignment.center`               |

## Usage

To use this widget, simply import it and use it in your widget tree. You can customize its appearance and behavior using its properties.

```dart
VWButton(
  splashColor: Colors.blue,
  labelStyle: TextStyle(color: Colors.white),
  leftIcon: Icons.add,
  leftIconSize: 24,
  rightIcon: Icons.arrow_forward,
  rightIconSize: 24,
  isLoading: false,
  loadingLabel: 'Loading...',
  borderRadius: BorderRadius.circular(8),
  border: Border.all(color: Colors.blue),
  onTap: () {
    print('Button tapped!');
  },
)
```

## Known Issues

> [!WARNING]
> When `VWButton` is used inside a `bottomNavigationBar` of `Scaffold` this error is thrown:

```
The ParentDataWidget Expanded-[<'vw_button_expanded'>](flex: 1)
wants to apply ParentData of type FlexParentData to a RenderObject,
which has been set up to accept ParentData of incompatible type ParentData.
```

To fix this use a `VWRow` as main wrapper to the `VWButton`.

```dart
Scaffold(
  appBar: AppBar(
    title: const Text('VW Buttons'),
  ),
  bottomNavigationBar: const VWRow(
    children: [
      VWButton(
        label: "Button",
      ),
    ],
  ),
)
```
