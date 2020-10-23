import 'package:flutter/material.dart';
import 'package:furniture/size_config.dart';
import 'package:furniture/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

double height = SizeConfig.height;
double heightMul = SizeConfig.heightMul;
double textMul = SizeConfig.textMul;

class RotatedContainer extends StatelessWidget {
  final String title;

  RotatedContainer({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("$title");
      },
      child: Container(
        height: 15 * heightMul,
        child: Transform.rotate(
          angle: -math.pi / 2,
          child: Center(
              child: Text(
            title,
            softWrap: false,
            style: GoogleFonts.actor(
              fontSize: 18,
              color: menuTextColor,
            ),
          )),
        ),
      ),
    );
  }
}
