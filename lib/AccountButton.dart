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
        bottomNavigationBar: Container(
          //color: Colors.black,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black), color: Colors.white),
          child: BottomNavigationBar(
            fixedColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const YourProduct(),
                      //   ),
                      // );
                    },
                    child: const Text('Submit Changes'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.green))),
                    ),
                  ),
                  label: 'Finish'),
            ],
            //selectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

Widget info() {
  return Column(
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
                      borderSide: BorderSide(color: Colors.greenAccent[400]!)),
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
                      borderSide: BorderSide(color: Colors.greenAccent[400]!)),
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
                      borderSide: BorderSide(color: Colors.greenAccent[400]!)),
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
                      borderSide: BorderSide(color: Colors.greenAccent[400]!)),
                  iconColor: Colors.green,
                  hintStyle: const TextStyle(color: Colors.grey),
                  hintText: "email"),
            )),
      ),
      SizedBox(
        height: 40,
      ),
      InkWell(
          //  onTap: (){
          //                   Navigator.push(
          //                     context,
          //                     MaterialPageRoute(
          //                       builder: (context) => const Login(),
          //                     ),
          //                   );
          //                 },
          child: Text(
        'Change Password',
        style: TextStyle(color: Colors.green.withOpacity(0.6) , fontWeight: FontWeight.bold , fontSize: 15),
      )),
    ],
  );
}
