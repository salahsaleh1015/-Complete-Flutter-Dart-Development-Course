import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:complete_flutter_dart_development_course/store_app/models/product_model.dart';

class CategoryServices {

  Future<List<ProductModel>> getCategory({required String categoryName}) async {
    var url =
        Uri.https('https://fakestoreapi.com/products/category/$categoryName');

    var response = await http.post(url);

    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> products = [];

    for (var product in data) {
      products.add(ProductModel.fromJson(product));
    }
    return products;
  }
}
