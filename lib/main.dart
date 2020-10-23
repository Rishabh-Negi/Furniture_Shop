import 'package:flutter/material.dart';
import 'package:furniture/screens/home_screen.dart';
import 'package:furniture/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => OrientationBuilder(
        builder: (context, oreintation) {
          SizeConfig(constraints, oreintation);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Furniture Shop',
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
