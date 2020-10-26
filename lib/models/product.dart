import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/size_config.dart';
import 'package:furniture/widgets/product_tile.dart';

class Product {
  final String id, title, category, image, subTitle, description;
  final int price;

  Product({
    @required this.id,
    @required this.title,
    @required this.category,
    @required this.image,
    @required this.subTitle,
    @required this.description,
    @required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      category: json['category'],
      image: json['image'],
      subTitle: json['subTitle'],
      description: json['description'],
      price: json['price'],
    );
  }
}

//dummy data for testing
Product product = Product(
    id: "1",
    title: "Wood Frame",
    price: 1500,
    category: "Chair",
    image: "https://i.imgur.com/sI4GvE6.png",
    subTitle: "Tieton Armchair",
    description:
        "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.");

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2 * SizeConfig.widthMul),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: List.generate(
            products.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ProductTile(
                product: products[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
