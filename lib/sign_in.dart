import 'package:flutter/material.dart';
import 'Home.dart';
import 'main.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignIn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool circular = false, passwordObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              buttonItem(
                  'images/google.png', 'Continue with Google', 25, () {}),
              const SizedBox(height: 10),
              const Text(
                "Or",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 10),
              textItem("Email", emailController),
              const SizedBox(height: 15),
              SizedBox(
                width: MediaQuery.of(context).size.width - 70,
                height: 55,
                child: TextFormField(
                  controller: passwordController,
                  obscureText: passwordObscure,
                  style: const TextStyle(fontSize: 17),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordObscure
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      color: Colors.green,
                      onPressed: () {
                        setState(() {
                          passwordObscure = !passwordObscure;
                        });
                      },
                    ),
                    labelText: 'Password',
                    labelStyle: const TextStyle(fontSize: 17),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 1.5,
                        color: Colors.amber,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              colorButton('Sign Up'),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an Account ?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
                          (route) => false);
                    },
                    child: const Text(
                      " Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextButton(
                child: const Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonItem(
      String imagePath, String buttonName, double size, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 60,
        height: 60,
        child: Card(
          elevation: 8,
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath),
              const SizedBox(width: 15),
              Text(
                buttonName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textItem(String name, TextEditingController controller) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 70,
      height: 55,
      child: TextFormField(
        controller: controller,
        style: const TextStyle(fontSize: 17),
        decoration: InputDecoration(
          labelText: name,
          labelStyle: const TextStyle(fontSize: 17),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1.5,
              color: Colors.amber,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Widget colorButton(String name) {
    return InkWell(
      onTap: () async {
        try {
          setState(() {
            circular = false;
          });
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (builder) => const Home()),
              (route) => false);
        } catch (e) {
          final snackbar = SnackBar(content: Text(e.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
          setState(() {
            circular = false;
          });
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 90,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFFD746C),
              Color(0xFFFF9068),
              Color(0xFFFD746C),
            ],
          ),
        ),
        child: Center(
          child: circular
              ? const CircularProgressIndicator()
              : Text(
                  name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
        ),
      ),
    );
  }
}

// class AuthClass {
//   final GoogleSignIn _googleSignIn = GoogleSignIn(
//     scopes: [
//       'email',
//       'https://www.googleapis.com/auth/contacts.readonly',
//     ],
//   );
//   FirebaseAuth auth = FirebaseAuth.instance;
//   final storage = const FlutterSecureStorage();
//
//   Future<void> googleSignIn(BuildContext context) async {
//     try {
//       GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
//       if (googleSignInAccount != null) {
//         GoogleSignInAuthentication googleSignInAuthentication =
//         await googleSignInAccount.authentication;
//
//         AuthCredential credential = GoogleAuthProvider.credential(
//           idToken: googleSignInAuthentication.idToken,
//           accessToken: googleSignInAuthentication.accessToken,
//         );
//
//         try {
//           UserCredential userCredential =
//           await auth.signInWithCredential(credential);
//
//           storeTokenAndData(userCredential);
//           Navigator.pushAndRemoveUntil(
//               context,
//               MaterialPageRoute(builder: (builder) => const HomePage()),
//                   (route) => false);
//         } catch (e) {
//           final snackbar = SnackBar(content: Text(e.toString()));
//           ScaffoldMessenger.of(context).showSnackBar(snackbar);
//         }
//       } else {
//         final snackbar = SnackBar(content: Text("Not Able to sign In "));
//         ScaffoldMessenger.of(context).showSnackBar(snackbar);
//       }
//     } catch (e) {
//       final snackbar = SnackBar(content: Text(e.toString()));
//       ScaffoldMessenger.of(context).showSnackBar(snackbar);
//     }
//   }
//
//   Future<void> storeTokenAndData(UserCredential userCredential) async {
//     await storage.write(
//         key: "token", value: userCredential.credential.token.toString());
//     await storage.write(
//         key: "token", value: userCredential.credential.token.toString());
//   }
//
//   Future<String> getToken() async {
//     return await storage.read(key: "token");
//   }
//
//   Future<void> verifyPhoneNumber(
//       String phoneNumber, BuildContext context, Function setData) async {
//     PhoneVerificationCompleted verificationCompleted =
//         (PhoneAuthCredential phoneAuthCredential) async {
//       showSnackBar(context, "Verification Completed");
//     };
//     PhoneVerificationFailed verificationFailed =
//         (FirebaseAuthException exception) {
//       showSnackBar(context, exception.toString());
//     };
//     PhoneCodeSent codeSent =
//         (String verificationID, [int forceResnedingtoken]) {
//       showSnackBar(context, "Verification Code sent on the phone number");
//       setData(verificationID);
//     };
//     PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
//         (String verificationID) {
//       showSnackBar(context, "Time out");
//     };
//     try {
//       await auth.verifyPhoneNumber(
//           phoneNumber: phoneNumber,
//           verificationCompleted: verificationCompleted,
//           verificationFailed: verificationFailed,
//           codeSent: codeSent,
//           codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
//     } catch (e) {
//       showSnackBar(context, e.toString());
//     }
//   }
//
//   Future<void> logout() async {
//     try {
//       await _googleSignIn.signOut();
//       await auth.signOut();
//     } catch (e) {
//       await storage.delete(key: "token");
//     }
//   }
//
//   Future<void> signInWithPhoneNumber(
//       String verificationId, smsCode, BuildContext context) async {
//     try {
//       AuthCredential credential = PhoneAuthProvider.credential(
//           verificationId: verificationId, smsCode: smsCode);
//       UserCredential userCredential =
//       await auth.signInWithCredential(credential);
//       storeTokenAndData(userCredential);
//       Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (builder) => const HomePage()),
//               (route) => false);
//       showSnackBar(context, "logged Ind");
//     } catch (e) {
//       showSnackBar(context, e.toString());
//     }
//   }
//
//   void showSnackBar(BuildContext context, String text) {
//     final snackbar = SnackBar(content: Text(text.toString()));
//     ScaffoldMessenger.of(context).showSnackBar(snackbar);
//   }
// }
