import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:nagivation/routes/rotue_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text("Navigation"),
  //     ),
  //     body: Center(
  //       child: Column(
  //         children: [
  //           Text("Home Page"),
  //           ElevatedButton(
  //             onPressed: () {
  //               // Navigator.pushNamed(context, "/about");
  //               context.goNamed(Routes.about);
  //             },
  //             child: Text("Go About"),
  //           ),
  //           ElevatedButton(
  //             onPressed: () {
  //               // Navigator.pushNamed(context, "/contact");
  //               context.goNamed(Routes.contact);
  //             },
  //             child: Text("Go Contact"),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Home Page",
      ),
    );
  }
}
