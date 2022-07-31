import 'package:flutter/material.dart';

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
            Row(children: [
              Text(resturantCount , style:TextStyle(),),
              Spacer(),
              Container(
                  height: 25,
                  width: 100,
                  child: DropdownButton(
                    hint: Text(
                      'Select',
                      style: TextStyle(color: Colors.black),
                    ),
                    icon: IconTheme(
                      data: new IconThemeData(color: Colors.black),
                      child: new Icon(Icons.arrow_drop_down , size: 25,),
                    ),
                    value: _selectedCategory,
                    items: [
                      DropdownMenuItem(
                        child: Container(
                            height: 25,
                            width: 75,
                            color: Colors.black,
                            child: Center(child: const Text("black"))),
                        value: 'black',
                      ),
                      DropdownMenuItem(
                        child: Container(
                            height: 25,
                            width: 75,
                            color: Colors.white,
                            child: Center(
                              child: const Text(
                                "white",
                                style: TextStyle(color: Colors.black),
                              ),
                            )),
                        value: 'white',
                      ),
                      DropdownMenuItem(
                        child: Container(
                            height: 25,
                            width: 75,
                            color: Color.fromARGB(255, 4, 36, 52),
                            child: Center(child: const Text("blue"))),
                        value: 'blue',
                      ),
                      DropdownMenuItem(
                        child: Container(
                            height: 25,
                            width: 75,
                            color: const Color.fromARGB(255, 207, 37, 25),
                            child: Center(child: const Text("red"))),
                        value: 'red',
                      ),
                      DropdownMenuItem(
                        child: Container(
                            height: 25,
                            width: 75,
                            color: const Color.fromARGB(255, 255, 122, 166),
                            child: Center(child: const Text("pink"))),
                        value: 'pink',
                      ),
                      DropdownMenuItem(
                        child: Container(
                            height: 25,
                            width: 75,
                            color: const Color.fromARGB(255, 1, 46, 18),
                            child: Center(child: const Text("green"))),
                        value: 'green',
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
            ],)
          ],
        )),
      ),
    );
  }
}
