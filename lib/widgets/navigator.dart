import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/data/category_data.dart';
import 'package:furniture/theme/theme.dart';

import '../size_config.dart';
import 'menu_icon.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: 0.15 * width,
      decoration: BoxDecoration(
        color: categoryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(5 * SizeConfig.widthMul),
          bottomRight: Radius.circular(5 * SizeConfig.widthMul),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 0.03 * height),
          Menu(),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: category,
            ),
          ),
        ],
      ),
    );
  }
}
