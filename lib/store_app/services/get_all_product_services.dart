import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:complete_flutter_dart_development_course/store_app/models/product_model.dart';

class GetAllProductServices {

  Future<List<ProductModel>> getAllProducts() async {
    var url = Uri.https('https://fakestoreapi.com/products');

    var response = await http.post(url);

    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> products = [];

    for (var product in data) {
      products.add(ProductModel.fromJson(product));
    }
    return products;
  }
}
