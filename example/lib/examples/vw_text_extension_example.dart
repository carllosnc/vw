// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VWTextExtensionExample extends StatelessWidget {
  const VWTextExtensionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VWTextExtension'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: VWColumn(
            horizontalAlignment: CrossAxisAlignment.start,
            verticalAlignment: MainAxisAlignment.start,
            gap: 5,
            children: [
              "Hello, World!".text.uppercase,
              "Hello, World!".text.uppercase.bold,
              "Hello, World!".text.uppercase.bold.fontSize(25),
              "Hello, World!".text.uppercase.fontSize(40).fontWeight(FontWeight.w300),
              "Hello, World!".text.uppercase.bold.fontSize(25).letterSpacing(4),
              "Hello, World!".text.uppercase.bold.fontSize(25).letterSpacing(4).color(Colors.red),
              "Hello, World!".text.bold.fontSize(25).underline,
              "Hello, World!".text.bold.fontSize(25).overline,
              "Hello, World!".text.bold.fontSize(25).lineThrough,
              SizedBox(
                width: 200,
                child: "lorem ipsum dolor sit amet".text.ellipsis.fontSize(25),
              ),
              SizedBox(
                width: 200,
                child: "lorem ipsum dolor sit amet".text.fade.fontSize(25),
              ),
              Container(
                color: Colors.red,
                width: double.infinity,
                child: "Hello, World!".text.center.fontSize(30).color(Colors.white),
              ),
              Container(
                color: Colors.red,
                width: double.infinity,
                child: "Hello, World!".text.right.fontSize(30).color(Colors.white),
              ),
              Container(
                color: Colors.red,
                width: double.infinity,
                child: "Hello, World!".text.left.fontSize(30).color(Colors.white),
              ),
              "Hello world".text.fontSize(30).bold.background(Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
