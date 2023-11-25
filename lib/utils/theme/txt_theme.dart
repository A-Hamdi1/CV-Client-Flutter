import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(color: Colors.black87),
    titleSmall: TextStyle(
      fontFamily: "Avenir",
      color: kprimaryTextColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    titleMedium: TextStyle(
      fontFamily: "Avenir",
      color: ksecondaryTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w200,
    ),
    titleLarge: TextStyle(
      fontFamily: "Avenir",
      fontWeight: FontWeight.bold,
      color: kprimaryTextColor,
      fontSize: 18,
    ),
    headlineMedium: TextStyle(
      fontFamily: "Avenir",
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: kprimaryTextColor,
    ),
    headlineSmall: TextStyle(
      fontFamily: "Avenir",
      fontSize: 20,
      color: kprimaryTextColor,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Avenir",
      color: ksecondaryTextColor,
      fontSize: 12,
    ),
    bodySmall: TextStyle(
      fontFamily: "Avenir",
      fontWeight: FontWeight.w700,
      fontSize: 10,
      color: Color(0xff7B8BB2),
    ),
    bodyLarge: TextStyle(
      fontFamily: "Avenir",
      color: kprimaryTextColor,
      fontSize: 14,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(color: Colors.white70),
    titleSmall: GoogleFonts.poppins(
      color: Colors.white60,
      fontSize: 24,
    ),
  );
}
