
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String tuneSound;

 const TuneModel({required this.color, required this.tuneSound});


  void playTuneSound() {
    final player = AudioPlayer();
    player.play(AssetSource(tuneSound));
  }

}