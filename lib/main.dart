// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginpage/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/sample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenA(),
    );
  }
}

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("My Application",
                style: TextStyle(
                    //  fontFamily:GoogleFonts.montserrat().fontFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0))),
        body: Center(
            child: ElevatedButton(
          child: Text('Navigation to Second Page'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
          },
        )));
  }
}

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MY Application"),
      ),
      body: const Text("Welcome to 2nd page"),
    );
  }
}
