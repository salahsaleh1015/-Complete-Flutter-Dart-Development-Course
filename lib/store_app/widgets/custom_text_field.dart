

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.onChanged, required this.hintText});

  final Function(String)? onChanged;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return  TextField(

      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hintText,

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black)
          )
      ),
    );
  }
}
