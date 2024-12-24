
import 'package:complete_flutter_dart_development_course/notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:complete_flutter_dart_development_course/notes_app/models/note_model.dart';
import 'package:complete_flutter_dart_development_course/notes_app/views/edit_note_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  EditNoteView(
          note: note,
        )));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color:  Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(
               note.title,
                style: const TextStyle(
                    fontFamily: "Pacifico", fontSize: 26, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text(
                 note.subtitle,
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 22,
                      color: Colors.black.withOpacity(.5)),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<GetNotesCubit>(context).getAllNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
              note.date,
                style: TextStyle(
                    fontFamily: "Pacifico",
                    fontSize: 20,
                    color: Colors.black.withOpacity(.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}