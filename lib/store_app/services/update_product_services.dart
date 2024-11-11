


import 'package:complete_flutter_dart_development_course/store_app/helper/api.dart';
import 'package:complete_flutter_dart_development_course/store_app/models/product_model.dart';

class UpdateProductServices{


  Future<ProductModel> updateProductService({
    required String title,
    required String price,
    required String description,
    required String category,
    required String image,

  }) async {
    Map<String, dynamic> data =
    await Api().put(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image
    });

    return ProductModel.fromJson(data);
  }
}