import 'package:complete_flutter_dart_development_course/toku_app/components/number_item.dart';
import 'package:complete_flutter_dart_development_course/toku_app/models/number_model.dart';
import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final Number one = const Number(
    image: 'assets/images/numbers/number_one.png',
    enName: "one",
    jpName: "ichi",
  );

  final List<Number> numbers = const [
    Number(
      image: 'assets/images/numbers/number_one.png',
      enName: "one",
      jpName: "ichi",
    ),
    Number(
        enName: "two",
        jpName: "ni",
        image: 'assets/images/numbers/number_two.png'),
    Number(
        enName: "three",
        jpName: "san",
        image: 'assets/images/numbers/number_three.png'),
    Number(
        enName: "four",
        jpName: "yon",
        image: 'assets/images/numbers/number_four.png'),
    Number(
        enName: "five",
        jpName: "go",
        image: 'assets/images/numbers/number_five.png'),
    Number(
        enName: "six",
        jpName: "roku",
        image: 'assets/images/numbers/number_six.png'),
    Number(
        enName: "seven",
        jpName: "nana",
        image: 'assets/images/numbers/number_seven.png'),
    Number(
        enName: "eight",
        jpName: "hachi",
        image: 'assets/images/numbers/number_eight.png'),
    Number(
        enName: "nine",
        jpName: "kyu",
        image: 'assets/images/numbers/number_nine.png'),
    Number(
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
        body: ListView(
          children: [
            NumberItem(number: numbers[0]),
            NumberItem(number: numbers[1]),
            NumberItem(number: numbers[2]),
            NumberItem(number: numbers[3]),
            NumberItem(number: numbers[4]),
            NumberItem(number: numbers[5]),
            NumberItem(number: numbers[6]),
            NumberItem(number: numbers[7]),
            NumberItem(number: numbers[8]),
            NumberItem(number: numbers[9]),
            NumberItem(number: numbers[10]),

          ],
        ));
  }
}
