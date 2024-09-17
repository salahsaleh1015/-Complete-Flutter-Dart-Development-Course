


import 'package:complete_flutter_dart_development_course/toku_app/models/number_model.dart';
import 'package:flutter/material.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffff9f3b),
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xfffffde4),
              child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(fontSize: 21, color: Colors.white),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(fontSize: 21, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 27,
              ))
        ],
      ),
    );
  }
}
