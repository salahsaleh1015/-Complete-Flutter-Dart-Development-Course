import 'package:complete_flutter_dart_development_course/notes_app/constants.dart';
import 'package:complete_flutter_dart_development_course/notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:complete_flutter_dart_development_course/notes_app/models/note_model.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/colors_list_view.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_app_bar.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_text_field.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/edit_colors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditNoteBodyView extends StatefulWidget {
  const EditNoteBodyView({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteBodyView> createState() => _EditNoteBodyViewState();
}

class _EditNoteBodyViewState extends State<EditNoteBodyView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<GetNotesCubit>(context).getAllNotes();
              Navigator.pop(context);
            },
            title: "Edit Note",
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChanged: (val) {
              title = val;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            maxLines: 5,
            onChanged: (val) {
              content = val;
            },
            hintText: widget.note.subtitle,
          ),
          const SizedBox(
            height: 20,
          ),
          EditColorsListView(
            note: widget.note,
          )
        ],
      ),
    );
  }
}

