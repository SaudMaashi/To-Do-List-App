import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list_app/screens/home_screen.dart';
import 'package:to_do_list_app/screens/landing_screen.dart';
import 'package:to_do_list_app/utilities/constants.dart';
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
      },
      initialRoute: "/",
      theme: ThemeData(
              useMaterial3: false, scaffoldBackgroundColor: kSecondaryColor)
          .copyWith(
        textTheme: TextTheme(
          displayLarge: GoogleFonts.roboto(color: kPrimaryColor),
          displayMedium: GoogleFonts.montserrat(color: kPrimaryColor),
          displaySmall: GoogleFonts.montserrat(color: kPrimaryColor),
          headlineLarge: GoogleFonts.montserrat(color: kPrimaryColor),
          headlineMedium: GoogleFonts.montserrat(color: kPrimaryColor),
          headlineSmall: GoogleFonts.montserrat(color: kPrimaryColor),
          titleLarge: GoogleFonts.montserrat(color: kPrimaryColor),
          titleMedium: GoogleFonts.montserrat(color: kPrimaryColor),
          titleSmall: GoogleFonts.montserrat(color: kPrimaryColor),
          bodyLarge: GoogleFonts.montserrat(color: kPrimaryColor),
          bodyMedium: GoogleFonts.montserrat(color: kPrimaryColor),
          bodySmall: GoogleFonts.montserrat(color: kPrimaryColor),
          labelLarge: GoogleFonts.montserrat(color: kPrimaryColor),
          labelMedium: GoogleFonts.montserrat(color: kPrimaryColor),
          labelSmall: GoogleFonts.montserrat(color: kPrimaryColor),
        ),
      ),
    );
  }
}
