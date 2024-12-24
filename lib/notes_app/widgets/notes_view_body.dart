import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_app_bar.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/note_item_widget.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/notes_list_view.dart';
import 'package:flutter/material.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onTap: (){},
            icon: Icons.search,
            title:"Notes",
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}




