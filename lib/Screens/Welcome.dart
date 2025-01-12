import 'package:flutter/material.dart';
import 'package:myapp/Screens/login.dart';
import 'package:myapp/Screens/registration.dart';

class Welcome_screen extends StatefulWidget {
  const Welcome_screen({super.key});

  @override
  State<Welcome_screen> createState() => _Welcome_screenState();
}

class _Welcome_screenState extends State<Welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/quicksync.png",
              height: 195,
              width: 195,
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 58, 59, 58),
                        width: 2.0),
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 59, 58),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            GestureDetector(
              onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignupScreen(),
                                ),
                              );
                            },
            child: Container(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              margin: const EdgeInsets.only(left: 30.0, right: 30.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 58, 59, 58),
                  borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
            ),
            const Text(
              "Login with Social Media",
              style: TextStyle(
                color: Color.fromARGB(255, 58, 59, 58),
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Image.asset(
                    "images/insta.jpg",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Image.asset(
                    "images/facebook.jpg",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Image.asset(
                    "images/google.jpg",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
