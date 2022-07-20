import 'package:flutter/material.dart';
import 'package:uber_eats/AccountButton.dart';
import 'package:uber_eats/RoundedAppBar.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
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
        body: Column(
          children: [
            FlatButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountButton(),
                  ),
                )
              },
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Column(
                    children: [
                      const Text(
                        "Amirali Vakili",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'See Your Information',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Center(
                child: Divider(
              color: Colors.black.withOpacity(0.2),
              indent: 15,
              endIndent: 20,
            )),
            FlatButton(
              onPressed: () => {},
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.payment_rounded,
                    color: Colors.green,
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Uber Vallet",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Center(
                child: Divider(
              color: Colors.black.withOpacity(0.2),
              indent: 15,
              endIndent: 20,
            )),
            FlatButton(
              onPressed: () => {},
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.restaurant_menu_outlined,
                    color: Colors.green,
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "My Favorite Resturant",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Center(
                child: Divider(
              color: Colors.black.withOpacity(0.2),
              indent: 15,
              endIndent: 20,
            )),
            FlatButton(
              onPressed: () => {},
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.list_alt_outlined,
                    color: Colors.green,
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "List Of Payments",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Center(
                child: Divider(
              color: Colors.black.withOpacity(0.2),
              indent: 15,
              endIndent: 20,
            )),
            FlatButton(
              onPressed: () => {},
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.logout_rounded,
                    color: Colors.green,
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Log out",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
         bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black.withOpacity(0.4))),
          child: BottomNavigationBar(
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyAccount(),
                        ),
                      );
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

class RoundShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    double curveHeight = size.height / 2;
    var p = Path();
    p.lineTo(0, height - curveHeight);
    p.quadraticBezierTo(width / 2, height, width, height - curveHeight);
    p.lineTo(width, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
