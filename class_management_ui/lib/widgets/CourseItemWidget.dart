// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseItemWidget extends StatelessWidget {
  const CourseItemWidget({
    Key? key,
    required this.cardColor,
    required this.cardTitle,
    required this.cardIcon,
  }) : super(key: key);

  final Color cardColor;
  final String cardTitle;
  final String cardIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 150,
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // image
          SvgPicture.asset(cardIcon, semanticsLabel: cardTitle),
          const SizedBox(
            height: 08,
          ),
          // text
          Text(
            cardTitle,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
