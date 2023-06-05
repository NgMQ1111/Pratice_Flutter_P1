import 'package:flutter/material.dart';
import 'package:project_1/src/page/home/doctor_page.dart';
import 'package:project_1/src/page/home/widgets/list_doctor/card_doctor.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class ListOfDoctors extends StatelessWidget {
  const ListOfDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'List of Doctors',
              style: TTextStyle.primaryTextStyleW600_20,
            ),
            TextButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const DoctorPage())),
              child: Text(
                'More',
                style: TTextStyle.primaryTextStyle50_16,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const CardDoctor(bottom: 10,),
        const CardDoctor(bottom: 10,),
        const CardDoctor(bottom: 10,),
      ],
    );
  }
}