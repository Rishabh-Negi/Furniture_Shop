import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:furniture/models/category.dart';
import 'package:http/http.dart' as http;

Future<List<Category>> fetchCategory() async {
  const String url =
      "https://5f210aa9daa42f001666535e.mockapi.io/api/categories";

  var response = await http.get('$url');
  print('${response.statusCode}');
  if (response.statusCode == 200) {
    List<Category> products = (jsonDecode(response.body) as List)
        .map((data) => Category.fromJson(data))
        .toList();

    return products;
  } else {
    debugPrint('ERROR - HTTP STATUS CODE ${response.statusCode}');
  }
}
