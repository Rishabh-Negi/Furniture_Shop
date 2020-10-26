import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/models/category.dart';
import 'package:furniture/models/product.dart';
import 'package:furniture/theme/theme.dart';
import 'package:furniture/widgets/custom_app_bar.dart';
import 'package:furniture/widgets/navigator.dart';
import 'package:furniture/widgets/title_text.dart';

List<Category> c = [
  Category(
      id: "1",
      title: "Armchair",
      image: "https://i.imgur.com/JqKDdxj.png",
      numOfProducts: 100),
  Category(
      id: "2",
      title: "Sofa",
      image: "https://i.imgur.com/HUf1kWu.png",
      numOfProducts: 15),
  Category(
      id: "3",
      title: "Armchair",
      image: "https://i.imgur.com/sI4GvE6.png",
      numOfProducts: 100),
  Category(
      id: "4",
      title: "Sofa",
      image: "https://i.imgur.com/WF5PsZj.png",
      numOfProducts: 15),
];

List<Product> p = [
  Product(
      id: "1",
      title: "Wood Frame",
      price: 1500,
      category: "Chair",
      image: "https://i.imgur.com/sI4GvE6.png",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."),
  Product(
      id: "2",
      title: "Yellow Armchair",
      price: 550,
      category: "Chair",
      image: "https://i.imgur.com/JqBDr4s.png",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."),
  Product(
      id: "3",
      title: "Modern Armchair",
      price: 250,
      category: "Chair",
      image: "https://i.imgur.com/nIHmDvi.png",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."),
  Product(
      id: "4",
      title: "IKEA Ingolf Table",
      price: 1550,
      category: "Chair",
      image: "https://i.imgur.com/Mn7M3YV.png",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."),
  Product(
      id: "5",
      title: "Yellow Arm",
      price: 1800,
      category: "Chair",
      image: "https://i.imgur.com/WF5PsZj.png",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."),
  Product(
      id: "6",
      title: "Scandinavian",
      price: 1320,
      category: "Chair",
      image: "https://i.imgur.com/3eLrKqJ.png",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."),
  Product(
      id: "7",
      title: "Green Armchair",
      price: 289,
      category: "Chair",
      image: "https://i.imgur.com/JqKDdxj.png",
      subTitle: "Tieton Armchair",
      description:
          "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.")
];

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
                  // FutureBuilder(
                  //   future: fetchCategory(),
                  //   builder: (context, snapshot) => snapshot.hasData
                  //       ? CategoryList(
                  //           category: snapshot.data,
                  //         )
                  //       : LoadingBox(),
                  // ),
                  CategoryList(category: c),
                  TitleText(title: 'Tending Designs', style: textStyle),
                  ProductList(products: p),

                  // FutureBuilder(
                  //   future: fetchProduct(),
                  //   builder: (context, snapshot) => snapshot.hasData
                  //       ? ProductList(
                  //           products: snapshot.data,
                  //         )
                  //       : LoadingBox(),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
