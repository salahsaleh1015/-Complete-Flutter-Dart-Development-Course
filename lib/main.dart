import 'package:complete_flutter_dart_development_course/news_app/news_app.dart';
import 'package:complete_flutter_dart_development_course/toku_app/toku_app.dart';
import 'package:complete_flutter_dart_development_course/tunes_player_app/tunes_player_app.dart';
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
      home: NewsApp(),
    );
  }
}


