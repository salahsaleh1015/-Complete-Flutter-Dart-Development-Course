import 'package:complete_flutter_dart_development_course/weather_app/models/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherServices {
  final Dio dio;
  WeatherServices({required this.dio});
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '5a562aba97624b50ba8193730241610';

  Future<WeatherModel> getCurrentWeather({required String location}) async {
    Response response = await dio.get(
        '/forecast.json?key=$apiKey&q=$location&days=1');
    WeatherModel weather = WeatherModel.fromJson(response.data);
    return weather;
  }
}
