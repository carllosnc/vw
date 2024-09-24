# VWTextExtension

Extension methods for `String` object and `Text` widgets that provides additional functionality like inline styling and chainable calls.

## Usage

```dart
import 'package:vw/vw.dart';

...

"Hello, World!".text.uppercase,
"Hello, World!".text.uppercase.bold,
"Hello, World!".text.uppercase.bold.fontSize(25),
"Hello, World!".text.uppercase.fontSize(40).fontWeight(FontWeight.w300),
"Hello, World!".text.uppercase.bold.fontSize(25).letterSpacing(4),
"Hello, World!".text.uppercase.bold.fontSize(25).letterSpacing(4).color(Colors.red),
"Hello, World!".text.bold.fontSize(25).underline,
"Hello, World!".text.bold.fontSize(25).overline,
"Hello, World!".text.bold.fontSize(25).lineThrough,
```

## String as Text

The `String` object can be used as a `Text` widget by calling the `text` method.

| Method  | Description              |
| ------- | ------------------------ |
| `.text` | Returns a `Text` widget. |

```dart
"Hello world".text
```

## Text

With VWTextExtension Text widget provides additional methods to style the text.

| Method           | Description                                               |
| ---------------- | --------------------------------------------------------- |
| `.color`         | Set the color of the text.                                |
| `.bold`          | Set the text to bold.                                     |
| `.fontWeight`    | Set the font weight of the text.                          |
| `.italic`        | Set the text to italic.                                   |
| `.fontSize`      | Set the font size of the text.                            |
| `.height`        | Set the height of the text.                               |
| `.underline`     | Set the text to underline.                                |
| `.lineThrough`   | Set the text to line through.                             |
| `.overline`      | Set the text to overline.                                 |
| `.uppercase`     | Set the text to uppercase.                                |
| `.lowercase`     | Set the text to lowercase.                                |
| `.firstUpper`    | Set the first letter of the text to uppercase.            |
| `.letterSpacing` | Set the letter spacing of the text.                       |
| `.ellipsis`      | Add an ellipsis to the end of the text if it is too long. |
| `.fade`          | Add a fade effect to the text if it is too long.          |
| `.center`        | Align the text to the center.                             |
| `.right`         | Align the text to the right.                              |
| `.left`          | Align the text to the left.                               |
| `.justify`       | Align the text to the justify.                            |
| `.background`    | Set the color of the background.                          |
