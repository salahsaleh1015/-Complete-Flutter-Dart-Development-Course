


import 'package:complete_flutter_dart_development_course/news_app/widgets/builders/sliver_news_list_builder.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverNewsListBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
