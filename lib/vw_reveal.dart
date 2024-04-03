import 'package:flutter/material.dart';

enum VWRevealDirection {
  top,
  bottom,
  left,
  right;

  Offset getOffset() {
    switch (this) {
      case VWRevealDirection.top:
        return const Offset(0, -0.6);
      case VWRevealDirection.bottom:
        return const Offset(0, 0.6);
      case VWRevealDirection.left:
        return const Offset(-0.6, 0);
      case VWRevealDirection.right:
        return const Offset(0.6, 0);
    }
  }
}

class VWReveal extends StatefulWidget {
  ///[delay] is the time after which the child will be revealed
  final Duration delay;

  ///[child] is the widget that will be revealed
  final Widget child;

  ///[direction] is the direction from which the child will be revealed
  final VWRevealDirection direction;

  const VWReveal({
    super.key,
    required this.delay,
    required this.child,
    this.direction = VWRevealDirection.top,
  });

  @override
  State<VWReveal> createState() => _VWRevealState();
}

class _VWRevealState extends State<VWReveal> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(widget.delay, () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSlide(
      key: const Key("vw-reveal-slide"),
      offset: _isVisible ? Offset.zero : widget.direction.getOffset(),
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 300),
      child: AnimatedOpacity(
        key: const Key("vw-reveal-opacity"),
        opacity: _isVisible ? 1 : 0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: widget.child,
      ),
    );
  }
}
