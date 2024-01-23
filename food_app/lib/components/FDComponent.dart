import 'package:flutter/material.dart';
import 'package:food_app/styles/AppColor.dart';
import 'package:food_app/styles/AssetManager.dart';
import 'package:food_app/widgets/FoodWidget.dart';

class FDComponent extends StatelessWidget {
  const FDComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Fast Delivery",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: AppColors.whiteColor),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // food item
                FoodWidget(foodTitle: "Burger", foodPhoto: AssetManager.burger),
                FoodWidget(foodTitle: "Pizza", foodPhoto: AssetManager.pizza),
                FoodWidget(foodTitle: "Suchi", foodPhoto: AssetManager.sushi),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
