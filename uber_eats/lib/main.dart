import 'package:flutter/material.dart';
import 'package:uber_eats/Home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    )
  );
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPass = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
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
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                width: 300,
                child: TextField(
                  // showCursor: false,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.black.withOpacity(0.8),
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent[400]!)),
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
                  // showCursor: false,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.black.withOpacity(0.8),
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent[400]!)),
                      iconColor: Colors.green,
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: "email"),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 300,
                child: TextField(
                  // showCursor: false,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.black.withOpacity(0.8),
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent[400]!)),
                      iconColor: Colors.green,
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: "phonenumber"),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 300,
                child: TextField(
                  // showCursor: false,
                  obscureText: showPass,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.black.withOpacity(0.8),
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showPass = !showPass;
                            });
                          },
                          icon: Icon(Icons.remove_red_eye),
                          color: Colors.green),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent[400]!)),
                      iconColor: Colors.green,
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: "password"),
                ),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 30,
              width: 100,
              child: ElevatedButton(
                // sendInfoToServer(
                //     _controllerFirstName.text,
                //     _controllerLastName.text,
                //     _controllerPassword.text,
                //     _controllerPhoneNumber.text,
                //     _controllerEmail.text);
                child: const Text('Sign up'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.white))),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 110),
                    child: Text(
                      'already have an account?',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: InkWell(
                        child: Text(
                      'login',
                      style: TextStyle(color: Colors.green.withOpacity(0.6)),
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
