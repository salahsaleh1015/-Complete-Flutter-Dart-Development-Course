import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    ),
  ));
}
