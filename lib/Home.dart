import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'HomePage.dart';
import 'Account.dart';
import 'Orders.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<Widget> _pages;
  late Widget _home;
  late Widget _orders;
  late Widget _account;
  late int _currentIndex;
  late Widget _currentPage;
  // _home = homePage();
  // _orders = Orders();
  // _account = MyAccount();
  // _pages = [_home, _orders, _account];

  @override
  void initState() {
    super.initState();
    _home = const HomePage();
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.green,
          actions: <Widget>[
            //   Padding(
            //     padding: const EdgeInsets.only(right: 100),
            //     child: Center(
            //       child: SizedBox(
            //         height: 25,
            //         width: 105,
            //         child: ElevatedButton.icon(
            //           style: ElevatedButton.styleFrom(
            //             primary: Colors.black.withOpacity(0.3),
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(30.0),
            //             ),
            //           ),
            //           label: const Text(
            //             'Address',
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 12
            //             ),
            //           ),
            //           onPressed: () {},
            //           icon: const Icon(
            //             Icons.arrow_drop_down_rounded,
            //             color: Colors.white,
            //             semanticLabel: 'Address',
            //           ),
            //         ),
            //       ),
            //     ),
            //     // Padding(
            //     //   padding: const EdgeInsets.only(right: 30),
            //     //   child: Container(
            //     //     height: 50,
            //     //     width: 160,
            //     //     decoration: const BoxDecoration(
            //     //       image: DecorationImage(
            //     //           // opacity: 0.6,
            //     //           image: AssetImage("assets/images/uberEatsLogo.jpeg"),
            //     //           fit: BoxFit.fill),
            //     //       // borderRadius: BorderRadius.all(Radius.circular(8.0)),
            //     //     ),
            //     //   ),
            //     // ),
            //   ),
            IconButton(
              icon: const Icon(Icons.shopping_basket_sharp),
              onPressed: () {},
            ),
          ],
        ),
        drawer: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: Drawer(
            backgroundColor: Colors.black.withOpacity(0.5),
            width: 250,
            // shape: ShapeBorder(),
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
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
                      const SizedBox(height: 40),
                      const Padding(
                        padding: EdgeInsets.only(right: 120, top: 50),
                        child: Text(
                          'Amirali Vakili',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
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
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: const Text(
                    'My Restaurant',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.store,
                    color: Colors.green,
                    size: 25,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text(
                    'About',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.question_mark_rounded,
                    color: Colors.green,
                    size: 25,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.phone,
                    color: Colors.green,
                    size: 25,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  color: Colors.white,
                  height: 30,
                ),
                ListTile(
                  title: const Text(
                    'Log out',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.logout_rounded,
                    color: Colors.green,
                    size: 25,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        body: _currentPage,
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(iconTheme: IconThemeData(color: Colors.white)),
          child: CurvedNavigationBar(
            backgroundColor: Colors.white.withOpacity(0.0),
            buttonBackgroundColor: Colors.green,
            color: Colors.green,
            height: 50,
            onTap: (index) {
              _changeTab(index);
            },
            index: _currentIndex,
            items: const [
              Icon(Icons.home),
              Icon(Icons.menu_book_outlined),
              Icon(Icons.person),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => {}, child: Icon(Icons.location_on)),
      ),
    );
  }
}
