import 'package:auth_firebase/Auth/LoginPage.dart';
import 'package:auth_firebase/Auth/SignupPage.dart';
import 'package:auth_firebase/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login & Signup Page',
      theme: ThemeData(
        primaryColor: Colors.blue,
        hintColor: Colors.blueAccent,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat',
      ),
      home: HomePage(),
      routes: {
        "/login/": (context) => LoginPage(),
        "/register/": (context) => SignupPage()
      },
    );
  }
}
