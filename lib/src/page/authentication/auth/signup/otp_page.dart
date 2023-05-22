import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_1/src/utils/back_button.dart';
import 'package:project_1/src/utils/logos/illustration.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  static const double currentHeight = 420;

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
              otpBox(context, currentHeight)
            ],
          )
        ],
      ),
    );
  }
}

Widget otpBox(context, currentHeight) {
  late final account = TextEditingController();

  return Container(
    padding: const EdgeInsets.all(20),
    height: currentHeight,
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Enter OTP',
          style: TTextStyle.titleTextStyle,
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          "Enter 4 digit verification code sent to your registered mobile number.",
          style: TTextStyle.primaryTextStyle50_16,
        ),
        const SizedBox(
          height: 20,
        ),
        Form(
          child: Row(
            children: [
              optCode(context),
              const SizedBox(width: 10,),
              optCode(context),
              const SizedBox(width: 10,),
              optCode(context),
              const SizedBox(width: 10,),
              optCode(context),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "resend code in 00:00 sec",
          style: TTextStyle.primaryTextStyle50_16,
        ),
        const SizedBox(
          height: 20,
        ),
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

Widget optCode(context) {
  return Container(
    color: TColorTheme.lightBackgroundColor,
    height: 68,
    width: 55,
    child: TextFormField(
      onChanged: (value) {
        if(value.length == 1){
          FocusScope.of(context).nextFocus();
        }
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        disabledBorder: InputBorder.none,
      ),
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly
      ],
      textAlign: TextAlign.center,
      style: TTextStyle.otpFormStyle,
      keyboardType: TextInputType.number,
    ),
  );
}
