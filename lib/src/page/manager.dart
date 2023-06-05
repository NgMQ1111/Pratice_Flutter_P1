import 'package:flutter/material.dart';
import 'package:project_1/src/page/booking/booking_page.dart';
import 'package:project_1/src/page/category/category_page.dart';
import 'package:project_1/src/page/chats/chat_page.dart';
import 'package:project_1/src/page/home/home_page.dart';
import 'package:project_1/src/page/profile/profile_page.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class Manager extends StatefulWidget {
  const Manager({super.key});

  @override
  State<Manager> createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  int indexNavigation = 1;

  final screensPage = [
    const HomePage(),
    const CategoryPage(),
    const BookingPage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensPage[indexNavigation],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            backgroundColor: TColorTheme.navigationBarBottomColor,
            height: 64,
            indicatorColor: Colors.transparent,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            labelTextStyle:
                MaterialStatePropertyAll(TTextStyle.primaryTextStyleW600_14),
            iconTheme: const MaterialStatePropertyAll(IconThemeData(size: 25))),
        child: NavigationBar(
          animationDuration: const Duration(seconds: 1),
          selectedIndex: indexNavigation,
          onDestinationSelected: (index) => setState(() {
            indexNavigation = index;
          }),
          destinations: [
            // // NavigationDestination(icon: Icon(Icons.mark_unread_chat_alt_outlined), label: 'Chat',)
            buildNavigationDestination(Icons.home_outlined, 'Home'),
            buildNavigationDestination(Icons.category_outlined, 'Category'),
            buildNavigationDestination(Icons.access_time, 'Booking'),
            buildNavigationDestination(Icons.chat_outlined, 'Chat'),
            buildNavigationDestination(Icons.person, 'Profile'),
          ],
        ),
      ),
    );
  }
}

Widget buildNavigationDestination(IconData icon, String title) {
  return NavigationDestination(
    selectedIcon: Icon(icon),
    icon: Icon(
      icon,
      color: Colors.black38,
    ),
    label: title,
  );
}
