import 'package:flutter/material.dart';
import 'screens/HomePage.dart';

void main() {
  runApp(const ClassManagementApp());
}

class ClassManagementApp extends StatelessWidget {
  const ClassManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
