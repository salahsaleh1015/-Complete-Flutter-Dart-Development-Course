import 'package:complete_flutter_dart_development_course/weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:complete_flutter_dart_development_course/weather_app/views/search_view.dart';
import 'package:complete_flutter_dart_development_course/weather_app/widgets/no_weather_body.dart';
import 'package:complete_flutter_dart_development_course/weather_app/widgets/weather_info_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  const Text(
          'Weather App',
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SearchView()));
              },
              icon: const Icon(
                Icons.search,
              ))
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) {
          if (state is GetWeatherInitialState) {
            return const NoWeatherBody();
          } else if (state is GetWeatherLoadedState) {
            return WeatherInfoBody(
              weatherModel: state.weather,
            );
          } else {
            return const Text("oops there was an error try again later");
          }
        },
      ),
    );
  }
}
