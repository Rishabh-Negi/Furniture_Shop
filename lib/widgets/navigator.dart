import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/data/menu_data.dart';
import 'package:furniture/theme/theme.dart';

import '../size_config.dart';
import 'menu_icon.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.18 * SizeConfig.width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(5 * SizeConfig.widthMul),
          bottomRight: Radius.circular(5 * SizeConfig.widthMul),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 0.03 * SizeConfig.height),
          Menu(),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: menuItem,
            ),
          ),
        ],
      ),
    );
  }
}
