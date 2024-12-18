import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.size,
    required this.borderRadius,
    required this.nextScreenName,
    required this.text,
    required this.textSize,
    required this.padding,
  });

  final Size size;
  final double borderRadius;
  final String nextScreenName;
  final String text;
  final double textSize;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: size,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
      ),
      onPressed: () {
        if (nextScreenName == "/home") {
          Navigator.pushReplacementNamed(context, nextScreenName);
        } else {
          Navigator.pushNamed(context, nextScreenName);
        }
      },
      child: Padding(
        padding: padding,
        child: Text(
          text,
          style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
