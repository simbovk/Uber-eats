import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.green, actions: <Widget>[
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              surfaceTintColor: Colors.white,
              primary: Colors.green,
              onPrimary: Colors.white,
              shadowColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
            },
            icon: Icon(
              Icons.login,
              size: 25,
            ),
            label: Text('Enter'),
          ),
        ]),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 130),
                    child: Container(
                      height: 70,
                      width: 210,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            opacity: 0.6,
                            image:
                                AssetImage("assets/images/uber_eats_logo.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(
                      'Amirali Vakili',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  )
                ],
              )),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                color: Colors.green,
              ),
              ListTile(
                title: Text('About'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                color: Colors.green,
              ),
              ListTile(
                title: Text('Contact'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    width: 390,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Search in Uber Eats',
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
                                  context: context,
                                  delegate: MySearchDelegate());
                            },
                            icon: Icon(
                              Icons.search,
                              color: Colors.green,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     // builder: (context) => ,
                                //   ),
                                // );
                              },
                            ),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/supermarkets.png"),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: Colors.white),
                            height: 150,
                            width: 150,
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Supermarket',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.4)),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     // builder: (context) => ,
                                //   ),
                                // );
                              },
                            ),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/resturants.png"),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: Colors.white),
                            height: 150,
                            width: 150,
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                              'Resturant',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.4)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.grey.withOpacity(0.1),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 270 , top: 10),
                      child: Text(
                        'Categories',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 22),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 150,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/fastfood.png"),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8.0)),
                                            color: Colors.white),
                                        height: 120,
                                        width: 120,
                                      ),
                                    ),
                                    const Text(
                                      'fast food',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/seafood.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.white),
                                      height: 120,
                                      width: 120,
                                    ),
                                    Text(
                                      'Sea food',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/pasta.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.white),
                                      height: 120,
                                      width: 120,
                                    ),
                                    Text(
                                      'Pasta',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/internationalfood.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.white),
                                      height: 120,
                                      width: 120,
                                    ),
                                    Text(
                                      'International',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/fried.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.white),
                                      height: 120,
                                      width: 120,
                                    ),
                                    Text(
                                      'fried',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/other.png"),
                                              fit: BoxFit.fill),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          color: Colors.white),
                                      height: 120,
                                      width: 120,
                                    ),
                                    Text(
                                      'Other',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     // builder: (context) => ,
                          //   ),
                          // );
                        },
                      ),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/adv1.png"),
                              fit: BoxFit.fill),
                          borderRadius:
                              BorderRadius.all(Radius.circular(8.0)),
                          color: Colors.white),
                      height: 150,
                      width: 350,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black.withOpacity(0.4))),
          child: BottomNavigationBar(
            fixedColor: Colors.green,
            unselectedItemColor: Colors.green,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.home_outlined),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => HomePage(),
                    //   ),
                    // );
                  },
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: const Icon(Icons.list_alt_outlined),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ShoppingCart(),
                      //   ),
                      // );
                    },
                  ),
                  label: 'Orders'),
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: const Icon(Icons.account_circle_outlined),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ProfilePage(),
                      //   ),
                      // );
                    },
                  ),
                  label: 'My Account'),
            ],
            //selectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> suggestion = ['food', 'supermarket', 'resturant'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: Icon(
            Icons.clear_rounded,
            color: Colors.green,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null),
        icon: Icon(
          Icons.arrow_back,
          color: Colors.green,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(
        query,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = suggestion.where((suggest) {
      final result = suggest.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(suggestions[index]),
            onTap: () {
              query = suggestions[index];
            },
          );
        });
  }
}
