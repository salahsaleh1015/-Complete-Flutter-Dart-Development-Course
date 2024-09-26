import 'package:complete_flutter_dart_development_course/toku_app/components/item.dart';
import 'package:complete_flutter_dart_development_course/toku_app/models/item_model.dart';
import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> items = const [
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      enName: "one",
      jpName: "ichi",
    ),
    ItemModel(
        sound: 'sounds/numbers/number_two_sound.mp3',
        enName: "two",
        jpName: "ni",
        image: 'assets/images/numbers/number_two.png'),
    ItemModel(
        sound: 'sounds/numbers/number_three_sound.mp3',
        enName: "three",
        jpName: "san",
        image: 'assets/images/numbers/number_three.png'),
    ItemModel(
      sound: 'sounds/numbers/number_four_sound.mp3',
        enName: "four",
        jpName: "yon",
        image: 'assets/images/numbers/number_four.png'),
    ItemModel(
        sound: 'sounds/numbers/number_five_sound.mp3',
        enName: "five",
        jpName: "go",
        image: 'assets/images/numbers/number_five.png'),
    ItemModel(
        sound: 'sounds/numbers/number_six_sound.mp3',
        enName: "six",
        jpName: "roku",
        image: 'assets/images/numbers/number_six.png'),
    ItemModel(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        enName: "seven",
        jpName: "nana",
        image: 'assets/images/numbers/number_seven.png'),
    ItemModel(
      sound: 'sounds/numbers/number_eight_sound.mp3',
        enName: "eight",
        jpName: "hachi",
        image: 'assets/images/numbers/number_eight.png'),
    ItemModel(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        enName: "nine",
        jpName: "kyu",
        image: 'assets/images/numbers/number_nine.png'),
    ItemModel(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        enName: "ten",
        jpName: "juu",
        image: 'assets/images/numbers/number_ten.png'),
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
            "Numbers",
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
                color:  const Color(0xffff9f3b),
                item: items[index]);
          },
        ));
  }
}
