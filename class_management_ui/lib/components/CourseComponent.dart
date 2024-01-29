import 'package:class_management_ui/style/AppColor.dart';
import 'package:class_management_ui/style/AssetManager.dart';
import 'package:class_management_ui/widgets/CourseItemWidget.dart';
import 'package:flutter/material.dart';

class CourseComponent extends StatelessWidget {
  const CourseComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Courses",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const Text(
            "Your running subject",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.black54),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CourseItemWidget(
                      cardColor: AppColor.appRedLight,
                      cardTitle: "Mathematics",
                      cardIcon: AssetManager.mathIcon),
                  const SizedBox(
                    width: 24,
                  ),
                  CourseItemWidget(
                      cardColor: AppColor.appYollow,
                      cardTitle: "Chemistry",
                      cardIcon: AssetManager.chemIcon),
                  const SizedBox(
                    width: 24,
                  ),
                  CourseItemWidget(
                      cardColor: AppColor.appPinkLight,
                      cardTitle: "Literature",
                      cardIcon: AssetManager.lectureIcon),
                  const SizedBox(
                    width: 24,
                  ),
                  CourseItemWidget(
                      cardColor: AppColor.appGreen,
                      cardTitle: "Biology",
                      cardIcon: AssetManager.biologyIcon),
                  const SizedBox(
                    width: 24,
                  ),
                  CourseItemWidget(
                      cardColor: AppColor.appBlueLight,
                      cardTitle: "Physics",
                      cardIcon: AssetManager.phicisIcon)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
