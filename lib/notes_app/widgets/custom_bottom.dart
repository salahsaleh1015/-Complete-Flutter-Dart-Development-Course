

import 'package:complete_flutter_dart_development_course/notes_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, this.isLoading = false});
  final VoidCallback onTap;
   final bool isLoading;
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
        child:  Center(
          child:isLoading ? const CircularProgressIndicator(color: Colors.black,) :  const Text("Add",style: TextStyle(color: Colors.black,fontSize: 20),),
        ),
      ),
    );
  }
}
