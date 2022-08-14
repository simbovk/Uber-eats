import 'package:flutter/material.dart';

import 'ResturantInfo.dart';
import 'SearchBar.dart';

class fastFood extends StatefulWidget {
  const fastFood({Key? key}) : super(key: key);

  @override
  State<fastFood> createState() => _fastFoodState();
}

class _fastFoodState extends State<fastFood> {
  String? _selectedCategory;
  String resturantCount = '4';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            width: 390,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Search for Resturant',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.3),
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      showSearch(
                          context: context, delegate: MySearchDelegate());
                    },
                    icon: Icon(
                      Icons.search,
                      color: Colors.green,
                    )),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                '$resturantCount Resturant Available',
                style: TextStyle(
                    fontSize: 17,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Container(
                height: 25,
                width: 160,
                child: DropdownButton(
                  hint: Text(
                    'According to...',
                    style: TextStyle(color: Colors.green),
                  ),
                  icon: IconTheme(
                    data: new IconThemeData(color: Colors.green),
                    child: new Icon(
                      Icons.text_rotate_vertical_sharp,
                      size: 25,
                    ),
                  ),
                  value: _selectedCategory,
                  items: [
                    DropdownMenuItem(
                      child: Container(
                          height: 25,
                          width: 120,
                          child: Center(
                              child: const Text(
                            "Most rated",
                            style: TextStyle(color: Colors.black),
                          ))),
                      value: 'Most Rated',
                    ),
                    DropdownMenuItem(
                      child: Container(
                          height: 25,
                          width: 120,
                          child: Center(
                              child: const Text(
                            "Most ordered",
                            style: TextStyle(color: Colors.black),
                          ))),
                      value: 'Most Ordered',
                    ),
                    DropdownMenuItem(
                      child: Container(
                          height: 25,
                          width: 130,
                          child: Center(
                              child: const Text(
                            "Most expensive",
                            style: TextStyle(color: Colors.black),
                          ))),
                      value: 'Most Expensive',
                    ),
                    DropdownMenuItem(
                      child: Container(
                          height: 25,
                          width: 130,
                          child: Center(
                              child: const Text(
                            "Least expensive",
                            style: TextStyle(color: Colors.black),
                          ))),
                      value: 'Least Expensive',
                    ),
                    DropdownMenuItem(
                      child: Container(
                          height: 25,
                          width: 120,
                          child: Center(
                              child: const Text(
                            "Most popular",
                            style: TextStyle(color: Colors.black),
                          ))),
                      value: 'Most popular',
                    ),
                    DropdownMenuItem(
                      child: Container(
                          height: 25,
                          width: 120,
                          child: Center(
                              child: const Text(
                            "newest",
                            style: TextStyle(color: Colors.black),
                          ))),
                      value: 'Newest',
                    ),
                    DropdownMenuItem(
                      child: Container(
                          height: 25,
                          width: 120,
                          child: Center(
                              child: const Text(
                            "closest",
                            style: TextStyle(color: Colors.black),
                          ))),
                      value: 'Closest',
                    ),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedCategory = newValue;
                    });
                  }, //make true to take width of parent widget
                  underline: Container(), //empty line
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  iconEnabledColor: Colors.white, //Icon color
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ResturantInfo(
            'McDonald',
            '3.8',
            'assets/images/mcdonaldswallpaper.png',
            'assets/images/mdconald.png',
            '(la,orange county)',
            'fastfood burger...',
            '0.0'),
        SizedBox(
          height: 20,
        ),
        ResturantInfo(
            'Burger king',
            '3.5',
            'assets/images/burgerkingwallpaper.png',
            'assets/images/burgerking.png',
            '(la,orange county)',
            'fastfood burger...',
            '2.99'),
        SizedBox(
          height: 20,
        ),
        ResturantInfo(
            'KFC',
            '3.5',
            'assets/images/kfcwallpaper.png',
            'assets/images/kfc.png',
            '(la,orange county)',
            'fastfood fried chicken...',
            '2.99'),
        SizedBox(
          height: 20,
        ),
        ResturantInfo(
            'jo pizza',
            '4.1',
            'assets/images/jowallpaper.png',
            'assets/images/jo.png',
            '(tehran,Shahrak Gharb)',
            'fastfood burger pizza...',
            '2.99'),
        SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}
