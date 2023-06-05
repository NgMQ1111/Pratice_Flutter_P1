import 'package:flutter/material.dart';
import 'package:project_1/src/page/authentication/auth_page.dart';
import 'package:project_1/src/page/logo_page.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    void handleLogout() async {
      await Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const LogoPage()),
          (route) => false);
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Profile',
            style: TTextStyle.textStyleAppBar,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/R.915a8e7097c5f3eb4ea1b4b1162c363b?rik=XxOGIjC8hHGrmA&riu=http%3a%2f%2falexandersitcity.weebly.com%2fuploads%2f2%2f5%2f4%2f5%2f25452650%2f740883674.jpg&ehk=QIkkePOHBVKrW2e1V%2fCNkDV7%2bNLBU8uOjYADTlGvrvE%3d&risl=&pid=ImgRaw&r=0'),
                  radius: 50,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  buildListTitle(Icons.history, 'History'),
                  buildListTitle(Icons.person, 'Personal Details'),
                  buildListTitle(Icons.location_on, 'Address'),
                  buildListTitle(Icons.payment, 'Payment Method'),
                  buildListTitle(Icons.info_rounded, 'About'),
                  buildListTitle(Icons.help_outline_outlined, 'Help'),
                  buildListTitle(Icons.logout, 'Logout',
                      handleOnTap: handleLogout),
                ],
              )
            ],
          ),
        ));
  }
}

Widget buildListTitle(IconData iconLead, String title,
        {void Function()? handleOnTap}) =>
    ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: CircleAvatar(
        radius: 15,
        backgroundColor: TColorTheme.circleAvatarColor,
        child: Icon(
          iconLead,
          color: TColorTheme.iconsColor,
          size: 20,
        ),
      ),
      title: Container(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          title,
          style: TTextStyle.textStyleAppBar,
        ),
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right_rounded,
        color: TColorTheme.iconsColor,
        size: 35,
      ),
      onTap: handleOnTap,
    );
