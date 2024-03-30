import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  InfoText({super.key, required this.text});

  final text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
      child: Text(
        "${text}",
        style: TextStyle(
            fontSize: 18.0, fontWeight: FontWeight.w200, color: Colors.white),
      ),
    );
  }
}
