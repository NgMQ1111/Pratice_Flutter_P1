import 'package:flutter/material.dart';
import 'package:project_1/src/page/authentication/auth/login/login_page.dart';
import 'package:project_1/src/page/authentication/auth/signup/signup_page.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';
import 'package:project_1/src/utils/logos/illustration.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  static const double currentHeightPage = 500;
  bool isLogIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Illustration(context, currentHeightPage),
              isLogIn ? const LoginPage(currentHeightPage) : const SignUpPage(currentHeightPage),
            ],
          ),
          Positioned(
            bottom: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isLogIn ? "Don't have an account?" : "Already have an account?",
                  style: TTextStyle.primaryTextStyle50,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        isLogIn = !isLogIn;
                      });
                    },
                    child: Text(
                      isLogIn ? 'Sign up' : 'Log In',
                      style: TTextStyle.primaryTextStyle,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
