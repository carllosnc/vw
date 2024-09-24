import 'package:flutter/material.dart';

sealed class VWTextStyle {
  static bool checkBold(String input) => (input.contains("<b>") && input.contains("</b>")) ? true : false;
  static bool checkItalic(String input) => (input.contains("<i>") && input.contains("</i>")) ? true : false;
  static bool checkUnderline(String input) => (input.contains("<u>") && input.contains("</u>")) ? true : false;
  static bool checkPrimaryColor(String input) => (input.contains("<pc>") && input.contains("</pc>")) ? true : false;
  static bool checkMark(String input) => (input.contains("<m>") && input.contains("</m>")) ? true : false;
  static bool checkDelete(String input) => (input.contains("<d>") && input.contains("</d>")) ? true : false;
  static bool checkOverline(String input) => (input.contains("<o>") && input.contains("</o>")) ? true : false;
  static bool checkUppercase(String input) => (input.contains("<uc>") && input.contains("</uc>")) ? true : false;

  static getTextDecoration(String input) {
    if (checkUnderline(input)) return TextDecoration.underline;
    if (checkDelete(input)) return TextDecoration.lineThrough;
    if (checkOverline(input)) return TextDecoration.overline;

    return null;
  }

  static String sanitize(String input) => input
      .replaceAll("<b>", "") //
      .replaceAll("</b>", "")
      .replaceAll("<i>", "")
      .replaceAll("</i>", "")
      .replaceAll("<u>", "")
      .replaceAll("</u>", "")
      .replaceAll("<pc>", "")
      .replaceAll("</pc>", "")
      .replaceAll("<m>", "")
      .replaceAll("</m>", "")
      .replaceAll("<d>", "")
      .replaceAll("</d>", "")
      .replaceAll("<o>", "")
      .replaceAll("</o>", "")
      .replaceAll("<uc>", "")
      .replaceAll("</uc>", "");
}

/// A widget that displays text with customizable styles for specific words.
///
/// The [VWText] widget allows you to display text with different styles for specific words.
/// You can customize the primary color, mark color, and text style.
class VWText extends StatefulWidget {
  /// The text to display.
  final String text;

  /// The primary color for styled words.
  final Color? primaryColor;

  /// The color used to mark styled words.
  final Color? markColor;

  /// The text style for the whole text.
  final TextStyle? textStyle;

  const VWText({
    super.key,
    required this.text,
    this.primaryColor = Colors.red,
    this.markColor = const Color.fromARGB(255, 255, 192, 192),
    this.textStyle,
  });

  @override
  State<VWText> createState() => _VWTextState();
}

class _VWTextState extends State<VWText> {
  TextStyle defaultStyle = const TextStyle();

  @override
  Widget build(BuildContext context) {
    final words = widget.text.split(RegExp(r'[\[\]]'));

    List<TextSpan> spans = [];

    for (var word in words) {
      bool isUppercase = VWTextStyle.checkUppercase(word);

      var style = TextStyle(
        color: VWTextStyle.checkPrimaryColor(word) ? widget.primaryColor : Theme.of(context).colorScheme.onSurface,
        fontWeight: VWTextStyle.checkBold(word) ? FontWeight.w900 : null,
        fontStyle: VWTextStyle.checkItalic(word) ? FontStyle.italic : null,
        decoration: VWTextStyle.getTextDecoration(word),
        backgroundColor: VWTextStyle.checkMark(word) ? widget.markColor : null,
      );

      word = VWTextStyle.sanitize(word);
      word = isUppercase ? word.toUpperCase() : word;

      spans.add(TextSpan(
        text: word,
        style: style,
      ));
    }

    return RichText(
      key: const Key('vw_text'),
      text: TextSpan(
        style: defaultStyle.merge(widget.textStyle),
        children: spans,
      ),
    );
  }
}
