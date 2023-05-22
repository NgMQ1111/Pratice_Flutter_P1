import 'package:flutter/material.dart';
import 'package:project_1/src/page/authentication/auth/signup/otp_page.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage(this.currentHeight, {super.key});
  final double currentHeight;

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final _email = TextEditingController();
  late final _fullname = TextEditingController();
  late final _phoneNumber = TextEditingController();
  late final double _height;

  @override
  void initState() {
    _height = widget.currentHeight;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: _height,
      color: Colors.white,
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Sign up',
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
                decoration: const InputDecoration(labelText: 'Full Name'),
                controller: _fullname,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Mobile Number'),
                controller: _phoneNumber,
              ),
            ],
          )),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 40,
            child: Wrap(
              alignment: WrapAlignment.start,
              children: [
                Text(
                  'By signing up, you are agree to our ',
                  style: TTextStyle.primaryTextStyle50_16,
                ),
                Text(
                  'Terms & Conditions ',
                  style: TTextStyle.primaryTextStyle_16,
                ),
                Text(
                  'and ',
                  style: TTextStyle.primaryTextStyle50_16,
                ),
                Text(
                  'Policies',
                  style: TTextStyle.primaryTextStyle_16,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity - 40,
            height: 50,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const OTPPage())),
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
        ],
      ),
    );
  }
}
