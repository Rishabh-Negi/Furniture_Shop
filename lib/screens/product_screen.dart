import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/models/product.dart';
import 'package:furniture/theme/theme.dart';
import 'package:furniture/widgets/header.dart';
import 'package:furniture/widgets/title_text.dart';

import '../size_config.dart';

class ProductScreen extends StatefulWidget {
  final Product product;

  const ProductScreen({this.product});
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: SizeConfig.height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  color: bgColor,
                  width: SizeConfig.isMobilePortrait
                      ? 0.8 * SizeConfig.width
                      : 0.8 * SizeConfig.height,
                  height: SizeConfig.isMobilePortrait
                      ? 0.47 * SizeConfig.height
                      : 0.4 * SizeConfig.height,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.product.title,
                          style: textStyle.copyWith(
                            color: titleColor,
                            fontSize: 35,
                          ),
                        ),
                        Text(widget.product.subTitle,
                            style: textStyle.copyWith(
                                color: subTitleColor, fontSize: 18))
                      ],
                    ),
                  ),
                ),
              ),
              Container(),
              Positioned(
                top: SizeConfig.isMobilePortrait
                    ? 0.15 * SizeConfig.height
                    : 0.15 * SizeConfig.width,
                left: SizeConfig.isMobilePortrait
                    ? 0.37 * SizeConfig.width
                    : 0.6 * SizeConfig.height,
                child: Container(
                  width: 60 * SizeConfig.widthMul,
                  height: 60 * SizeConfig.widthMul,
                  child: Hero(
                    tag: '${widget.product.image}',
                    child: FadeInImage(
                      placeholder: AssetImage('assets/chair.png'),
                      image: NetworkImage(widget.product.image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Top(),
              Positioned(
                top: 0.5 * SizeConfig.height,
                right: 0,
                left: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(title: 'Description', style: textStyle),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5 * SizeConfig.widthMul,
                        right: 5 * SizeConfig.widthMul,
                      ),
                      child: Text(
                        '${widget.product.description}',
                        style: textStyle.copyWith(
                          color: subTitleColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
