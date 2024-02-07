import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Navigator.pushNamed(
                    context,
                    "/",
                  );
                },
                child: Text("Go Home"))
          ],
        ),
      ),
    );
  }
}
