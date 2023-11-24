import 'package:flutter/widgets.dart';

class VWColumn extends StatelessWidget {
  /// [children] is a list of widgets that are displayed in the column.
  final List<Widget> children;

  /// [gap] is the space between each child widget.
  final double gap;

  /// [padding] is the padding of the column.
  final EdgeInsetsGeometry padding;

  /// [margin] is the margin of the column.
  final EdgeInsetsGeometry margin;

  /// [horizontalAlignment] is the horizontal alignment of the column.
  final CrossAxisAlignment horizontalAlignment;

  /// [verticalAlignment] is the vertical alignment of the column.
  final MainAxisAlignment verticalAlignment;

  const VWColumn({
    super.key,
    this.children = const [],
    this.gap = 0,
    this.padding = const EdgeInsets.all(0),
    this.margin = const EdgeInsets.all(0),
    this.horizontalAlignment = CrossAxisAlignment.start,
    this.verticalAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> elements = [];

    for (int i = 0; i < children.length; i++) {
      elements.add(children[i]);

      if (i < children.length - 1) {
        elements.add(SizedBox(
          key: Key("vw-column-gap-$i"),
          height: gap,
        ));
      }
    }

    return Container(
      key: const Key("vw-column-container"),
      padding: padding,
      margin: margin,
      child: Column(
        key: const Key("vw-column-content"),
        crossAxisAlignment: horizontalAlignment,
        mainAxisAlignment: verticalAlignment,
        children: elements,
      ),
    );
  }
}
