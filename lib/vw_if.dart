import 'package:flutter/widgets.dart';

class VWIf extends StatelessWidget {
  ///[condition] A boolean value that determines whether the [ifTrue] widget is displayed.
  final bool condition;

  ///[ifTrue] The widget that is displayed when the [condition] is true.
  final Widget ifTrue;

  ///[ifFalse] The widget that is displayed when the [condition] is false.
  final Widget? ifFalse;

  const VWIf({
    super.key,
    required this.condition,
    required this.ifTrue,
    this.ifFalse,
  });

  @override
  Widget build(BuildContext context) {
    if (condition) {
      return ifTrue;
    } else {
      return Offstage(
        key: const Key("vw-if-offstage"),
        offstage: ifFalse == null,
        child: ifFalse,
      );
    }
  }
}
