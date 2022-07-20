import 'dart:js';

import 'package:flutter/material.dart';

import 'ChangePass.dart';

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
          body: SingleChildScrollView(
              child: Column(
            children: [
              Text(
                'Account Information',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Text('firstname'),
              Center(
                child: Container(
                    width: 350,
                    child: TextFormField(
                      initialValue: 'Amirali',
                      textAlign: TextAlign.center,
                      cursorColor: Colors.black.withOpacity(0.8),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.greenAccent[400]!)),
                          iconColor: Colors.green,
                          hintStyle: const TextStyle(color: Colors.grey),
                          hintText: "firstname"),
                    )),
              ),
              SizedBox(height: 50),
              Text('lastname'),
              Center(
                child: Container(
                    width: 350,
                    child: TextFormField(
                      initialValue: 'Vakili',
                      textAlign: TextAlign.center,
                      cursorColor: Colors.black.withOpacity(0.8),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.greenAccent[400]!)),
                          iconColor: Colors.green,
                          hintStyle: const TextStyle(color: Colors.grey),
                          hintText: "lastname"),
                    )),
              ),
              SizedBox(height: 50),
              Text('phonenumber'),
              Center(
                child: Container(
                    width: 350,
                    child: TextFormField(
                      initialValue: '09393058161',
                      textAlign: TextAlign.center,
                      cursorColor: Colors.black.withOpacity(0.8),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.greenAccent[400]!)),
                          iconColor: Colors.green,
                          hintStyle: const TextStyle(color: Colors.grey),
                          hintText: "phonenumber"),
                    )),
              ),
              SizedBox(height: 50),
              Text('email'),
              Center(
                child: Container(
                    width: 350,
                    child: TextFormField(
                      initialValue: '',
                      textAlign: TextAlign.center,
                      cursorColor: Colors.black.withOpacity(0.8),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.greenAccent[400]!)),
                          iconColor: Colors.green,
                          hintStyle: const TextStyle(color: Colors.grey),
                          hintText: "email"),
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangePass(),
                      ),
                    );
                  },
                  child: Text(
                    'Change Password',
                    style: TextStyle(
                        color: Colors.green.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
              SizedBox(
                height: 50,
              ),
              Divider(
                color: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: 300,
                child: ElevatedButton(
                  // sendInfoToServer(
                  //     _controllerFirstName.text,
                  //     _controllerLastName.text,
                  //     _controllerPassword.text,
                  //     _controllerPhoneNumber.text,
                  //     _controllerEmail.text);
                  child: const Text(
                    'Submit Changes',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
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
          ))),
    );
  }
}
