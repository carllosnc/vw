import 'package:flutter/widgets.dart';

class VWColumn extends StatelessWidget {
  final List<Widget> children;
  final double gap;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final CrossAxisAlignment horizontalAlignment;
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
        elements.add(SizedBox(height: gap));
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
