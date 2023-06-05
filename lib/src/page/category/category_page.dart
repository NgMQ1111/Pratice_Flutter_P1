import 'package:flutter/material.dart';
import 'package:project_1/src/page/category/person.dart';
import 'package:project_1/src/page/home/widgets/search.dart';
import 'package:project_1/src/utils/appbar_back.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarBack('Category'),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Search(),
              const SizedBox(
                height: 20,
              ),
              const Person(
                title: 'Doctor',
                bottom: 20,
              ),
              const Person(
                title: 'Doctor',
                bottom: 20,
              ),
              const Person(
                title: 'Doctor',
                bottom: 20,
              ),
              const Person(
                title: 'Doctor',
                bottom: 20,
              ),
              const Person(
                title: 'Doctor',
                bottom: 20,
              ),
              const Person(
                title: 'Doctor',
                bottom: 20,
              ),
            ],
          ),
        )));
  }
}
