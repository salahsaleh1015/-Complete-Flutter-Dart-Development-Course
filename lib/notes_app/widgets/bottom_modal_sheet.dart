import 'package:complete_flutter_dart_development_course/notes_app/constants.dart';
import 'package:complete_flutter_dart_development_course/notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/add_bottom_modal_sheet_form.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_bottom.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: BlocConsumer<AddNoteCubit, AddNoteState>(
              listener: (context, state) {
              if(state is AddNoteFailure){
                debugPrint(" error message  ${state.errorMessage}");
              }

              if(state is AddNoteSuccess){}
              Navigator.pop(context);
              },
              builder: (context, state) {
                return ModalProgressHUD(
                    inAsyncCall: state is AddNoteLoading ? true : false,
                    child: AddModalBottomSheetForm());
              },
            ),
          ),
        ));
  }
}
