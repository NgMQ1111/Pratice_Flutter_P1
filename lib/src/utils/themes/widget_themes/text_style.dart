import 'package:flutter/material.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';

class TTextStyle {

  // Text Form Field
  static TextStyle otpFormStyle = TextStyle(
      backgroundColor: TColorTheme.lightBackgroundColor,
      color: TColorTheme.textPrimaryColor,
      fontSize: 32,
      fontWeight: FontWeight.w500);

  // Text Style Buttons
  static TextStyle primaryStyleButton = TextStyle(
      color: TColorTheme.textWhiteColor,
      fontSize: 18,
      fontWeight: FontWeight.w500);

  static TextStyle secondStyleButton = TextStyle(
      color: TColorTheme.textPrimaryColor,
      fontSize: 18,
      fontWeight: FontWeight.w500);

  // Text Style

  static TextStyle titleTextStyle =
      const TextStyle(fontSize: 32, fontWeight: FontWeight.w600);
      
  // font size 18

  static TextStyle primaryTextStyle = TextStyle(
      color: TColorTheme.textPrimaryColor,
      fontSize: 18,
      fontWeight: FontWeight.w500);

  static TextStyle primaryTextStyle50 = TextStyle(
      color: TColorTheme.textPrimaryColor50,
      fontSize: 18,
      fontWeight: FontWeight.w500);

  static TextStyle primaryTextStyleW600 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: TColorTheme.textPrimaryColor);

  // font size 16

  static TextStyle primaryTextStyle_16 = TextStyle(
      color: TColorTheme.textPrimaryColor,
      fontSize: 16,
      fontWeight: FontWeight.w500);

  static TextStyle primaryTextStyle50_16 = TextStyle(
      color: TColorTheme.textPrimaryColor50,
      fontSize: 16,
      fontWeight: FontWeight.w500);
      
  static TextStyle primaryTextStyleW600_16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: TColorTheme.textPrimaryColor);
}
