import 'package:complete_flutter_dart_development_course/notes_app/widgets/edit_note_body_view.dart';
import 'package:flutter/material.dart';


class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color(0xff2d2d2d),
      body: EditNoteBodyView(),
    );
  }
}
