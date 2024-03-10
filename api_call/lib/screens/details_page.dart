import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.id});

  final String id;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Map post = {};

  void loadPost() async {
    http.Response res = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts/${widget.id}"),
    );
    setState(() {
      post = jsonDecode(res.body);
    });
  }

  @override
  void initState() {
    super.initState();
    loadPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${post["title"]}"),
      ),
      body: Center(
        child: Text("${post["body"]}"),
      ),
    );
  }
}
