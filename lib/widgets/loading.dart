import 'package:flutter/material.dart';
import 'package:furniture/theme/theme.dart';

import '../size_config.dart';

class LoadingBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33 * SizeConfig.heightMul,
      width: 50 * SizeConfig.widthMul,
      color: cardBgColor,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
