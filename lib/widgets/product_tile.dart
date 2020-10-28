import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/models/product.dart';
import 'package:furniture/screens/product_screen.dart';
import 'package:furniture/theme/theme.dart';

import '../size_config.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  ProductTile({this.product});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(product: product),
          ),
        );
      },
      child: Container(
        width: 50 * SizeConfig.widthMul,
        // height: 32.9 * SizeConfig.heightMul,
        color: cardBgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AspectRatio(
              aspectRatio: 0.9,
              child: Hero(
                tag: '${product.image}',
                child: FadeInImage(
                  placeholder: AssetImage('assets/chair.png'),
                  image: NetworkImage(product.image),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${product.title}',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(letterSpacing: 1, color: titleColor),
                ),
                Text(
                  '\$${product.price}',
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: subTitleColor, fontSize: 2 * SizeConfig.textMul),
                ),
                SizedBox(height: 10),
              ],
            )
          ],
        ),
      ),
    );
  }
}
