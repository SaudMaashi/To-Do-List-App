import 'package:flutter/material.dart';
import 'package:to_do_list_app/utilities/constants.dart';
import 'package:to_do_list_app/widgets/app_logo.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppLogo(),
                  SizedBox(
                    height: screenSize.height * 0.05,
                  ),
                  const Text(
                    "Dooit",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  const Text(
                    "Write what you need\nto do. Everyday.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: screenSize.height * 0.08),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize:
                    Size(screenSize.width * 0.5, screenSize.height * 0.06),
                backgroundColor: kSecondaryColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/home");
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 16,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
