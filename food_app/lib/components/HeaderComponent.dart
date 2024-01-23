import 'package:flutter/material.dart';
import 'package:food_app/styles/AppColor.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // menu icon
        Container(
          height: 60,
          width: 50,
          decoration: BoxDecoration(
              color: AppColors.lightBackgroundColor,
              borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: Icon(
              Icons.sort,
              color: AppColors.whiteColor,
            ),
          ),
        ),

        // Heading
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Deliver To',
              style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text('Bangladesh Bangladesh',
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500))
          ],
        ),

        // user photo
        Container(
          height: 60,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }
}
