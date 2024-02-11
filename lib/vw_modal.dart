import 'package:flutter/material.dart';

sealed class VWModal {
  static Future<dynamic> open({
    //[context] is a build context of the page.
    required BuildContext context,

    //[body] is the body of the dialog.
    required Widget body,

    //[insetPadding] is used to set the padding of the dialog.
    EdgeInsets insetPadding = const EdgeInsets.all(30),
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: insetPadding,
          elevation: 0,
          insetAnimationCurve: Curves.easeInOut,
          shape: const RoundedRectangleBorder(
            side: BorderSide.none,
          ),
          child: body,
        );
      },
    );
  }

  //[close] is used to close the dialog.
  static void close(BuildContext context) {
    Navigator.pop(context);
  }
}
