# VWColumn

`VWColumn` is a custom widget that extends the StatelessWidget. It allows you to create a column of widgets with additional features.

## Parameters

- `children`: A list of widgets to display in the column. Default is an empty list.
- `gap`: The gap between the widgets. Default is 0.
- `padding`: The padding around the column. Default is EdgeInsets.all(0).
- `margin`: The margin around the column. Default is EdgeInsets.all(0).
- `horizontalAlignment`: The horizontal alignment of the widgets in the column. Default is CrossAxisAlignment.start.
- `verticalAlignment`: The vertical alignment of the widgets in the column. Default is MainAxisAlignment.start.

## Usage

To use this widget, simply import it and use it in your widget tree. You can customize its appearance and behavior using its parameters.

```dart
VWColumn(
  children: <Widget>[
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
