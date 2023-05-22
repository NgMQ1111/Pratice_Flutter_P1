import 'package:flutter/material.dart';
import 'package:project_1/src/page/authentication/auth/login/reset_password.dart';
import 'package:project_1/src/utils/back_button.dart';
import 'package:project_1/src/utils/logos/illustration.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
  late final account = TextEditingController();

  return Container(
    padding: const EdgeInsets.all(20),
    height: currentHeight,
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Forgot',
          style: TTextStyle.titleTextStyle,
        ),
        Text(
          'your Password?',
          style: TTextStyle.titleTextStyle,
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          "Please enter the email address you'd like your password reset information sent to",
          style: TTextStyle.primaryTextStyle50_16,
        ),
        const SizedBox(
          height: 20,
        ),
        Form(
            child: TextFormField(
          decoration: const InputDecoration(
            label: Text('Email Address/ Mobile Number'),
          ),
          controller: account,
        )),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          height: 50,
          child: ElevatedButton(
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ResetPassword())),
            style: ButtonStyle(backgroundColor: TColorTheme.buttonPrimaryColor),
            child: Text('Submit', style: TTextStyle.primaryStyleButton),
          ),
        )
      ],
    ),
  );
}
