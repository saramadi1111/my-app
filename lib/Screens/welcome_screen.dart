import 'package:flutter/material.dart';
import 'package:myapp/Screens/Welcome.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView( // Ajout du SingleChildScrollView
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.6,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 50, 223, 56),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.6,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(70),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        "images/quicksync.png",
                        width: 300,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.666,
                  padding: const EdgeInsets.only(top: 40, bottom: 30),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 50, 223, 56),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Learning is Everything",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          "Learning with Pleasure with Dear Programmer, Wherever you are.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {
                            // Navigation vers la page Welcome
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Welcome_screen(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 80,
                            ),
                            child: const Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
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