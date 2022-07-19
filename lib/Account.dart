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
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(child: Text('Profile')),
          backgroundColor: Colors.green.withOpacity(0.8),
          elevation: 0,
          actions: [
            InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const Login(),
                  //   ),
                  // );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 10 , top: 15),
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.white , fontSize: 20),
                  ),
                )),
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
