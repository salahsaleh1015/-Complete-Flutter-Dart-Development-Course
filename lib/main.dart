import 'package:complete_flutter_dart_development_course/weather_app/weather_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetWeatherCubit(),
        child: Builder(
          builder: (context) => BlocBuilder<GetWeatherCubit, GetWeatherState>(
            builder: (context, state) {
              return MaterialApp(
                theme: ThemeData(
                  appBarTheme: AppBarTheme(
                    backgroundColor: getAppThemeColor(
                      BlocProvider.of<GetWeatherCubit>(context)
                          .weather
                          ?.weatherCondition,
                    ),
                  )
                ),
                debugShowCheckedModeBanner: false,
                home: const WeatherApp(),
              );
            },
          ),
        ));
  }
}

MaterialColor getAppThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    case 'Sunny':
      return Colors.orange;
    case 'Partly cloudy':
      return Colors.lightBlue;
    case 'Cloudy':
      return Colors.grey;
    case 'Overcast':
      return Colors.blueGrey;
    case 'Mist':
      return Colors.indigo;
    case 'Patchy rain possible':
      return Colors.lightGreen;
    case 'Patchy snow possible':
    case 'Patchy sleet possible':
      return Colors.teal;
    case 'Patchy freezing drizzle possible':
      return Colors.cyan;
    case 'Thundery outbreaks possible':
      return Colors.deepPurple;
    case 'Blowing snow':
      return Colors.blue;
    case 'Blizzard':
      return Colors.blueGrey;
    case 'Fog':
      return Colors.brown;
    case 'Freezing fog':
      return Colors.grey;
    case 'Patchy light drizzle':
      return Colors.lightBlue;
    case 'Light drizzle':
      return Colors.lightBlue;
    case 'Freezing drizzle':
      return Colors.blueGrey;
    case 'Heavy freezing drizzle':
      return Colors.blueGrey;
    case 'Patchy light rain':
      return Colors.green;
    case 'Light rain':
      return Colors.green;
    case 'Moderate rain at times':
      return Colors.green;
    case 'Moderate rain':
      return Colors.green;
    case 'Heavy rain at times':
      return Colors.green;
    case 'Heavy rain':
      return Colors.red;
    case 'Light freezing rain':
      return Colors.blue;
    case 'Moderate or heavy freezing rain':
      return Colors.red;
    case 'Light sleet':
      return Colors.teal;
    case 'Moderate or heavy sleet':
      return Colors.deepOrange;
    case 'Patchy light snow':
      return Colors.blue;
    case 'Light snow':
      return Colors.lightBlue;
    case 'Patchy moderate snow':
      return Colors.lightBlue;
    case 'Moderate snow':
      return Colors.blue;
    case 'Patchy heavy snow':
      return Colors.blueGrey;
    case 'Heavy snow':
    case 'Ice pellets':
      return Colors.grey;
    case 'Light rain shower':
      return Colors.lightGreen;
    case 'Moderate or heavy rain shower':
      return Colors.green;
    case 'Torrential rain shower':
      return Colors.red;
    case 'Light sleet showers':
      return Colors.teal;
    case 'Moderate or heavy sleet showers':
      return Colors.deepOrange;
    case 'Light snow showers':
      return Colors.blue;
    case 'Moderate or heavy snow showers':
      return Colors.blueGrey;
    case 'Light showers of ice pellets':
      return Colors.grey;
    case 'Moderate or heavy showers of ice pellets':
      return Colors.grey;
    case 'Patchy light rain with thunder':
      return Colors.deepOrange;
    case 'Moderate or heavy rain with thunder':
      return Colors.red;
    case 'Patchy light snow with thunder':
      return Colors.blue;
    case 'Moderate or heavy snow with thunder':
      return Colors.blueGrey;
    default:
      return Colors.grey; // Fallback color
  }
}
// (BLOC Pattern)
// create states
// create cubit
// create methods
// provide cubit
// integrate cubit
// trigger cubit
