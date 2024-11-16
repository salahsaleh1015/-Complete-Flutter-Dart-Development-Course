

import 'package:complete_flutter_dart_development_course/store_app/models/product_model.dart';
import 'package:complete_flutter_dart_development_course/store_app/views/update_product_view.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.productModel});
 final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context,UpdateProductView.id,arguments: productModel);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 135,
            width: 240,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 2,
                  color: Colors.grey.withOpacity(0.2))
            ]),
            child:  Card(
              color: Colors.white,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      productModel.title.substring(0, 6),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                         r"$" "${productModel.price}",
                          style: const TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 25,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 80,
              left: 115,
              child: Image.network(
                productModel.image,
                height: 100,
                width: 100,
              ))
        ],
      ),
    );
  }
}
