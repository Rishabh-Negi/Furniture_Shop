import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SizeConfig {
  static double width;
  static double height;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;

  static double textMul;
  static double imgMul;
  static double heightMul;
  static double widthMul;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  SizeConfig(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      width = constraints.maxWidth;
      height = constraints.maxHeight;
      isPortrait = true;
      if (width < 450.0) {
        isMobilePortrait = true;
      }
    } else {
      width = constraints.maxHeight;
      height = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockSizeHorizontal = width / 100;
    _blockSizeVertical = height / 100;

    textMul = _blockSizeVertical;
    imgMul = _blockSizeHorizontal;
    heightMul = _blockSizeVertical;
    widthMul = _blockSizeHorizontal;

    print('height: $height');
    print('width: $width');
    print('text multiplier: $textMul');
    print('image multiplier: $imgMul');
    print('height multiplier: $heightMul');
    print('width multiplier: $widthMul');
    print('potrait: $isPortrait');
  }
}
