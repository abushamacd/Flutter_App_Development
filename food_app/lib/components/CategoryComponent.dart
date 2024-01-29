import 'package:flutter/material.dart';
import 'package:food_app/styles/AssetManager.dart';
import 'package:food_app/widgets/CategoryWidget.dart';

class CategoryComponent extends StatelessWidget {
  const CategoryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // category item
            CategoryWidget(
              categoryTitle: "Burger",
              categoryPhoto: AssetManager.burger,
            ),
            CategoryWidget(
              categoryTitle: "Pizza",
              categoryPhoto: AssetManager.pizza,
            ),
            CategoryWidget(
              categoryTitle: "Sushi",
              categoryPhoto: AssetManager.sushi,
            ),
            CategoryWidget(
              categoryTitle: "Salad",
              categoryPhoto: AssetManager.salad,
            ),
            CategoryWidget(
              categoryTitle: "Soup",
              categoryPhoto: AssetManager.soup,
            ),
          ],
        ),
      ),
    );
  }
}
