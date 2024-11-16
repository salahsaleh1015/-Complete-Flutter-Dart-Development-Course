

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, this.onChanged, required this.hintText,this.keyboardType});

  final Function(String)? onChanged;
  final String hintText;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return  TextField(

      onChanged: onChanged,
      keyboardType: keyboardType,
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
