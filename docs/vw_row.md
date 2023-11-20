# VWRow

`VWRow` is a custom widget that extends the StatelessWidget. It allows you to create a row of widgets with additional features.

## Parameters

- `children`: A list of widgets to display in the row. Default is an empty list.
- `gap`: The gap between the widgets. Default is 0.
- `padding`: The padding around the row. Default is EdgeInsets.all(0).
- `margin`: The margin around the row. Default is EdgeInsets.all(0).
- `expandItems`: A boolean value that determines whether the items in the row should expand to fill the available space. Default is false.
- `scrollable`: A boolean value that determines whether the row is scrollable. Default is false.
- `reverseScroll`: A boolean value that determines whether the scroll direction is reversed. Default is false.
- `physics`: The physics type that determines how the row scrolls. Default is ClampingScrollPhysics.
- `horizontalAlignment`: The horizontal alignment of the widgets in the row. Default is MainAxisAlignment.start.
- `verticalAlignment`: The vertical alignment of the widgets in the row. Default is CrossAxisAlignment.start.
- `controller`: A ScrollController that controls the position of the scroll. Default is null.

## Note

`scrollable` and `expandItems` can't be true at the same time. If they are, an exception will be thrown.

## Example

```dart
VWRow(
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
  gap: 10,
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.all(10),
  expandItems: true,
  scrollable: false,
  reverseScroll: false,
  physics: ClampingScrollPhysics(),
  horizontalAlignment: MainAxisAlignment.spaceAround,
  verticalAlignment: CrossAxisAlignment.center,
)
```