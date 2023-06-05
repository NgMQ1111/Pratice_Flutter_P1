import 'package:flutter/material.dart';
import 'package:project_1/src/page/authentication/auth_page.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColorTheme.lightBackgroundColorAuth,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            const Center(
              // heightFactor: 100,
              child: Text('Logo',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
            ),
            Positioned(
                bottom: 50,
                // width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  // width: 460,
                  // Tru di khoang cach 2 ben padding
                  width: MediaQuery.of(context).size.width - 40,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () async {
                      await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AuthPage(),
                      ));
                    },
                    style: ButtonStyle(
                        // padding: MaterialStateProperty.all(EdgeInsets.zero),
                        backgroundColor: TColorTheme.buttonPrimaryColor),
                    child: Text("Let's Go", style: TTextStyle.primaryStyleButton,),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
