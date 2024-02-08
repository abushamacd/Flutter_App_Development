import 'package:flutter/material.dart';

class DetailsTitle extends StatelessWidget {
  const DetailsTitle({
    super.key,
    required this.text,
    required this.color,
    required this.fontWeight,
  });

  final String text;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Text(
        "$text",
        style: TextStyle(fontSize: 22, color: color, fontWeight: fontWeight),
      ),
    );
  }
}
