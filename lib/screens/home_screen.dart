import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list_app/widgets/app_button.dart';
import 'package:to_do_list_app/widgets/app_logo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 500,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppLogo(
                top: -12,
                right: -16,
                containerHeight: 40,
                containerWidth: 40,
                containerBorderRadius: 5,
                checkIconSize: 40,
                containerBorderWidth: 1,
              ),
              SizedBox(width: screenSize.width * 0.05),
              Text("Dooit", style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, size: 40),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              CustomSlidingSegmentedControl(
                initialValue: 1,
                children: const {
                  1: Text(
                    "All List",
                  ),
                  2: Text("Pinned"),
                },
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 202, 201, 201),
                  borderRadius: BorderRadius.circular(8),
                ),
                thumbDecoration: BoxDecoration(
                  color: const Color(0xFF63558F),
                  borderRadius: BorderRadius.circular(6),
                ),
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInToLinear,
                onValueChanged: (value) {},
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
                    size:
                        Size(screenSize.width * 0.34, screenSize.height * 0.05),
                    borderRadius: 10,
                    nextScreenName: "/add_note",
                    text: "New List",
                    textSize: 17.5,
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
