import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/widgets/custom_app_bar.dart';
import 'package:furniture/widgets/navigator.dart';

import '../size_config.dart';

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
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Navigation(),
          Container(
            width: 0.8 * width,
            child: Column(
              children: [
                TitleBar(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 1.4 * SizeConfig.heightMul),
                      height: 200,
                      width: 0.77 * width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          10,
                          (index) => Container(
                            width: 300,
                            color: Colors.orange,
                            margin: EdgeInsets.all(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
