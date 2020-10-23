import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/theme/theme.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        debugPrint('Menu Icon Tapped');
      },
      icon: SvgPicture.asset(
        'assets/menu.svg',
        color: iconColor,
      ),
    );
  }
}
