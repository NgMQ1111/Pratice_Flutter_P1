import 'package:flutter/material.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class Person extends StatelessWidget {
  const Person({this.image, this.title, this.bottom, super.key});

  final String? title;
  final String? image;
  final double? bottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
        height: 188,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 135,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                'https://th.bing.com/th/id/R.915a8e7097c5f3eb4ea1b4b1162c363b?rik=XxOGIjC8hHGrmA&riu=http%3a%2f%2falexandersitcity.weebly.com%2fuploads%2f2%2f5%2f4%2f5%2f25452650%2f740883674.jpg&ehk=QIkkePOHBVKrW2e1V%2fCNkDV7%2bNLBU8uOjYADTlGvrvE%3d&risl=&pid=ImgRaw&r=0',
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
            Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: TColorTheme.backGroundCategories,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        title!,
                        style: TTextStyle.primaryTextStyle,
                      ),
                    ),
                  )),
            )
          ],
        )),
        SizedBox(height: bottom!,)
      ],
    );
  }
}
