import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:furniture/models/product.dart';
import 'package:http/http.dart';

Future<List<Product>> fetchProduct() async {
  const String url = "https://5f210aa9daa42f001666535e.mockapi.io/api/products";

  Response response = await get('$url');

  if (response.statusCode == 200) {
    List<Product> products = (jsonDecode(response.body) as List)
        .map((data) => Product.fromJson(data))
        .toList();

    return products;
  } else {
    debugPrint('ERROR - HTTP STATUS CODE ${response.statusCode}');
  }
}
