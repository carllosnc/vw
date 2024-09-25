import 'dart:ui';

import 'package:flutter/material.dart';

class VWBox extends StatelessWidget {
  ///[borderRadius] is the radius of the border.
  final BorderRadius? borderRadius;

  ///[width] is the width of the container.
  final double? width;

  ///[height] is the height of the container.
  final double? height;

  ///[border] is the border of the container.
  final Border? border;

  ///[padding] is the padding of the container.
  final EdgeInsets? padding;

  ///[margin] is the margin of the container.
  final EdgeInsets? margin;

  ///[child] is the child of the container.
  final Widget? child;

  ///[blurEffect] is the blur effect of the container.
  final double? blurEffect;

  ///[color] is the color of the container.
  final Color? color;

  ///[splashColor] is the splash color of the container.
  final Color? splashColor;

  ///[gradient] is the gradient of the container.
  final Gradient? gradient;

  ///[backgroundImage] is the background image of the container.
  final ImageProvider? backgroundImage;

  ///[onTap] is the onTap function of the container.
  final void Function()? onTap;

  ///[onDoubleTap] is the onDoubleTap function of the container.
  final void Function()? onDoubleTap;

  ///[onLongPress] is the onLongPress function of the container.
  final void Function()? onLongPress;

  ///[boxShadow] is the boxShadow of the container.
  final List<BoxShadow>? boxShadow;

  const VWBox({
    this.borderRadius,
    this.blurEffect,
    this.width,
    this.height,
    this.border,
    this.padding,
    this.margin,
    this.child,
    this.color,
    this.splashColor,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.gradient,
    this.backgroundImage,
    this.boxShadow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    dynamic decorationImage;

    if (backgroundImage != null) {
      decorationImage = DecorationImage(
        image: backgroundImage!,
        fit: BoxFit.cover,
      );
    }

    return Container(
      clipBehavior: Clip.hardEdge,
      key: const Key('vw-box-container'),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        image: decorationImage,
        boxShadow: boxShadow,
      ),
      child: Container(
        key: const Key('vw-box-subcontainer'),
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: BackdropFilter(
          key: const Key('vw-box-backdrop_filter'),
          filter: ImageFilter.blur(
            sigmaX: blurEffect ?? 0,
            sigmaY: blurEffect ?? 0,
          ),
          child: Material(
            key: const Key('vw-box-material'),
            color: color ?? Colors.transparent,
            child: InkWell(
              key: const Key('vw-box-inkwell'),
              splashColor: splashColor,
              splashFactory: InkRipple.splashFactory,
              onTap: onTap,
              onDoubleTap: onDoubleTap,
              onLongPress: onLongPress,
              child: Container(
                key: const Key('vw-box-content'),
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  border: border,
                ),
                padding: padding,
                width: width,
                height: height,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
