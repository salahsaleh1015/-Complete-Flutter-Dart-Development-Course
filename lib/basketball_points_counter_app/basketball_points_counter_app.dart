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


      body: Column(
        children: [
          Text("Team A",style: TextStyle(
            fontSize: 40,

          ),),
          Text("0",style: TextStyle(
            fontSize: 150,

          ),),
        ],
      ),

    );
  }
}
