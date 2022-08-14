import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                'Menu',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                'Burgers',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                'Pizza',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                'Pasta',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
