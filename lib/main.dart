import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'Home.dart';

void main() => const MyApp();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black.withOpacity(0.8),
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent[400]!),
                      ),
                      iconColor: Colors.green,
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: "Name",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black.withOpacity(0.8),
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent[400]!),
                      ),
                      iconColor: Colors.green,
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: "Email",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black.withOpacity(0.8),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent[400]!),
                      ),
                      iconColor: Colors.green,
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: "Phone number",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    obscureText: showPass,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black.withOpacity(0.8),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                            showPass ? Icons.visibility : Icons.visibility_off),
                        color: Colors.green,
                        onPressed: () {
                          setState(() {
                            showPass = !showPass;
                          });
                        },
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent[400]!)),
                      iconColor: Colors.green,
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: "         Password",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
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
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  },
                  // sendInfoToServer(
                  //     _controllerFirstName.text,
                  //     _controllerLastName.text,
                  //     _controllerPassword.text,
                  //     _controllerPhoneNumber.text,
                  //     _controllerEmail.text);
                  child: const Text('Sign up'),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ),
                          );
                        },

//                         child: TextButton(
// >>>>>>> 7e96690456fd0183855699eddf1a8bf9eb146994
//                           child: Text(
//                             'Sign in',
//                             style:
//                                 TextStyle(color: Colors.green.withOpacity(0.6)),
//                           ),
//                           onPressed: () {
//                             Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const SignIn(),
//                               ),
//                             );
//                           },
//                         ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
