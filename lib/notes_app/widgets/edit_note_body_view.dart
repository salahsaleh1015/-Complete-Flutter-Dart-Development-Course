import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_app_bar.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';



class EditNoteBodyView extends StatelessWidget {
  const EditNoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hintText: "title",),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
