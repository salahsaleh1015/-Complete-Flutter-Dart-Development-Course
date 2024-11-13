import 'package:complete_flutter_dart_development_course/store_app/widgets/custom_button.dart';
import 'package:complete_flutter_dart_development_course/store_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class UpdateProductView extends StatelessWidget {
  const UpdateProductView({super.key});
static String id = "update product";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:  true,
        title: const Text("Update Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(hintText: "Product Name",onChanged: (val){},),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(hintText: "Description",onChanged: (val){},),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(hintText: "Price",onChanged: (val){},),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(hintText: "image",onChanged: (val){},),
            const SizedBox(
              height: 50,
            ),
           CustomButton(text:"Update", onTap:(){})
          ],
        ),
      ),
    );

  }
}
