import 'package:flutter/material.dart';
import 'package:to_do_list_app/utilities/constants.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            color: Colors.transparent,
            border: Border.all(width: 2, color: Colors.white),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 30,
          child: Icon(
            Icons.check,
            color: kSecondaryColor,
            size: 50,
          ),
        ),
      ],
    );
  }
}
