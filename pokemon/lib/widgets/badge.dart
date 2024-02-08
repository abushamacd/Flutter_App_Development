// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TagBadge extends StatelessWidget {
  const TagBadge({
    Key? key,
    required this.tagText,
  }) : super(key: key);

  final String tagText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4, right: 4),
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15.00)),
      child: Text(
        tagText,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
