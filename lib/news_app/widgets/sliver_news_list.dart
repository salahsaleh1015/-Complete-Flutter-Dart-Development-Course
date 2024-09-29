import 'package:complete_flutter_dart_development_course/news_app/widgets/news_item.dart';
import 'package:flutter/material.dart';

class SliverNewsList extends StatelessWidget {
  const SliverNewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverList(

      delegate: SliverChildBuilderDelegate(

        (context, index) => const NewsItem(),
        childCount: 10,
      ),

    );
  }
}