import 'package:complete_flutter_dart_development_course/weather_app/views/search_view.dart';
import 'package:complete_flutter_dart_development_course/weather_app/widgets/no_weather_body.dart';
import 'package:complete_flutter_dart_development_course/weather_app/widgets/weather_info_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2196f4),
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SearchView()));
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: weather == null ? const NoWeatherBody() : const WeatherInfoBody(),
    );
  }
}
