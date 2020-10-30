import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/models/category.dart';
import 'package:furniture/models/product.dart';
import 'package:furniture/network/get_category.dart';
import 'package:furniture/network/get_product.dart';
import 'package:furniture/theme/theme.dart';
import 'package:furniture/widgets/custom_app_bar.dart';
import 'package:furniture/widgets/loading.dart';
import 'package:furniture/widgets/navigator.dart';
import 'package:furniture/widgets/title_text.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Navigation(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleBar(),
                  TitleText(title: 'Top Categories', style: textStyle),
                  FutureBuilder(
                    future: fetchCategory(),
                    builder: (context, snapshot) => snapshot.hasData
                        ? CategoryList(
                            category: snapshot.data,
                          )
                        : LoadingBox(),
                  ),
                  TitleText(title: 'Tending Designs', style: textStyle),
                  FutureBuilder(
                    future: fetchProduct(),
                    builder: (context, snapshot) => snapshot.hasData
                        ? ProductList(
                            products: snapshot.data,
                          )
                        : LoadingBox(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
