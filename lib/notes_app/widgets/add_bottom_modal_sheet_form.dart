import 'package:complete_flutter_dart_development_course/notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:complete_flutter_dart_development_course/notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:complete_flutter_dart_development_course/notes_app/models/note_model.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_bottom.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AddModalBottomSheetForm extends StatefulWidget {
  const AddModalBottomSheetForm({
    super.key,
  });

  @override
  State<AddModalBottomSheetForm> createState() =>
      _AddModalBottomSheetFormState();
}

class _AddModalBottomSheetFormState extends State<AddModalBottomSheetForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onSaved: (val) {
              title = val;
            },
            hintText: "title",
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (val) {
              content = val;
            },
            hintText: "content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 25,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {

                  var currentTime = DateTime.now();

                  var  formattedTime = DateFormat('hh:mm a').format(currentTime);


                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var note = NoteModel(
                        title: title!,
                        subtitle: content!,
                        color: Colors.blue.value,
                        date:formattedTime);

                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                    BlocProvider.of<GetNotesCubit>(context).getAllNotes();
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
