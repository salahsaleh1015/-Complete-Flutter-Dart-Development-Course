import 'dart:convert';

import 'package:http/http.dart' as http;


// this class provides all the api calls

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there was an error in status code ${response.statusCode}');
    }
  }
}
