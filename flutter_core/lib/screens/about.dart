import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome, $name"),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (ctx) {
                  //       return Contact();
                  //     },
                  //   ),
                  // );

                  Navigator.pushNamed(
                    context,
                    "/contact",
                  );
                },
                child: Text("Go Contact"))
          ],
        ),
      ),
    );
  }
}
