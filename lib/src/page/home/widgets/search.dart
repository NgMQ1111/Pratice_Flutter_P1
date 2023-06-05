import 'package:flutter/material.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class Search extends StatelessWidget {
  Search({super.key});
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: TColorTheme.circleAvatarColor
      ),
      child: TextField(
        cursorColor: TColorTheme.textSearchColor,
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: TColorTheme.textSearchColor),
            hintText: 'Search',
            hintStyle: TTextStyle.searchTextStyle,
            suffixIcon: Icon(Icons.mic, color: TColorTheme.iconsColor,)),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    throw UnimplementedError();
  }
}
