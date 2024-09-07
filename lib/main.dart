import 'package:flutter/material.dart';

void main() {
  runApp(const HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            child: const Center(
              child: Text("Hello World"),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: const Center(
              child: Text("Hello World"),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            child: const Center(
              child: Text("Hello World"),
            ),
          ),
        ],
      )),
    );
  }
}
