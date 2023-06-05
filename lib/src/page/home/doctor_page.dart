import 'package:flutter/material.dart';
import 'package:project_1/src/page/home/widgets/list_doctor/card_doctor.dart';
import 'package:project_1/src/page/home/widgets/search.dart';
import 'package:project_1/src/utils/appbar_back.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarBack('Doctor'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Search(),
              const SizedBox(
                height: 20,
              ),
              customListDoctor(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customListDoctor() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'List of Doctors',
          style: TTextStyle.primaryTextStyleW600_20,
        ),
        const SizedBox(
          height: 20,
        ),
        const CardDoctor(bottom: 20,),
        const CardDoctor(bottom: 20,),
        const CardDoctor(bottom: 20,),
        const CardDoctor(bottom: 20,),
        const CardDoctor(bottom: 20,),
        const CardDoctor(bottom: 20,),
        const CardDoctor(bottom: 20,),
        const CardDoctor(bottom: 20,),

      ],
    );
