import 'package:complete_flutter_dart_development_course/toku_app/components/category_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffde4),
      appBar: AppBar(
        backgroundColor: const Color(0xff533d35),
        title: const Text(
          "Toku",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: const  Column(
        children: [
          Category(
            color: Color(0xffff9f3b),
            title: "Numbers",
          ),
          Category(
            color: Color(0xff5d8b3e),
            title: "Famely Members",
          ),
          Category(
            color: Color(0xff854cae),
            title: "Colors",
          ),
          Category(
            color: Color(0xff51b0d5),
            title: "Phrases",
          ),
        ],
      ),
    );
  }
}

