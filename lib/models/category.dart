import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/size_config.dart';
import 'package:furniture/widgets/catergory_tile.dart';

class Category {
  final String id, title, image;
  final int numOfProducts;

  Category({this.id, this.title, this.image, this.numOfProducts});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      numOfProducts: json['numOfProducts'],
    );
  }
}

//dummy data for testing
Category category = Category(
  id: "4",
  title: "Sofa",
  image: "https://i.imgur.com/WF5PsZj.png",
  numOfProducts: 15,
);

class CategoryList extends StatelessWidget {
  final List<Category> category;

  CategoryList({this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2 * SizeConfig.widthMul),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: List.generate(
            category.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CategoryTile(
                category: category[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
