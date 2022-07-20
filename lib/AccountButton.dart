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
        body: info(),
      ),
    );
  }
}

Widget info() {
  return Column(
    children: [
      Text('Account Information' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
      SizedBox(height: 30),
      Center(
        child: Container(
          width: 350,
          child: TextFormField(
            initialValue: 'Amirali',
            textAlign: TextAlign.center,
            cursorColor: Colors.black.withOpacity(0.8),
             decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent[400]!)),
                iconColor: Colors.green,
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: "firstname"),
          )
        ),
      ),
      SizedBox(height: 30),
      Center(
        child: Container(
          width: 350,
          child: TextFormField(
            initialValue: 'Vakili',
            textAlign: TextAlign.center,
            cursorColor: Colors.black.withOpacity(0.8),
             decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent[400]!)),
                iconColor: Colors.green,
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: "lastname"),
          )
        ),
      ),
      SizedBox(height: 30),
      Center(
        child: Container(
          width: 350,
          child: TextFormField(
            initialValue: '09393058161',
            textAlign: TextAlign.center,
            cursorColor: Colors.black.withOpacity(0.8),
             decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent[400]!)),
                iconColor: Colors.green,
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: "phonenumber"),
          )
        ),
      ),
      SizedBox(height: 30),
      Center(
        child: Container(
          width: 350,
          child: TextFormField(
            initialValue: '',
            textAlign: TextAlign.center,
            cursorColor: Colors.black.withOpacity(0.8),
             decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent[400]!)),
                iconColor: Colors.green,
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: "email"),
          )
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
