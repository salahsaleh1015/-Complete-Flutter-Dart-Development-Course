import 'package:complete_flutter_dart_development_course/store_app/models/product_model.dart';
import 'package:complete_flutter_dart_development_course/store_app/services/update_product_services.dart';
import 'package:complete_flutter_dart_development_course/store_app/widgets/custom_button.dart';
import 'package:complete_flutter_dart_development_course/store_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class UpdateProductView extends StatelessWidget {
  UpdateProductView({super.key});
  static String id = "update product";
  String? productName, description, image;
  String? price;
  @override
  Widget build(BuildContext context) {
    ProductModel productModel =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Update Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              CustomTextField(
                hintText: "Product Name",
                onChanged: (val) {
                  productName = val;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                keyboardType: TextInputType.number,
                hintText: "Description",
                onChanged: (val) {
                  description = val;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: "Price",
                onChanged: (val) {
                  price = val;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: "image",
                onChanged: (val) {
                  image = val;
                },
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                  text: "Update",
                  onTap: () {
                    UpdateProductServices().updateProductService(
                        title: productName!,
                        price: price!,
                        description: description!,
                        category: productModel.category,
                        image: image!);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
