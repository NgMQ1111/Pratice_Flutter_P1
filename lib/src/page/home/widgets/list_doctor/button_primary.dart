import 'package:flutter/material.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(110,32),
              backgroundColor: TColorTheme.darkBackgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )),
          child: Text(
            title,
            style: TTextStyle.primaryStyleButton_14,
          ),
        );
  }
}