import 'package:flutter/material.dart';
import 'package:project_1/src/page/authentication/auth/login/forgot_password.dart';
import 'package:project_1/src/page/home/home_page.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage(this.currentHeight, {super.key});
  final double currentHeight;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final _email = TextEditingController();
  late final _password = TextEditingController();
  late final double _height;

  @override
  void initState() {
    _height = widget.currentHeight;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void handleLogin() async {
      await Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const HomePage()),
          (route) => false);
    }

    return Container(
      padding: const EdgeInsets.all(20),
      height: _height,
      color: Colors.white,
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Log in',
              style: TTextStyle.titleTextStyle,
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
              child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email Address'),
                controller: _email,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                controller: _password,
              ),
            ],
          )),
          const SizedBox(
            height: 10,
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ForgotPassword())),
                child: Text('Forgot Password?',
                    style: TTextStyle.primaryTextStyleW600),
              )),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity - 40,
            height: 50,
            child: ElevatedButton(
              onPressed: handleLogin,
              style:
                  ButtonStyle(backgroundColor: TColorTheme.buttonPrimaryColor),
              child: Text(
                'Continue',
                style: TTextStyle.primaryStyleButton,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'or',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity - 40,
            height: 50,
            child: ElevatedButton(
              onPressed: handleLogin,
              style:
                  ButtonStyle(backgroundColor: TColorTheme.buttonSecondColor),
              child: Text(
                'Continue with Google',
                style: TTextStyle.secondStyleButton,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
