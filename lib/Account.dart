import 'package:flutter/material.dart';
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
          toolbarHeight: 90,
          backgroundColor: Colors.green.withOpacity(0.8),
          elevation: 0,
          actions: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.only(right: 330),
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      // padding: ,
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        // like drawer
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Amirali Vakili' , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ],
            )
          ],
        ),
        body: SafeArea(
            child: Column(
          children: [
            ClipPath(
              clipper: RoundShape(),
              child: Container(
                height: 35,
                color: Colors.green.withOpacity(0.8),
              ),
            ),
          ],
        )),
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
