

import 'package:complete_flutter_dart_development_course/notes_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),

        ),
        child: const Center(
          child: Text("Add",style: TextStyle(color: Colors.black,fontSize: 20),),
        ),
      ),
    );
  }
}
