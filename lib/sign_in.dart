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
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
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
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (builder) => const Home()),
        );
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
      ),
    );
  }
}
