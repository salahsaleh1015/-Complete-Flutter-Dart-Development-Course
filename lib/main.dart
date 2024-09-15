import 'package:complete_flutter_dart_development_course/basketball_points_counter_app/basketball_points_counter_app.dart';
import 'package:complete_flutter_dart_development_course/birthday_card_app/birthday_card_app.dart';
import 'package:complete_flutter_dart_development_course/business_card_app/business_card_app.dart';
import 'package:complete_flutter_dart_development_course/toku_app/screens/toku_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(

      debugShowCheckedModeBanner: false,
      home: TokuApp(),
    );
  }
}


