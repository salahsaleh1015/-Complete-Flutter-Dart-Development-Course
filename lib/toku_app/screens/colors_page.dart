import 'package:complete_flutter_dart_development_course/toku_app/components/number_item.dart';
import 'package:complete_flutter_dart_development_course/toku_app/models/number_model.dart';
import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemModel> items = const [
    ItemModel(
        sound: 'sounds/colors/black.wav',
        enName: "black",
        jpName: "Kuro",
        image: 'assets/images/colors/color_black.png'),
    ItemModel(
        sound: 'sounds/colors/brown.wav',
        enName: "brown",
        jpName: "Chairo",
        image: 'assets/images/colors/color_brown.png'),
    ItemModel(
        sound: 'sounds/colors/dusty yellow.wav',
        enName: "dusty yellow",
        jpName: "Hokori ppoi kiiro",
        image: 'assets/images/colors/color_dusty_yellow.png'),
    ItemModel(
        sound: 'sounds/colors/gray.wav',
        enName: "gray",
        jpName: "Haiiro.",
        image: 'assets/images/colors/color_gray.png'),
    ItemModel(
        sound: 'sounds/colors/green.wav',
        enName: "green",
        jpName: "Midori",
        image: 'assets/images/colors/color_green.png'),
    ItemModel(
        sound: 'sounds/colors/red.wav',
        enName: "red",
        jpName: "Aka",
        image: 'assets/images/colors/color_red.png'),
    ItemModel(
        sound: 'sounds/colors/white.wav',
        enName: "white",
        jpName: "Shiro",
        image: 'assets/images/colors/color_white.png'),
    ItemModel(
        sound: 'sounds/colors/yellow.wav',
        enName: "yellow",
        jpName: "Kiiro",
        image: 'assets/images/colors/yellow.png'),

  ];
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
          backgroundColor: const Color(0xff533d35),
          title: const Text(
            "Colors",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Item(
                color:  const Color(0xff854cae),
                number: items[index]);
          },
        ));
  }
}
