import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    required this.top,
    required this.right,
    required this.containerHeight,
    required this.containerWidth,
    required this.containerBorderRadius,
    required this.checkIconSize,
    required this.containerBorderWidth,
  });
  final double top;
  final double right;
  final double containerHeight;
  final double containerWidth;
  final double containerBorderRadius;
  final double checkIconSize;
  final double containerBorderWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: containerHeight,
          width: containerWidth,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(containerBorderRadius)),
            border: Border.all(width: containerBorderWidth),
          ),
        ),
        Positioned(
          top: top,
          right: right,
          child: Icon(
            Icons.check,
            size: checkIconSize,
          ),
        ),
      ],
    );
  }
}
