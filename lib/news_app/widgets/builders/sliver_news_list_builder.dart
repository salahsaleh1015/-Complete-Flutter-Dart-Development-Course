import 'package:complete_flutter_dart_development_course/news_app/models/article_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../services/news_services.dart';
import '../lists/sliver_news_list.dart';

class SliverNewsListBuilder extends StatefulWidget {
  const SliverNewsListBuilder({super.key, required this.category});
  final String category;
  @override
  State<SliverNewsListBuilder> createState() => _SliverNewsListBuilderState();
}

class _SliverNewsListBuilderState extends State<SliverNewsListBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(dio: Dio()).getGeneralNews(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SliverNewsList(
              articles: snapshot.data ?? [],
            );
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
              child: Center(
                child: Text('oops there is no news'),
              ),
            );
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
