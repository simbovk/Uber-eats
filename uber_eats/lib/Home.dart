import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                Icons.account_circle_outlined,
                size: 20,
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
                              image: AssetImage(
                                  "assets/images/uber_eats_logo.png"),
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
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
                      width: 400,
                      color: Colors.grey.withOpacity(0.4),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Search',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
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
                )
              ],
            ),
          )),
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
