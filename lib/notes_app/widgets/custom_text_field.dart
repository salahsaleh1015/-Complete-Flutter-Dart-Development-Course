



import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});
final String hintText;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: kPrimaryColor,
          ),
          hintText: hintText,

          focusedBorder: buildBorder(kPrimaryColor),
          enabledBorder: buildBorder(),
        ));
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}