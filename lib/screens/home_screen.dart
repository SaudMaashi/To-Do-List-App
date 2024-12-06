import 'package:flutter/material.dart';
import 'package:to_do_list_app/utilities/constants.dart';
import 'package:to_do_list_app/widgets/app_logo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondaryColor,
        leading: const Row(
          children: [
            AppLogo(),
            Text("Dooit"),
          ],
        ),
      ),
    );
  }
}
