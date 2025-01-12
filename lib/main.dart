import 'package:flutter/material.dart';
import 'package:myapp/Screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 90, 210, 88),
      ),
      home:  WelcomeScreen(),
    );
  }
}
