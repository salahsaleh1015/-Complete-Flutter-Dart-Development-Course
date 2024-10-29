import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:complete_flutter_dart_development_course/store_app/models/product_model.dart';

class CategoryServices {
  Future<List<ProductModel>> getCategory({required String categoryName}) async {

    http.Response url = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
    if (url.statusCode == 200) {
      List<dynamic> data = jsonDecode(url.body);

      List<ProductModel> products = [];

      for (var product in data) {
        products.add(ProductModel.fromJson(product));
      }
      return products;
    } else {
      throw Exception('there was an error in status code ${url.statusCode}');
    }
  }
}
