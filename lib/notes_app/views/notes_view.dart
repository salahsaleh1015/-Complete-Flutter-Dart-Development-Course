import 'package:complete_flutter_dart_development_course/notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/bottom_modal_sheet.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/notes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2d2d2d),
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff2d2d2d),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => const AddModalBottomSheet());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

