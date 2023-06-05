import 'package:flutter/material.dart';
import 'package:project_1/src/utils/back_button.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';

class Illustration extends StatelessWidget {
  const Illustration(this._context, this._heightPage, {super.key});
  final double _heightPage;
  final dynamic _context;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: TColorTheme.lightBackgroundColorAuth,
        height: MediaQuery.of(_context).size.height - _heightPage,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: backButton(context),
            ),
            const Center(
              child: Text(
                'Illustration',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ));
  }
}
