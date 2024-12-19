import 'package:flutter/material.dart';
import 'package:to_do_list_app/widgets/app_button.dart';
import 'package:to_do_list_app/widgets/app_logo.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppLogo(
                    top: -10,
                    right: -15,
                    containerHeight: 70,
                    containerWidth: 70,
                    containerBorderRadius: 16,
                    checkIconSize: 50,
                    containerBorderWidth: 2,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.05,
                  ),
                  Text("YouCan",
                      style: Theme.of(context).textTheme.displaySmall),
                  SizedBox(height: screenSize.height * 0.02),
                  Text("Write what you need\nto do. Everyday.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: screenSize.height * 0.08),
            child: AppButton(
              padding: const EdgeInsets.all(16),
              size: Size(screenSize.width * 0.5, screenSize.height * 0.06),
              borderRadius: 100,
              nextScreenName: "/home",
              text: "Continue",
              textSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
