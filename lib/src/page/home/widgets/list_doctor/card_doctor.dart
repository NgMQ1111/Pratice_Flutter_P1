import 'package:flutter/material.dart';
import 'package:project_1/src/page/home/widgets/list_doctor/button_primary.dart';
import 'package:project_1/src/page/home/widgets/list_doctor/button_second.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class CardDoctor extends StatelessWidget {
  const CardDoctor({super.key, this.bottom});

  final double? bottom;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Padding(
      padding: EdgeInsets.only(bottom: bottom!),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        color: TColorTheme.cardBackgroundColorV2,
        child: Row(
          children: [
            const SizedBox(
              width: 120,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/R.915a8e7097c5f3eb4ea1b4b1162c363b?rik=XxOGIjC8hHGrmA&riu=http%3a%2f%2falexandersitcity.weebly.com%2fuploads%2f2%2f5%2f4%2f5%2f25452650%2f740883674.jpg&ehk=QIkkePOHBVKrW2e1V%2fCNkDV7%2bNLBU8uOjYADTlGvrvE%3d&risl=&pid=ImgRaw&r=0'),
                radius: 30,
              ),
            ),
            Expanded(child: information())
          ],
        ),
      ),
    ));
  }
}

Widget information() => Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
      child: Column(
        children: [
          textInfo(),
          const SizedBox(
            height: 20,
          ),
          buttonsAction()
        ],
      ),
    );

Widget textInfo() => SizedBox(
      // height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dr. Andrew',
            style: TTextStyle.cardTitleTextStyleV2,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            'Dentist',
            style: TTextStyle.cardSubTitleTextStyleV2,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general dentistry and offers a range of services.',
            style: TTextStyle.cardDescriptionTextStyleV2,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );

Widget buttonsAction() => const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ButtonPrimary('Available'), ButtonSecond('Book')],
    );
