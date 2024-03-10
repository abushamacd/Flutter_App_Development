import 'dart:convert';
import 'package:api_call/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List data = [];
  void loadPost() async {
    http.Response res = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );
    setState(() {
      data = jsonDecode(res.body);
    });
  }

  @override
  void initState() {
    super.initState();
    loadPost();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(data: data),
    );
  }
}
