import 'package:complete_flutter_dart_development_course/weather_app/models/weather_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../services/weather_services.dart';

part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherInitialState());

   late WeatherModel weather;
  void getWeather({required String cityName}) async {
    try {
      weather = await WeatherServices(dio: Dio())
          .getCurrentWeather(location: cityName);
      emit(GetWeatherLoadedState());
    } catch (e) {
      emit(GetWeatherInitialState());
    }
  }
}
