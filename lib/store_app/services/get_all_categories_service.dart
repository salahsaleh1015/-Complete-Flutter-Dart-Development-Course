import 'package:http/http.dart' as http;
import 'dart:convert';

class GetAllCategoriesService {


  Future<List<dynamic>> getAllCategories() async {
    var url = Uri.https('https://fakestoreapi.com/products/categories');

    var response = await http.post(url);

    List<dynamic> data = jsonDecode(response.body);

    return data;

  }
}