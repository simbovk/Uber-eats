import 'package:flutter/material.dart';
import 'package:uber_eats/Account.dart';
import 'package:uber_eats/HomePage.dart';

import 'Orders.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    late List<Widget> _pages;
    Widget _home;
    Widget _orders;
    Widget _account;
    int _currentIndex;
    Widget _currentPage;
    // _home = homePage();
    // _orders = Orders();
    // _account = MyAccount();
    // _pages = [_home, _orders, _account];

    @override
    void initState() {
      super.initState();
      _home = const homePage();
      _orders = const Orders();
      // _account = Page3(changePage: _changeTab);
      _account = const MyAccount();
      _pages = [_home, _orders, _account];
      _currentIndex = 0;
      _currentPage = _home;
    }

    void _changeTab(int index) {
      setState(() {
        _currentIndex = index;
        // print(_currentIndex + 1);
        _currentPage = _pages[_currentIndex];
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green.withOpacity(0.8),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Center(
                  child: Container(
                    height: 25,
                    width: 105,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black.withOpacity(0.3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      label: Text(
                        'Adress',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_drop_down_rounded,
                        color: Colors.white,
                        //semanticLabel: 'Adress',
                      ),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 30),
              //   child: Container(
              //     height: 50,
              //     width: 160,
              //     decoration: const BoxDecoration(
              //       image: DecorationImage(
              //           // opacity: 0.6,
              //           image: AssetImage("assets/images/uberEatsLogo.jpeg"),
              //           fit: BoxFit.fill),
              //       // borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //     ),
              //   ),
              // ),
              IconButton(
                  icon: const Icon(Icons.shopping_basket_sharp),
                  onPressed: () {}),
            ]),
        drawer: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
          child: Drawer(
            backgroundColor: Colors.black.withOpacity(0.5),
            width: 250,
            // shape: ShapeBorder(),
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(
                      //     bottomRight: Radius.circular(30),
                      //     bottomLeft: Radius.circular(30)),
                      // border: Border(
                      //   bottom: BorderSide(
                      //     color: Colors,
                      //     width: 1,
                      //   ),
                      // ),
                      image: DecorationImage(
                        opacity: 0.8,
                        image: AssetImage('assets/images/fiftyShades.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 120, top: 50),
                          child: Text(
                            'Amirali Vakili',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 95, top: 5),
                          child: Text(
                            '+98 939 306 8161',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                        )
                      ],
                    )),
                ListTile(
                  title: Text('My Resturant',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  trailing: Icon(Icons.store, color: Colors.green, size: 25),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'About',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  trailing: Icon(Icons.question_mark_rounded,
                      color: Colors.green, size: 25),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Contact',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  trailing: Icon(Icons.phone, color: Colors.green, size: 25),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  color: Colors.white,
                  height: 30,
                ),
                ListTile(
                  title: Text('Log out',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  trailing:
                      Icon(Icons.logout_rounded, color: Colors.green, size: 25),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        body: _currentPage,
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.green,
            onTap: (index) {
              print(index);
              _changeTab(index);
            },
            currentIndex: _currentIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Orders',
                icon: Icon(Icons.menu_book_outlined),
              ),
              BottomNavigationBarItem(
                label: 'Account',
                icon: Icon(Icons.person),
              ),
            ]),
      ),
    );
  }
}
