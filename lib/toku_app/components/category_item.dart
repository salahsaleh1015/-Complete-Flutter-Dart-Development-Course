import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.title, required this.color,required this.onTap});

  final String title;
  final Color color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
