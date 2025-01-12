import 'package:flutter/material.dart';
import 'package:myapp/Screens/login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Added to prevent overflow
        child: Container(
          padding: const EdgeInsets.only(top: 50),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 60, 202, 65),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Sign Up!",
                  style: TextStyle(
                    fontSize: 32, // Taille de police
                    fontWeight: FontWeight.bold, // Gras
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Username",
                        style: TextStyle(
                          color: Color.fromARGB(255, 60, 202, 65),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          prefixIcon: Icon(Icons.person_outline),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "Email",
                        style: TextStyle(
                          color: Color.fromARGB(255, 60, 202, 65),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Email",
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "Password",
                        style: TextStyle(
                          color: Color.fromARGB(255, 60, 202, 65),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          prefixIcon: Icon(Icons.lock_outline),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Center(
                        child: Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 23, 82, 25),
                          ),
                          child: const Center(
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20), // Adjusted spacing
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Centering the text
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              " Sign In",
                              style: TextStyle(
                                color: Color.fromARGB(255, 60, 202, 65),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}