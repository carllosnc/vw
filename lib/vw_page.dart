import 'package:flutter/material.dart';

sealed class VWPage {
  static Future<dynamic> open({
    ///[appBar] is the header of the page.
    required AppBar appBar,

    ///[context] is the BuildContext of the page.
    required BuildContext context,

    ///[bottomBar] is the bottom bar of the page.
    Widget? bottomBar,

    ///[body] is the body of the page.
    required Widget body,
  }) {
    return showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SizedBox(
          child: Scaffold(
            appBar: appBar,
            body: body,
            bottomNavigationBar: bottomBar,
          ),
        );
      },
    );
  }
}
