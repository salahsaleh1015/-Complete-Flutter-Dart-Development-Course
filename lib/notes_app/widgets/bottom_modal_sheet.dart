import 'package:complete_flutter_dart_development_course/notes_app/constants.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_bottom.dart';
import 'package:complete_flutter_dart_development_course/notes_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: AddModalBottomSheetForm(),
          ),
        ));
  }
}

class AddModalBottomSheetForm extends StatefulWidget {
  const AddModalBottomSheetForm({
    super.key,
  });

  @override
  State<AddModalBottomSheetForm> createState() => _AddModalBottomSheetFormState();
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
             onSaved: (val){
               title = val;
             },
            hintText: "title",
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (val){
              content = val;
            },
            hintText: "content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autoValidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
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

