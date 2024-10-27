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
      child: const  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WeatherApp(),
      ),
    );
  }
}


// (BLOC Pattern)
// create states
// create cubit
// create methods
// provide cubit
// integrate cubit
// trigger cubit
