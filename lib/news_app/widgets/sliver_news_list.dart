import 'package:complete_flutter_dart_development_course/news_app/models/article_model.dart';
import 'package:complete_flutter_dart_development_course/news_app/services/news_services.dart';
import 'package:complete_flutter_dart_development_course/news_app/widgets/news_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SliverNewsList extends StatefulWidget {
  const SliverNewsList({super.key});

  @override
  State<SliverNewsList> createState() => _SliverNewsListState();
}

class _SliverNewsListState extends State<SliverNewsList> {
  List<ArticleModel> articles = [];

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(dio: Dio()).getGeneralNews();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) =>  NewsItem(
          articleModel: articles[index],
        ),
        childCount:articles.length,
      ),
    );
  }
}
