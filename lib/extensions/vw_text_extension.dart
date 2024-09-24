import 'package:flutter/material.dart';

extension VWStringExtension on String {
  ///[text] return a Text widget with the string as data.
  Text get text {
    return Text(
      this,
      style: const TextStyle(),
    );
  }
}

extension VWTextExtension on Text {
  Text _baseText({
    String? data,
    TextStyle? style,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    TextAlign? textAlign,
    TextDirection? textDirection,
    int? maxLines,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    TextScaler? textScaler,
  }) {
    return Text(
      data ?? this.data as String,
      locale: locale ?? this.locale,
      softWrap: softWrap ?? this.softWrap,
      overflow: overflow ?? this.overflow,
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection ?? this.textDirection,
      maxLines: maxLines ?? this.maxLines,
      selectionColor: selectionColor ?? this.selectionColor,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      strutStyle: strutStyle ?? this.strutStyle,
      textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
      textScaler: textScaler ?? this.textScaler,
      key: key,
      style: style ?? const TextStyle(),
    );
  }

  ///[color] is the color of the text.
  Text color(Color color) {
    return _baseText(
      style: style?.copyWith(color: color),
    );
  }

  ///[bold] is a boolean value that determines whether the text is bold or not.
  Text get bold {
    return _baseText(
      style: style?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  ///[weight] is the font weight of the text.
  Text fontWeight(FontWeight weight) {
    return _baseText(
      style: style?.copyWith(fontWeight: weight),
    );
  }

  ///[italic] is a boolean value that determines whether the text is italic or not.
  Text get italic {
    return _baseText(
      style: style?.copyWith(fontStyle: FontStyle.italic),
    );
  }

  ///[size] double value that determines the font size of the text.
  Text fontSize(double size) {
    return _baseText(
      style: style?.copyWith(fontSize: size),
    );
  }

  ///[height] double value that determines the height of the text.
  Text height(double height) {
    return _baseText(
      style: style?.copyWith(height: height),
    );
  }

  ///[underline] is a boolean value that determines whether the text is underlined or not.
  Text get underline {
    return _baseText(
      style: style?.copyWith(decoration: TextDecoration.underline),
    );
  }

  ///[lineThrough] is a boolean value that determines whether the text is line through or not.
  Text get lineThrough {
    return _baseText(
      style: style?.copyWith(decoration: TextDecoration.lineThrough),
    );
  }

  ///[overline] is a boolean value that determines whether the text is overline or not.
  Text get overline {
    return _baseText(
      style: style?.copyWith(decoration: TextDecoration.overline),
    );
  }

  ///[uppercase] is a boolean value that determines whether the text is uppercase or not.
  Text get uppercase {
    return _baseText(
      data: data?.toUpperCase(),
    );
  }

  ///[lowercase] is a boolean value that determines whether the text is lowercase or not.
  Text get lowercase {
    return _baseText(
      data: data?.toLowerCase(),
    );
  }

  ///[firstUpper] set the first letter of the text to uppercase.
  Text get firstUpper {
    String firstLetter = data![0].toUpperCase();
    String rest = data!.substring(1);

    return _baseText(
      data: firstLetter + rest,
    );
  }

  ///[spacing] double value that determines the letter spacing of the text.
  Text letterSpacing(double spacing) {
    return _baseText(
      style: style?.copyWith(letterSpacing: spacing),
    );
  }

  ///[ellipsis] add an ellipsis to the end of the text if it is too long.
  Text get ellipsis {
    return _baseText(
      style: style?.copyWith(overflow: TextOverflow.ellipsis),
    );
  }

  ///[fade] add a fade effect to the text if it is too long.
  Text get fade {
    return _baseText(
      maxLines: 1,
      softWrap: false,
      style: style?.copyWith(overflow: TextOverflow.fade),
    );
  }

  ///[center] align the text to the center.
  Text get center {
    return _baseText(
      textAlign: TextAlign.center,
    );
  }

  ///[right] align the text to the right.
  Text get right {
    return _baseText(
      textAlign: TextAlign.right,
    );
  }

  ///[left] align the text to the left.
  Text get left {
    return _baseText(
      textAlign: TextAlign.left,
    );
  }

  ///[justify] align the text to the justify.
  Text get justify {
    return _baseText(
      textAlign: TextAlign.justify,
    );
  }

  ///[color] is the color of the background.
  Text background(Color color) {
    return _baseText(
      style: style?.copyWith(background: Paint()..color = color),
    );
  }
}
