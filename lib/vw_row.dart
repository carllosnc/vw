import 'package:flutter/material.dart';

class VWRow extends StatelessWidget {
  final List<Widget> children;
  final double gap;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final bool expandItems;
  final bool scrollable;
  final bool reverseScroll;
  final ScrollPhysics physics;
  final MainAxisAlignment horizontalAlignment;
  final CrossAxisAlignment verticalAlignment;
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

    final List<Widget> elements = [];

    for (int i = 0; i < children.length; i++) {
      if (expandItems) {
        elements.add(Expanded(child: children[i]));
      } else {
        elements.add(children[i]);
      }

      if (i < children.length - 1) {
        elements.add(SizedBox(width: gap));
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
