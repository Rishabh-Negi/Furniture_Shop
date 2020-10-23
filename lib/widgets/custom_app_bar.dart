import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

class TitleBar extends StatelessWidget {
  final double heightMul = SizeConfig.heightMul;
  final double textMul = SizeConfig.textMul;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: ListTile(
        title: Text(
          'Découvrir',
          style: GoogleFonts.actor(
            fontSize: 4 * textMul,
            letterSpacing: 0.15 * textMul,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Padding(
            padding: EdgeInsets.only(left: 2 * heightMul),
            child: Text('La Galerie')),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('assets/search.svg', color: iconColor),
            SizedBox(width: 2 * heightMul),
            SvgPicture.asset('assets/cart.svg'),
          ],
        ),
      ),
    );
  }
}
