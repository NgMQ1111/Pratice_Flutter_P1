import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayMedium: GoogleFonts.interTight(
      color: Colors.black87,
    ),
    titleSmall: GoogleFonts.interTight(
      color: Colors.black54,
      fontSize: 24,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayMedium: GoogleFonts.interTight(
      color: Colors.white70,
    ),
    titleSmall: GoogleFonts.interTight(
      color: Colors.white60,
      fontSize: 24,
    ),
  );
}