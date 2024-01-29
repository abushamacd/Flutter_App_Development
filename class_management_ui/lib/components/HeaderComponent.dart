import 'package:class_management_ui/style/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // text widgets
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello, Shama",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              "You've got",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "4 tasks today",
              style: TextStyle(
                  color: AppColor.appGreen,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),

        // image widgets
        const badges.Badge(
          badgeContent: Text(
            '3',
            style: TextStyle(color: Colors.white),
          ),
          child: Image(
            image: AssetImage('assets/images/user.png'),
          ),
        )
      ],
    );
  }
}
