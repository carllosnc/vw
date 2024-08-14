# VWScreenSizeExtension

VW Screen Size Extension provide some useful methods to with responsiveness in flutter.

Example:
- Get screen width por height applying a size as percentage and an offset.
- Get size of parent widget applying a size as percentage and an offset.
- Apply breakpoints based on screen width.

Two objects are extended: `BuildContext` and `BoxConstraints`.

## Usage

Just import the VW package.
```
import 'package:vw/vw.dart';
```

## `context.screenWidth()` and `context.screenHeight()`

Both methods are provided by the `BuildContext` object.

```dart
Container(
  width: context.screenWidth({ size: 0.5, offset: 100 }),
  height: context.screenHeight({ size: 0.4, offset: 50 }),
)
```

**context.screenWidth({ size, offset })**

| Property | Type     | Description                             | Default |
|----------|----------|-----------------------------------------|---------|
| `size`   | `double` | The size of the widget as a percentage. | `1`     |
| `offset` | `double` | The value to offset the size.           | `0`     |

**context.screenHeight({ size, offset })**

| Property | Type     | Description                             | Default |
|----------|----------|-----------------------------------------|---------|
| `size`   | `double` | The size of the widget as a percentage. | `1`     |
| `offset` | `double` | The value to offset the size.           | `0`     |

## `boxWidth()` and `boxHeight()`

These methods are provided by the `BoxConstraints` object.

```dart
LayoutBuilder(
    builder: (context, constraints) {
        return VWRow(
            horizontalAlignment:MainAxisAlignment.spaceBetween,
            children: [
                Container(
                    color: Colors.black,
                    width: constraints.boxWidth(size: 0.5, offset: 10),
                    height: constraints.boxHeight(size: 0.5, offset: 10),
                ),
            ],
        );
    },
)
```

**boxWidth({ size, offset })**

| Property | Type     | Description                             | Default |
|----------|----------|-----------------------------------------|---------|
| `size`   | `double` | The size of the widget as a percentage. | `1`     |
| `offset` | `double` | The value to offset the size.           | `0`     |

**boxHeight({ size, offset })**

| Property | Type     | Description                             | Default |
|----------|----------|-----------------------------------------|---------|
| `size`   | `double` | The size of the widget as a percentage. | `1`     |
| `offset` | `double` | The value to offset the size.           | `0`     |

## `context.breakpoints()`

These method are provided by the `BuildContext` object. It receives a `Map<int, dynamic>` as parameter,
the key is the screen breakpoint and the value will be returned when the breakpoint is
matched with the current screen width.

```dart
Scaffold(
    backgroundColor: context.breakPoint({
        1200: Colors.red.shade200,
        1000: Colors.blue.shade200,
        800: Colors.pink.shade200,
        600: Colors.yellow.shade200,
        400: Colors.purple.shade200,
        0: Colors.grey.shade200,
    })
)
```

## `context.breakPoint()`

| Property               | Type      | Description                                          | Required |
|------------------------|-----------|------------------------------------------------------|----------|
| `Map<double, dynamic>` | `dynamic` | Map of breakpoints and values that will be returned. | `true`   |

