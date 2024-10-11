import 'package:complete_flutter_dart_development_course/news_app/models/article_model.dart';
import 'package:complete_flutter_dart_development_course/news_app/services/news_services.dart';
import 'package:complete_flutter_dart_development_course/news_app/widgets/items/news_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SliverNewsList extends StatelessWidget {
  const SliverNewsList({super.key, required this.articles});
  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) => NewsItem(
        articleModel: articles[index],
      ),
      childCount: articles.length,
    ));
  }
}

