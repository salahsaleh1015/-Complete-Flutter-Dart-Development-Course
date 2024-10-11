import 'package:complete_flutter_dart_development_course/news_app/models/article_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../services/news_services.dart';
import '../lists/sliver_news_list.dart';

class SliverNewsListBuilder extends StatefulWidget {
  const SliverNewsListBuilder({super.key});

  @override
  State<SliverNewsListBuilder> createState() => _SliverNewsListBuilderState();
}

class _SliverNewsListBuilderState extends State<SliverNewsListBuilder> {
  List<ArticleModel> articles = [];
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(dio: Dio()).getGeneralNews();
    isLoaded = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoaded
        ? SliverNewsList(
      articles: articles,
    )
        : const SliverFillRemaining(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
