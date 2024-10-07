import 'package:complete_flutter_dart_development_course/news_app/models/article_model.dart';
import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService({required this.dio});



  Future<List<ArticleModel>> getGeneralNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=6172931f0d354e2ab0704a5fa16a19a9');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        title: article['title'],
        description: article['description'],
        urlToImage: article['urlToImage'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
