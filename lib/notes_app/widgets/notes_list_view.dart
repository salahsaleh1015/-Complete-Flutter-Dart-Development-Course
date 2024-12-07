


import 'package:complete_flutter_dart_development_course/notes_app/widgets/note_item_widget.dart';
import 'package:flutter/material.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemBuilder: (context, index) {
      return const CustomNoteItem();
    });
  }
}
