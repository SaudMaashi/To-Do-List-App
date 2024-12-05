import 'package:flutter/material.dart';
import 'package:to_do_list_app/screens/landing_screen.dart';

void main() {
  runApp(const ToDoListApp());
}

class ToDoListApp extends StatelessWidget {
  const ToDoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const LandingScreen(),
      },
      initialRoute: "/",
    );
  }
}
