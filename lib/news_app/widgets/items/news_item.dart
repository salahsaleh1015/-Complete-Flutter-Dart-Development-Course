import 'package:complete_flutter_dart_development_course/news_app/models/article_model.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image(
              fit: BoxFit.fill,
              width: double.infinity,
              height: 200,
              image: NetworkImage(articleModel.urlToImage ?? "https://i.pinimg.com/736x/49/e5/8d/49e58d5922019b8ec4642a2e2b9291c2.jpg")),
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          articleModel.description ?? "NO DESCRIPTION",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
