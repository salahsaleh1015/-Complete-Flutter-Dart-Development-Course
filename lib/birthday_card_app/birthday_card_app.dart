import 'package:flutter/material.dart';

class BirthdayCardApp extends StatelessWidget {
  const BirthdayCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFd2bcd5),
      body: Center(
        child: Image(image: AssetImage("images/birthday_card.png")),
      ),
    );
  }
}
