import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/theme/theme.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AspectRatio(
        aspectRatio: 1.5,
        child: SvgPicture.asset(
          isLiked ? 'assets/heart.svg' : 'assets/heart-icon.svg',
          color: iconColor1,
        ),
      ),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
    );
  }
}
