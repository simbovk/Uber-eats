import 'package:flutter/material.dart';

void main() {
  runApp(const SignUp());
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: Container(
                height: 100,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      opacity: 0.6,
                      image: AssetImage("assets/images/uber_eats_logo.png"),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 300,
                child: TextField(
                  showCursor: false,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.black.withOpacity(0.8),
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent[400]!)),
                      iconColor: Colors.green,
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: "name"),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 300,
                child: TextField(
                  showCursor: false,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.black.withOpacity(0.8),
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent[400]!)),
                      iconColor: Colors.green,
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: "email"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
