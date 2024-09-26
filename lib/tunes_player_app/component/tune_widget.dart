import 'package:complete_flutter_dart_development_course/tunes_player_app/models/tune_model.dart';
import 'package:flutter/material.dart';

class TuneWidget extends StatelessWidget {
  const TuneWidget({super.key, required this.tuneModel});

  final TuneModel tuneModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: GestureDetector(
          onTap: tuneModel.playTuneSound,
          child: Container(
            color: tuneModel.color,
            width: double.infinity,
          ),
        ));
  }
}
