import 'package:flutter/cupertino.dart';

import '../size_config.dart';

class TitleText extends StatelessWidget {
  final String title;
  final TextStyle style;

  TitleText({@required this.title, @required this.style});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 5 * SizeConfig.widthMul,
        bottom: 5 * SizeConfig.widthMul,
        left: 5 * SizeConfig.widthMul,
      ),
      child: Text('$title', style: style),
    );
  }
}
