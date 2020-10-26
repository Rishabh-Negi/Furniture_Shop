import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/theme/theme.dart';

import 'heart.dart';

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: -10,
      right: -10,
      child: Column(
        children: [
          ListTile(
            leading: IconButton(
              icon: AspectRatio(
                aspectRatio: 1.5,
                child: RotatedBox(
                  quarterTurns: 2,
                  child: SvgPicture.asset(
                    'assets/forward.svg',
                    color: iconColor1,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.share_rounded,
                color: iconColor1,
              ),
              onPressed: () {},
            ),
          ),
          ListTile(
            trailing: Heart(),
          ),
        ],
      ),
    );
  }
}
