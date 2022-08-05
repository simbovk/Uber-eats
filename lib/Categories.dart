import 'package:flutter/material.dart';
import 'package:test_fluuter/ResturantInfo.dart';
import 'package:test_fluuter/pastaResturants.dart';
import 'package:test_fluuter/seafoodResturants.dart';

import 'SearchBar.dart';
import 'fastfoodResturants.dart';
import 'internationalResturant.dart';

class Categories extends StatefulWidget {
  String? category;
  Categories(String category, {Key? key}) {
    this.category = category;
  }

  @override
  State<Categories> createState() => _CategoriesState(category);
}

class _CategoriesState extends State<Categories> {
  String? category;
  _CategoriesState(String? category) : this.category = category;
  @override
  Widget build(BuildContext context) {
    Widget? body;
    switch (category) {
      case 'fastfood':
        body = fastFood();
        break;
      case 'seafood':
        body = seaFood();
        break;
      case 'pasta':
        body = pasta();
        break;
      case 'international':
        body = international();
        break;
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.only(right: 330),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      // padding: ,
                      icon: const Icon(
                        Icons.shopping_basket_rounded,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        // like drawer
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        body: body,
      ),
    );
  }
}
