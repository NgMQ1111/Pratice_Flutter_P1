import 'package:flutter/material.dart';
import 'package:project_1/src/page/home/widgets/list_doctor/list_doctors.dart';
import 'package:project_1/src/page/home/widgets/looking_for.dart';
import 'package:project_1/src/page/home/widgets/popular.dart';
import 'package:project_1/src/page/home/widgets/user.dart';
import 'package:project_1/src/page/home/widgets/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: User(),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Search(),
          ),
          const SizedBox(
            height: 20,
          ),
          const LookingFor(),
          const SizedBox(
            height: 20,
          ),
          const Popular(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListOfDoctors(),
          ),
        ],
      ),
    ));
  }
}
