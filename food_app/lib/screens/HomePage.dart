import 'package:flutter/material.dart';
import 'package:food_app/components/CategoryComponent.dart';
import 'package:food_app/components/FDComponent.dart';
import 'package:food_app/components/HeaderComponent.dart';
import 'package:food_app/components/SearchComponent.dart';
import 'package:food_app/styles/AppColor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                HeaderComponent(),
                // search area
                SearchComponent(),
                // Category area
                CategoryComponent(),
                // Fast Delivery
                FDComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
