import 'package:flutter/material.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home Page',
          style: TTextStyle.titleTextStyle,
        ),
      ),
    );
  }
}
