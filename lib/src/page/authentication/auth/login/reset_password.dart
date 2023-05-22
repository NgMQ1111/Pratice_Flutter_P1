import 'package:flutter/material.dart';
import 'package:project_1/src/utils/back_button.dart';
import 'package:project_1/src/utils/logos/illustration.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  static const double currentHeight = 380;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: backButton(context),
          ),
          Column(
            children: [
              Illustration(context, currentHeight),
              forgotBox(context, currentHeight)
            ],
          )
        ],
      ),
    );
  }
}

Widget forgotBox(context, currentHeight) {
  late final newPassword = TextEditingController();
  late final confirmPassword = TextEditingController();

  return Container(
    padding: const EdgeInsets.all(20),
    height: currentHeight,
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reset',
          style: TTextStyle.titleTextStyle,
        ),
        Text(
          'Password?',
          style: TTextStyle.titleTextStyle,
        ),
        const SizedBox(height: 25,),
        Form(
            child: TextFormField(
          decoration: const InputDecoration(
            label: Text('New Password'),
          ),
          controller: newPassword,
        )),
        const SizedBox(height: 15,),
        Form(
            child: TextFormField(
          decoration: const InputDecoration(
            label: Text('Confirm New Password'),
          ),
          controller: confirmPassword,
        )),
        const SizedBox(height: 40,),
        SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(backgroundColor: TColorTheme.buttonPrimaryColor),
            child: Text('Submit', style: TTextStyle.primaryStyleButton),
          ),
        )
      ],
    ),
  );
}
