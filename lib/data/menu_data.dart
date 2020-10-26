import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/models/menu_item.dart';

List<String> _categoryName = [
  'ALL',
  'CHAIRS',
  'Tables',
  'Beds',
  'Closets',
  'Sofa sets',
  'RECLINERS',
  'Loveseats',
];

List<Widget> menuItem = List<Widget>.generate(_categoryName.length,
    (index) => RotatedContainer(title: _categoryName[index]));
