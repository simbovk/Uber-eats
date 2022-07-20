import 'package:flutter/material.dart';

class AccountButton extends StatefulWidget {
  const AccountButton({Key? key}) : super(key: key);

  @override
  State<AccountButton> createState() => _AccountButtonState();
}

class _AccountButtonState extends State<AccountButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: info(),
      ),
    );
  }
}

Widget info() {
  return Column(
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
                  child: const Text('Submit'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.green))),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const Home(),
                    //   ),
                    // );
                  },
                ),
              ),
    ],
  );
}
