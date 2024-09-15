import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.title, required this.color});

  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: color,
      height: 70,
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 16,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
      ),
    );
  }
}
