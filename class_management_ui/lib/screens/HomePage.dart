import 'package:class_management_ui/components/CourseComponent.dart';
import 'package:class_management_ui/components/HeaderComponent.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(),

      // body
      body: const Padding(
          padding: EdgeInsets.all(24),
          child: Column(children: [
            // header
            HeaderComponent(),
            // course
            CourseComponent()
          ])),

      // bottom navigation
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: ""),
          NavigationDestination(icon: Icon(Icons.group), label: ""),
          NavigationDestination(icon: Icon(Icons.person), label: ""),
          NavigationDestination(icon: Icon(Icons.search), label: "")
        ],
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      ),
    );
  }
}
