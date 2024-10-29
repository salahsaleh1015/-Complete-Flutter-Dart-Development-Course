import 'package:http/http.dart' as http;
import 'dart:convert';

class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    http.Response url = await http
        .get(Uri.parse('https://fakestoreapi.com/products/categories'));

    if (url.statusCode == 200) {
      List<dynamic> data = jsonDecode(url.body);

      return data;
    } else {
      throw Exception('there was an error in status code ${url.statusCode}');
    }
  }
}
