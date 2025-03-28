part of 'get_weather_cubit.dart';


class GetWeatherState {}

final class GetWeatherInitialState extends GetWeatherState {}
final class GetWeatherLoadedState extends GetWeatherState {
  final WeatherModel weather;
  GetWeatherLoadedState({required this.weather});
}
final class GetWeatherLoadingState extends GetWeatherState {}
final class GetWeatherFailureState extends GetWeatherState {}
final class GetWeatherNoWeatherState extends GetWeatherState {}
