# VWText

A widget that displays text with customizable styles for specific words.

## Usage

```dart
import 'package:vw/vw.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VWText(
      text: "Lorem [<b><pc>bold</pc></b>] ipsum dolor sit amet. [<m>Mark</m>] consectetur adipiscing elit. [<d>Deleted</d>]",
      primaryColor: Colors.red,
      markColor: const Color.fromARGB(255, 196, 228, 255),
      textStyle: const TextStyle(
        fontSize: 20,
        height: 1.6,
      ),
    );
  }
}
```

## Properties

| Property     | Type         | Description                          |
| ------------ | ------------ | ------------------------------------ |
| text         | `String`     | The text to display.                 |
| primaryColor | `Color?`     | The primary color for styled words.  |
| markColor    | `Color?`     | The color used to mark styled words. |
| textStyle    | `TextStyle?` | The text style for the whole text.   |

## Markup

The `VWText` widget supports markup syntax to style specific words in the text. The markup syntax is based on HTML tags and can be used to apply different styles to specific words or phrases in the text.

## Markup Syntax

The markup syntax is a combination of HTML tags and special characters. The tags are enclosed in angle brackets (`<` and `>`) and can be used to apply different styles to the text. Before marking a word or phrase, you need to enclose it in square brackes `[]` and add the appropriate tag.

**Example:**

```dart
"Lorem [<b>bold</b>] ipsum dolor sit amet."
```

In this example, the word "bold" will be styled with a bold font.

Here are some examples of how the markup syntax can be used:

- `<b>bold</b>`: This will make the text bold.
- `<i>italic</i>`: This will make the text italic.
- `<u>underline</u>`: This will underline the text.
- `<m>mark</m>`: This will mark the text with a different color.
- `<d>deleted</d>`: This will make the text deleted.
- `<o>overline</o>`: This will make the text overline.
- `<pc>primary color</pc>`: This will use the primary color for the text.
- `<uc>uppercase</uc>`: This will make the text uppercase.
