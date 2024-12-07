
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xffffcd7a),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tip",
              style: TextStyle(
                  fontFamily: "Pacifico", fontSize: 26, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Text(
                "Build your career with tharwat samy",
                style: TextStyle(
                    fontFamily: "Pacifico",
                    fontSize: 22,
                    color: Colors.black.withOpacity(.5)),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "May21, 2022",
              style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 20,
                  color: Colors.black.withOpacity(.5)),
            ),
          ),
        ],
      ),
    );
  }
}