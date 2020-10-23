import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/models/category.dart';

List<String> _categoryName = [
  'All',
  'Chairs',
  'Tables',
  'Beds',
  'Closets',
  'Sofa Sets',
  'Loveseats',
  'Recliners'
];

List<Widget> category = List<Widget>.generate(_categoryName.length,
    (index) => RotatedContainer(title: _categoryName[index]));
