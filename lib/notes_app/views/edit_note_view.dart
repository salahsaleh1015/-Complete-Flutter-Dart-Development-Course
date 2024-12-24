import 'package:complete_flutter_dart_development_course/notes_app/models/note_model.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/edit_note_body_view.dart';
import 'package:flutter/material.dart';


class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  const Color(0xff2d2d2d),
      body: EditNoteBodyView(
        note: note,
      ),
    );
  }
}
