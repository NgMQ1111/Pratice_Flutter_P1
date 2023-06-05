import 'package:flutter/material.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class ActiveUser extends StatefulWidget {
  const ActiveUser({super.key});

  final String avatar = 'a';

  @override
  State<ActiveUser> createState() => _ActiveUserState();
}

class _ActiveUserState extends State<ActiveUser> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Active',
              style: TTextStyle.primaryTextStyleW600_22,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                avatarUser(distance: 20),
                avatarUser(distance: 20),
                avatarUser(distance: 20),
                avatarUser(distance: 20),
                avatarUser(distance: 20),
                avatarUser(distance: 20),
                avatarUser(distance: 20),
                avatarUser(distance: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget avatarUser({required double distance}) => Padding(
      padding: EdgeInsets.only(right: distance),
      child: const CircleAvatar(
        backgroundImage: NetworkImage(
            'https://th.bing.com/th/id/R.915a8e7097c5f3eb4ea1b4b1162c363b?rik=XxOGIjC8hHGrmA&riu=http%3a%2f%2falexandersitcity.weebly.com%2fuploads%2f2%2f5%2f4%2f5%2f25452650%2f740883674.jpg&ehk=QIkkePOHBVKrW2e1V%2fCNkDV7%2bNLBU8uOjYADTlGvrvE%3d&risl=&pid=ImgRaw&r=0'),
        radius: 40,
      ),
    );
