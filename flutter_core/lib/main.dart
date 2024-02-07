import 'package:flutter/material.dart';
import 'package:flutter_core/screens/Homepage.dart';
import 'package:flutter_core/screens/about.dart';
import 'package:flutter_core/screens/contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homepage(),
      routes: {
        "/": (context) => Homepage(),
        "/about": (context) => About(name: "Test"),
        "/contact": (context) => Contact(),
      },
      initialRoute: "/",
    );
  }
}
