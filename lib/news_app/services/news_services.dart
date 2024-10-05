import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService({required this.dio});

  getGeneralNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?category=general&apiKey=6172931f0d354e2ab0704a5fa16a19a9');
  }
}
