import 'package:flutter/material.dart';
import 'package:furniture/size_config.dart';
import 'package:furniture/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

double _heightMul = SizeConfig.heightMul;

class RotatedContainer extends StatelessWidget {
  final String title;

  RotatedContainer({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("$title");
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 5, top: 5),
        child: Container(
          height: 13 * _heightMul,
          child: RotatedBox(
            quarterTurns: -1,
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
      ),
    );
  }
}
