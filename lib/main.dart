import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list_app/screens/add_list_screen.dart';
import 'package:to_do_list_app/screens/home_screen.dart';
import 'package:to_do_list_app/screens/landing_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    const ToDoListApp(),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class ToDoListApp extends StatelessWidget {
  const ToDoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const LandingScreen(),
        "/home": (context) => const HomeScreen(),
        "/add_note": (context) => const AddListScreen(),
      },
      initialRoute: "/",
      theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color.fromARGB(136, 98, 0, 255)))
          .copyWith(
        textTheme: const TextTheme(
                displaySmall: TextStyle(color: Colors.black),
                titleLarge: TextStyle(color: Colors.black),
                bodyLarge: TextStyle(color: Colors.black))
            .apply(
          fontFamily: GoogleFonts.montserrat().fontFamily,
        ),
      ),
    );
  }
}
