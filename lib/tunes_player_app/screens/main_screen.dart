import 'package:complete_flutter_dart_development_course/tunes_player_app/component/tune_widget.dart';
import 'package:complete_flutter_dart_development_course/tunes_player_app/models/tune_model.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xfffe4039), tuneSound: 'sounds/notes/note1.wav'),
    TuneModel(color: Color(0xfffd982b), tuneSound: 'sounds/notes/note2.wav'),
    TuneModel(color: Color(0xfffdeb57), tuneSound: 'sounds/notes/note3.wav'),
    TuneModel(color: Color(0xff33af57), tuneSound:'sounds/notes/note4.wav'),
    TuneModel(color: Color(0xff009587), tuneSound: 'sounds/notes/note5.wav'),
    TuneModel(color: Color(0xff0097ed), tuneSound: 'sounds/notes/note6.wav'),
    TuneModel(color: Color(0xffa227ac), tuneSound: 'sounds/notes/note7.wav'),
  ];
  final List<Color> colors = const [
    Color(0xfffe4039),
    Color(0xfffd982b),
    Color(0xfffdeb57),
    Color(0xff33af57),
    Color(0xff009587),
    Color(0xff0097ed),
    Color(0xffa227ac),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff243139),
          title: const Text(
            'Flutter Tunes',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: List.generate(
              tunes.length,
              (index) => TuneWidget(
                    tuneModel: tunes[index],
                  )),
        ));
  }
}
