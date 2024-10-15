import 'package:complete_flutter_dart_development_course/weather_app/widgets/no_weather_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: const NoWeatherBody(),
    );
  }
}
