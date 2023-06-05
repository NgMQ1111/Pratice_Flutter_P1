import 'package:flutter/material.dart';
import 'package:project_1/src/page/chats/call/phone_call.dart';
import 'package:project_1/src/utils/appbar_back.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class AppBarConversation extends AppBarBack {
  const AppBarConversation(super.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const PhoneCall())),
          icon: Icon(
            Icons.phone,
            color: TColorTheme.iconsAppBar,
            size: 30,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.video_call_outlined,
            color: TColorTheme.iconsAppBar,
            size: 35,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
      elevation: 0,
      title: Text(
        title,
        style: TTextStyle.textStyleAppBar,
      ),
      centerTitle: true,
      leading: !Navigator.canPop(context)
          ? null
          : IconButton(
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
}
