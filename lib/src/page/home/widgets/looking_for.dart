import 'package:flutter/material.dart';
import 'package:project_1/src/page/category/category_page.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class LookingFor extends StatelessWidget {
  const LookingFor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Looking For',
                  style: TTextStyle.titleTextStyle,
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CategoryPage())),
                  child: Text(
                    'More',
                    style: TTextStyle.primaryTextStyle50_16,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customCategorie('Doctors'),
                customCategorie('Dentists'),
                customCategorie('Hairdressers'),
                customCategorie('Personal Trainers'),
                customCategorie('Doctors'),
                customCategorie('Dentists'),
                customCategorie('Hairdressers'),
                customCategorie('Personal Trainers'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget customCategorie(String title, {String? image}) => Container(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Image.network(
            'https://th.bing.com/th/id/R.915a8e7097c5f3eb4ea1b4b1162c363b?rik=XxOGIjC8hHGrmA&riu=http%3a%2f%2falexandersitcity.weebly.com%2fuploads%2f2%2f5%2f4%2f5%2f25452650%2f740883674.jpg&ehk=QIkkePOHBVKrW2e1V%2fCNkDV7%2bNLBU8uOjYADTlGvrvE%3d&risl=&pid=ImgRaw&r=0',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TTextStyle.primaryTextStyleW600_12,
          )
        ],
      ),
    );
