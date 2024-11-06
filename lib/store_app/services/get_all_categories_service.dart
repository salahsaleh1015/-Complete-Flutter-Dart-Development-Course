import 'package:complete_flutter_dart_development_course/store_app/helper/api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetAllCategoriesService {

  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> response =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return response;
  }
}
