import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("Notes",style: TextStyle(fontSize: 30),),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
