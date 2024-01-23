import 'package:flutter/material.dart';
import 'package:food_app/styles/AppColor.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'What would you like \nto orders!',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  fillColor: AppColors.lightBackgroundColor,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.whiteColor,
                  ),
                  hintText: 'Find for resturaunt or food..',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide:
                          BorderSide(width: 0.6, color: AppColors.whiteColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide:
                          BorderSide(width: 0.6, color: AppColors.whiteColor)),
                ),
              )),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                    color: AppColors.lightBackgroundColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: Icon(
                    Icons.menu,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ]);
  }
}
