import 'package:flutter/material.dart';

class TColorTheme {
  // Background Color
  static Color lightBackgroundColor = const Color(0xFFD9D9D9);
  static Color darkBackgroundColor = Colors.black;

  // Background Color Button
  static MaterialStateProperty<Color?> buttonPrimaryColor =
      MaterialStateProperty.all(const Color(0xFF505050));
  static MaterialStateProperty<Color?> buttonSecondColor =
      MaterialStateProperty.all(const Color(0xFFD9D9D9));

  // Color Icons

  static Color iconsColor = const Color(0xFF000000);

  // Color Texts

  static Color textPrimaryColor = const Color(0xFF000000);
  static Color textPrimaryColor50 = const Color.fromRGBO(0, 0, 0, 0.5);
  static Color textWhiteColor = const Color(0xFFFFFFFF);

}
