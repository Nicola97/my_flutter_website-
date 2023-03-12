import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class MyTheme {
  static TextTheme textTheme = TextTheme(
    headlineMedium:
        GoogleFonts.roboto(fontSize: 18.0, fontWeight: FontWeight.w400),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    ),
  );

  static ThemeData lighTheme = ThemeData(
    primaryColor: Colors.blue,
    colorScheme: const ColorScheme.light(
        secondary: Colors.white, background: Colors.black),
    scaffoldBackgroundColor: Color.fromARGB(41, 136, 120, 106),
    textTheme: textTheme,
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    colorScheme:
        ColorScheme.light(secondary: Colors.yellow, background: Colors.grey),
    textTheme: textTheme,
  );
}
