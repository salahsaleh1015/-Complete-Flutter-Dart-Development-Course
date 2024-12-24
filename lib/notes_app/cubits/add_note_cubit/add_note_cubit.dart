import 'package:bloc/bloc.dart';
import 'package:complete_flutter_dart_development_course/notes_app/constants.dart';
import 'package:complete_flutter_dart_development_course/notes_app/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = const Color(0xff10FFCB);


  addNote(NoteModel note) {
    note.color = color.value;
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notesBox.add(note);
    emit(AddNoteSuccess());
  }
}
