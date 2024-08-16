import 'package:flutter/material.dart';

sealed class VWSheet {
  static Future<dynamic> open({
    ///[appBar] is the header of the page.
    required AppBar appBar,

    ///[context] is the BuildContext of the page.
    required BuildContext context,

    ///[bottomBar] is the bottom bar of the page.
    Widget? bottomBar,

    ///[body] is the body of the page.
    required Widget body,

    ///[borderRadius] is the border radius of top left and top right of the page.
    double borderRadius = 0,

    ///[level] define page height based on the level, to higher the level the lower the height of the page.
    int level = 1,

    ///[backgroundColor] is the background color of the page.
    Color? backgroundColor,

    ///[borderColor] is the border color of the page.
    bool isScrollControlled = true,
  }) {
    return showModalBottomSheet(
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      isScrollControlled: isScrollControlled,
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.96 - (15 * level),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadius),
              topRight: Radius.circular(borderRadius),
            ),
          ),
          child: Scaffold(
            backgroundColor:
                backgroundColor ?? Theme.of(context).colorScheme.surface,
            appBar: appBar,
            body: body,
            bottomNavigationBar: bottomBar,
          ),
        );
      },
    );
  }
}
