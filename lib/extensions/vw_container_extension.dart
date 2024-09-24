import 'package:flutter/material.dart';

extension ContainerExtension on Container {
  Container _baseContainer({
    Key? key,
    Color? color,
    double? width,
    double? height,
    EdgeInsets? padding,
    EdgeInsetsGeometry? margin,
    Decoration? decoration,
    Matrix4? transform,
    BoxConstraints? constraints,
    AlignmentGeometry? alignment,
    Clip? clipBehavior,
    Decoration? foregroundDecoration,
    AlignmentGeometry? transformAlignment,
  }) {
    return Container(
      key: key ?? this.key,
      width: width,
      height: height,
      color: color ?? this.color,
      padding: padding ?? this.padding,
      margin: margin ?? this.margin,
      decoration: decoration ?? this.decoration,
      transform: transform ?? this.transform,
      constraints: constraints ?? this.constraints,
      alignment: alignment ?? this.alignment,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      foregroundDecoration: foregroundDecoration ?? this.foregroundDecoration,
      transformAlignment: transformAlignment ?? this.transformAlignment,
      child: child,
    );
  }

  Container background(Color color) {
    return _baseContainer(
      color: color,
    );
  }

  Container width(double width) {
    return _baseContainer(
      width: width,
    );
  }

  Container height(double height) {
    return _baseContainer(
      height: height,
    );
  }

  Container padding(EdgeInsets padding) {
    return _baseContainer(
      padding: padding,
    );
  }

  Container get contentCenter {
    return _baseContainer(
      alignment: Alignment.center,
    );
  }

  Container get contentTop {
    return _baseContainer(
      alignment: Alignment.topCenter,
    );
  }

  Container get contentBottom {
    return _baseContainer(
      alignment: Alignment.bottomCenter,
    );
  }

  Container get contentLeft {
    return _baseContainer(
      alignment: Alignment.centerLeft,
    );
  }

  Container get contentRight {
    return _baseContainer(
      alignment: Alignment.centerRight,
    );
  }

  Container get contentTopLeft {
    return _baseContainer(
      alignment: Alignment.topLeft,
    );
  }

  Container get contentTopRight {
    return _baseContainer(
      alignment: Alignment.topRight,
    );
  }

  Container get contentBottomLeft {
    return _baseContainer(
      alignment: Alignment.bottomLeft,
    );
  }

  Container get contentBottomRight {
    return _baseContainer(
      alignment: Alignment.bottomRight,
    );
  }

  Container get contentCenterLeft {
    return _baseContainer(
      alignment: Alignment.centerLeft,
    );
  }

  Container get contentCenterRight {
    return _baseContainer(
      alignment: Alignment.centerRight,
    );
  }

  Container get contentCenterTop {
    return _baseContainer(
      alignment: Alignment.topCenter,
    );
  }

  Container gradient(Gradient gradient) {
    return _baseContainer(
      decoration: BoxDecoration(
        gradient: gradient,
      ),
    );
  }

  Container borderRadius(BorderRadius borderRadius) {
    return _baseContainer(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
      ),
    );
  }
}
