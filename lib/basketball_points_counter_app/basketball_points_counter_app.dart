import 'package:flutter/material.dart';

class BasketballPointsCounterApp extends StatelessWidget {
  const BasketballPointsCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Points Counter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),

    );
  }
}
