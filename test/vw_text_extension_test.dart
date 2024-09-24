import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

void main() {
  group("String extension", () {
    test("Should return a Text widget", () {
      expect("hello".text, isA<Text>());
    });
  });

  group("Text extension", () {
    test("Check color", () {
      Text text = "Hello world".text.color(Colors.red);

      expect(text, isA<Text>());
      expect(text.style?.color, Colors.red);
    });

    test("Check font bold", () {
      Text text = "Hello world".text.bold;

      expect(text, isA<Text>());
      expect(text.style?.fontWeight, FontWeight.bold);
    });

    test("Check font weight", () {
      Text text = "Hello world".text.fontWeight(FontWeight.w300);

      expect(text, isA<Text>());
      expect(text.style?.fontWeight, FontWeight.w300);
    });

    test("Check font italic", () {
      Text text = "Hello world".text.italic;

      expect(text, isA<Text>());
      expect(text.style?.fontStyle, FontStyle.italic);
    });

    test("Check font size", () {
      Text text = "Hello world".text.fontSize(20);

      expect(text, isA<Text>());
      expect(text.style?.fontSize, 20);
    });

    test("Check height", () {
      Text text = "Hello world".text.height(20);

      expect(text, isA<Text>());
      expect(text.style?.height, 20);
    });

    test("Check underline", () {
      Text text = "Hello world".text.underline;

      expect(text, isA<Text>());
      expect(text.style?.decoration, TextDecoration.underline);
    });

    test("Check lineThrough", () {
      Text text = "Hello world".text.lineThrough;

      expect(text, isA<Text>());
      expect(text.style?.decoration, TextDecoration.lineThrough);
    });

    test("Check overline", () {
      Text text = "Hello world".text.overline;

      expect(text, isA<Text>());
      expect(text.style?.decoration, TextDecoration.overline);
    });

    test("Check uppercase", () {
      Text text = "Hello world".text.uppercase;

      expect(text, isA<Text>());
      expect(text.data, "HELLO WORLD");
    });

    test("Check lowercase", () {
      Text text = "Hello world".text.lowercase;

      expect(text, isA<Text>());
      expect(text.data, "hello world");
    });

    test("Check first upper", () {
      Text text = "hello world".text.firstUpper;

      expect(text, isA<Text>());
      expect(text.data, "Hello world");
    });

    test("Check letterSpacing", () {
      Text text = "Hello world".text.letterSpacing(4);

      expect(text, isA<Text>());
      expect(text.style?.letterSpacing, 4);
    });

    test("Check ellipsis", () {
      Text text = "Hello world".text.ellipsis;

      expect(text, isA<Text>());
      expect(text.style?.overflow, TextOverflow.ellipsis);
    });

    test("Check fade", () {
      Text text = "Hello world".text.fade;

      expect(text, isA<Text>());
      expect(text.style?.overflow, TextOverflow.fade);
    });

    test("Check center", () {
      Text text = "Hello world".text.center;

      expect(text, isA<Text>());
      expect(text.textAlign, TextAlign.center);
    });

    test("Check right", () {
      Text text = "Hello world".text.right;

      expect(text, isA<Text>());
      expect(text.textAlign, TextAlign.right);
    });

    test("Check left", () {
      Text text = "Hello world".text.left;

      expect(text, isA<Text>());
      expect(text.textAlign, TextAlign.left);
    });

    test("Check justify", () {
      Text text = "Hello world".text.justify;

      expect(text, isA<Text>());
      expect(text.textAlign, TextAlign.justify);
    });

    test("Check background color", () {
      Text text = "Hello world".text.background(Colors.red);
      Paint color = Paint()..color = Colors.red;

      expect(text, isA<Text>());
      expect(text.style?.background.toString(), color.toString());
    });
  });
}
