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
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.only(right: 330),
                      icon: Icon(Icons.arrow_back , color: Colors.green,),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      // padding: ,
                      icon: Icon(Icons.shopping_basket_rounded , color: Colors.green,),
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
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded, color: Colors.green, size: 35,),),
          ],
        ) ,
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
