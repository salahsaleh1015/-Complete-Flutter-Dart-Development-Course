
import 'package:complete_flutter_dart_development_course/notes_app/widgets/notes_view_body.dart';
import 'package:flutter/material.dart';


class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff2d2d2d),
      body: NotesViewBody(),
    );
  }
}


