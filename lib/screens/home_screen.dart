import 'package:flutter/material.dart';
import 'package:to_do_list_app/utilities/constants.dart';
import 'package:to_do_list_app/widgets/app_button.dart';
import 'package:to_do_list_app/widgets/app_logo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 500,
        elevation: 0,
        backgroundColor: kSecondaryColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppLogo(
                top: -12,
                right: -16,
                logoColor: kPrimaryColor,
                containerHeight: 40,
                containerWidth: 40,
                containerBorderRadius: 5,
                checkIconSize: 40,
                containerBorderWidth: 1,
              ),
              SizedBox(width: screenSize.width * 0.05),
              const Text(
                "Dooit",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: kPrimaryColor,
                size: 40,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: 50,
                width: 350,
              ),
              SizedBox(height: screenSize.height * 0.2),
              Column(
                children: [
                  Image.asset("assets/images/picture1.png"),
                  SizedBox(height: screenSize.height * 0.1),
                  const Text(
                    "Create your first to-do list...",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.04),
                  AppButton(
                    padding: const EdgeInsets.all(10),
                    backgroundColor: kPrimaryColor,
                    size:
                        Size(screenSize.width * 0.34, screenSize.height * 0.05),
                    borderRadius: 10,
                    textColor: kSecondaryColor,
                    nextScreenName: "/add_note",
                    text: "+ New List",
                    textSize: 18,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
