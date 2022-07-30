import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      ),
    );
  }
}
