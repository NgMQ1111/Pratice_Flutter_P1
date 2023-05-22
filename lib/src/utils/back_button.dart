import 'package:flutter/material.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

Widget backButton(context) {
  return GestureDetector(
    onTap: () => Navigator.of(context).pop(),
    child: Row(
      children: [
        Icon(Icons.arrow_back_ios_new, color: TColorTheme.iconsColor, size: 18,),
        const SizedBox(width: 10,),
        Text(
          'Back',
          style: TTextStyle.primaryTextStyleW600,
        )
      ],
    ),
  );
}
