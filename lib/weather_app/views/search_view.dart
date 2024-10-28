import 'package:complete_flutter_dart_development_course/weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,

            )),

        title: const Text(
          'Weather App',

        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          onSubmitted: (value) async {
            BlocProvider.of<GetWeatherCubit>(context)
                .getWeather(cityName: value);
            Navigator.pop(context);
          },
          decoration: const InputDecoration(
              suffixIcon: Icon(Icons.search),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              labelText: 'Search ',
              hintText: 'Enter city name',
              border: OutlineInputBorder()),
        ),
      )),
    );
  }
}
