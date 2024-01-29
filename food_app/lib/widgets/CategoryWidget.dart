// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_app/styles/AppColor.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.categoryTitle,
    required this.categoryPhoto,
  }) : super(key: key);

  final String categoryTitle;
  final String categoryPhoto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          color: AppColors.lightBackgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage(categoryPhoto),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                categoryTitle,
                style: TextStyle(fontSize: 20, color: AppColors.whiteColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
