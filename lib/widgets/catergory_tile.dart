import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/models/category.dart';
import 'package:furniture/size_config.dart';
import 'package:furniture/theme/theme.dart';

class CategoryTile extends StatelessWidget {
  final Category category;

  CategoryTile({this.category});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 50 * SizeConfig.widthMul,
        height: 33 * SizeConfig.heightMul,
        color: cardBgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/chair.png'),
              image: NetworkImage(category.image),
            ),
            Column(
              children: [
                Text(
                  '${category.title}',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(letterSpacing: 1, color: titleColor),
                ),
                Text(
                  'Left: ${category.numOfProducts}',
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: subTitleColor, fontSize: 2 * SizeConfig.textMul),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
