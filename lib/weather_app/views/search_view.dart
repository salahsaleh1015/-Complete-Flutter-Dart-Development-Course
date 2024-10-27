import 'dart:developer';

import 'package:complete_flutter_dart_development_course/weather_app/models/weather_model.dart';
import 'package:complete_flutter_dart_development_course/weather_app/services/weather_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

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
              color: Colors.white,
            )),
        backgroundColor: const Color(0xff2196f4),
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          onSubmitted: (value) async {

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


