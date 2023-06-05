import 'package:flutter/material.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class ButtonSecond extends StatelessWidget {
  const ButtonSecond(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(82, 32),
              backgroundColor: TColorTheme.lightBackgroundColor),
          child: Text(
            title,
            style: TTextStyle.secondStyleButton_14,
          ),
        );
  }
}