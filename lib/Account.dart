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
          title: Center(child: Text('Round AppBar')),
          backgroundColor: Colors.lightGreen,
          elevation: 0,
          actions: [Icon(Icons.dehaze_sharp)],
        ),
        body: SafeArea(
            child: Column(
          children: [
            ClipPath(
              clipper: RoundShape(),
              child: Container(
                height: 40,
                color: Colors.lightGreen,
              ),
            ),
            Center(
              child: Text('Body'),
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
