import 'package:complete_flutter_dart_development_course/notes_app/constants.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                CustomTextField(
                  hintText: "title",
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hintText: "content",
                  maxLines: 5,
                ),
                SizedBox(
                  height: 25,
                ),
                CustomButton(),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),

      ),
      child: Center(
        child: Text("Add",style: TextStyle(color: Colors.black,fontSize: 20),),
      ),
    );
  }
}
