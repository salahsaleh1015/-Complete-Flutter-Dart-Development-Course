import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:complete_flutter_dart_development_course/store_app/models/product_model.dart';

import '../helper/api.dart';

class GetAllProductServices {
  Future<List<ProductModel>> getAllProducts() async {

    List<dynamic> productListResponse =
    await Api().get(url: 'https://fakestoreapi.com/products');

      List<ProductModel> products = [];

      for (var product in productListResponse) {
        products.add(ProductModel.fromJson(product));
      }
      return products;

  }
}
