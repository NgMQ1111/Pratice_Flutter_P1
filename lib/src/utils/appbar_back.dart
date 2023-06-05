import 'package:flutter/material.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class AppBarBack extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBack(this.title,{super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(title, style: TTextStyle.textStyleAppBar,),
      centerTitle: true,
      // leading: GestureDetector(
      //   onTap: () => Navigator.of(context).pop(),
      //   child: Icon(
      //     Icons.keyboard_arrow_left_rounded,
      //     color: TColorTheme.iconsColor,
      //     size: 35,
      //   ),
      // ),
      // automaticallyImplyLeading: !Navigator.canPop(context),
      leading: !Navigator.canPop(context) ? null : IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(
          Icons.keyboard_arrow_left_rounded,
          color: TColorTheme.iconsColor,
          size: 45,
        ),
      ),
      backgroundColor: TColorTheme.lightBackgroundColor,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
