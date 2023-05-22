import 'package:flutter/material.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_theme.dart';

class ThemeApp {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      primaryColor: TColorTheme.lightBackgroundColor,
      scaffoldBackgroundColor: TColorTheme.lightBackgroundColor,
      );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
      primaryColor: TColorTheme.darkBackgroundColor,
      scaffoldBackgroundColor: TColorTheme.darkBackgroundColor,
      );
}
