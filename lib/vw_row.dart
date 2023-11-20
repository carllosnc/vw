import 'package:flutter/material.dart';

class VWRow extends StatelessWidget {
  ///[children] A list of widgets to display in the row. Default is an empty list.
  final List<Widget> children;

  ///[gap] The gap between the widgets. Default is 0.
  final double gap;

  ///[padding] The padding around the row. Default is EdgeInsets.all(0).
  final EdgeInsetsGeometry padding;

  ///[margin] The margin around the row. Default is EdgeInsets.all(0).
  final EdgeInsetsGeometry margin;

  ///[expandItems] A boolean value that determines whether the items in the row should expand to fill the available space. Default is false.
  ///If this is true, [scrollable] must be false.
  final bool expandItems;

  ///[scrollable] A boolean value that determines whether the row is scrollable. Default is false.
  ///If this is true, [expandItems] must be false.
  final bool scrollable;

  ///[reverseScroll] A boolean value that determines whether the scroll direction is reversed. Default is false.
  final bool reverseScroll;

  ///[physics] The physics type that determines how the row scrolls. Default is ClampingScrollPhysics.
  final ScrollPhysics physics;

  ///[horizontalAlignment] The horizontal alignment of the widgets in the row. Default is MainAxisAlignment.start.
  final MainAxisAlignment horizontalAlignment;

  ///[verticalAlignment] The vertical alignment of the widgets in the row. Default is CrossAxisAlignment.start.
  final CrossAxisAlignment verticalAlignment;

  ///[controller] A ScrollController that controls the position of the scroll. Default is null.
  final ScrollController? controller;

  const VWRow({
    super.key,
    this.children = const [],
    this.gap = 0,
    this.padding = const EdgeInsets.all(0),
    this.margin = const EdgeInsets.all(0),
    this.expandItems = false,
    this.scrollable = false,
    this.reverseScroll = false,
    this.physics = const ClampingScrollPhysics(),
    this.horizontalAlignment = MainAxisAlignment.start,
    this.verticalAlignment = CrossAxisAlignment.start,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    if (scrollable == true && expandItems == true) {
      throw Exception("VWRow: scrollable and expandItems can't be true at the same time");
    }

    if (controller != null && scrollable == false) {
      throw Exception("VWRow: controller can't be used when scrollable is false");
    }

    if (reverseScroll == true && scrollable == false) {
      throw Exception("VWRow: reverseScroll can't be used when scrollable is false");
    }

    final List<Widget> elements = [];

    for (int i = 0; i < children.length; i++) {
      if (expandItems) {
        elements.add(
          Expanded(
            key: Key("vw-row-expanded-$i"),
            child: children[i],
          ),
        );
      } else {
        elements.add(children[i]);
      }

      if (i < children.length - 1) {
        elements.add(
          SizedBox(
            key: Key("vw-row-gap-$i"),
            width: gap,
          ),
        );
      }
    }

    if (scrollable) {
      return Container(
        key: const Key("vw-row-scroll-container"),
        margin: margin,
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          key: const Key("vw-row-scroll-view"),
          padding: padding,
          reverse: reverseScroll,
          physics: physics,
          scrollDirection: Axis.horizontal,
          controller: controller,
          child: Row(
            key: const Key("vw-row-scroll-content"),
            mainAxisAlignment: horizontalAlignment,
            crossAxisAlignment: verticalAlignment,
            children: elements,
          ),
        ),
      );
    }

    return Container(
      key: const Key("vw-row-container"),
      margin: margin,
      padding: padding,
      child: Row(
        key: const Key("vw-row-content"),
        mainAxisAlignment: horizontalAlignment,
        crossAxisAlignment: verticalAlignment,
        children: elements,
      ),
    );
  }
}
