import 'package:flutter/material.dart';
import 'package:test_fluuter/ResturantInfo.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  String? _selectedCategory;
  String resturantCount = '4';
  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
            child: Column(
          children: [
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
                  padding: const EdgeInsets.only(right:5),
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
                              child: Center(child: const Text("Most rated" ,style: TextStyle(color: Colors.black), ))),
                          value: 'Most Rated',
                        ),
                        DropdownMenuItem(
                          child: Container(
                              height: 25,
                              width: 120,
                              child: Center(child: const Text("Most ordered" ,style: TextStyle(color: Colors.black), ))),
                          value: 'Most Ordered',
                        ),
                        DropdownMenuItem(
                          child: Container(
                              height: 25,
                              width: 130,
                              child: Center(child: const Text("Most expensive" ,style: TextStyle(color: Colors.black), ))),
                          value: 'Most Expensive',
                        ),
                        DropdownMenuItem(
                          child: Container(
                              height: 25,
                              width: 130,
                              child: Center(child: const Text("Least expensive" ,style: TextStyle(color: Colors.black), ))),
                          value: 'Least Expensive',
                        ),
                         DropdownMenuItem(
                          child: Container(
                              height: 25,
                              width: 120,
                              child: Center(child: const Text("Most popular" ,style: TextStyle(color: Colors.black), ))),
                          value: 'Most popular',
                        ),
                         DropdownMenuItem(
                          child: Container(
                              height: 25,
                              width: 120,
                              child: Center(child: const Text("newest" ,style: TextStyle(color: Colors.black), ))),
                          value: 'Newest',
                        ),
                         DropdownMenuItem(
                          child: Container(
                              height: 25,
                              width: 120,
                              child: Center(child: const Text("closest" ,style: TextStyle(color: Colors.black), ))),
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
            ResturantInfo('star bucks', '5', 'koon','gooz')
          ],
        )),
      ),
    );
  }
}
