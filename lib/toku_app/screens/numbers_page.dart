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
          NumberItem(number: one),
        ],
      )
    );
  }
}

