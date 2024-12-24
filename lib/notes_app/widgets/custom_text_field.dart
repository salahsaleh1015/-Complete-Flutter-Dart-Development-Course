import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "Please enter $hintText";
          }
          return null;
        },
        onSaved: onSaved,
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
