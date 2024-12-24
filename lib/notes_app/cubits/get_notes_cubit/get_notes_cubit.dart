import 'package:bloc/bloc.dart';
import 'package:complete_flutter_dart_development_course/notes_app/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

import '../../models/note_model.dart';

part 'get_notes_state.dart';

class GetNotesCubit extends Cubit<GetNotesState> {
  GetNotesCubit() : super(GetNotesInitial());

  List<NoteModel>? notes;

  getAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(GetNotesSuccess());
  }
}
