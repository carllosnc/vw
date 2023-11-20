# VWColumn

`VWColumn` is a custom widget that extends the StatelessWidget. It allows you to create a column of widgets with additional features.

## Parameters

| Property              | Type               | Description                                            | Default                    |
| --------------------- | ------------------ | ------------------------------------------------------ | -------------------------- |
| `children`            | List<Widget>       | The widgets to display in the column.                  | `[]`                       |
| `gap`                 | double             | The gap between the widgets in the column.             | `0`                        |
| `padding`             | EdgeInsetsGeometry | The padding around the column.                         | `EdgeInsets.all(0)`        |
| `margin`              | EdgeInsetsGeometry | The margin around the column.                          | `EdgeInsets.all(0)`        |
| `horizontalAlignment` | CrossAxisAlignment | The horizontal alignment of the widgets in the column. | `CrossAxisAlignment.start` |
| `verticalAlignment`   | MainAxisAlignment  | The vertical alignment of the widgets in the column.   | `MainAxisAlignment.start`  |

## Usage

To use this widget, simply import it and use it in your widget tree. You can customize its appearance and behavior using its parameters.

```dart
VWColumn(
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
  gap: 10,
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.all(10),
  horizontalAlignment: CrossAxisAlignment.center,
  verticalAlignment: MainAxisAlignment.spaceAround,
)
