import 'dart:convert';
import 'package:complete_flutter_dart_development_course/store_app/helper/api.dart';
import 'package:http/http.dart' as http;
import 'package:complete_flutter_dart_development_course/store_app/models/product_model.dart';

class CategoryServices {
  Future<List<ProductModel>> getCategory({required String categoryName}) async {

    List<dynamic> categoryResponse =
    await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');


      List<ProductModel> products = [];

      for (var product in categoryResponse) {
        products.add(ProductModel.fromJson(product));
      }
      return products;

  }
}
