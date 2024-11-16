import 'package:complete_flutter_dart_development_course/store_app/models/product_model.dart';
import 'package:complete_flutter_dart_development_course/store_app/services/update_product_services.dart';
import 'package:complete_flutter_dart_development_course/store_app/widgets/custom_button.dart';
import 'package:complete_flutter_dart_development_course/store_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdateProductView extends StatefulWidget {
  UpdateProductView({super.key});
  static String id = "update product";

  @override
  State<UpdateProductView> createState() => _UpdateProductViewState();
}

class _UpdateProductViewState extends State<UpdateProductView> {
  String? productName, description, image;

  String? price;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
                      isLoading = true;
                      setState(() {});
                      try{
                        updateProduct(product);
                      }catch (e){
                        print(e.toString());
                      }
                      isLoading = false;
                      setState(() {});
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  void updateProduct(ProductModel product) {
    UpdateProductServices().updateProductService(
        title: productName!,
        price: price!,
        description: description!,
        category: product.category,
        image: image!);
  }
}
