import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
            // // container and text
            //     Container(
            //   height: 200,
            //   width: 200,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     color: Colors.amber,
            //   ),
            //   child: Center(
            //     child: Text(
            //       "Hello World",
            //       style: TextStyle(fontSize: 20),
            //     ),
            //   ),
            // ),

            // // row and column
            //     Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            //       "Hello World",
            //       style: TextStyle(fontSize: 20),
            //     ),
            //     Text(
            //       "Welcome to earth",
            //       style: TextStyle(fontSize: 20),
            //     ),
            //   ],
            // ),

            //   Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // children: [
            //   Text(
            //     "Hello World",
            //     style: TextStyle(fontSize: 20),
            //   ),
            //   Text(
            //     "Welcome to earth",
            //     style: TextStyle(fontSize: 20),
            //   ),
            // ],

            //    // single child scroll
            //     SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 200,
            //         width: 200,
            //         color: Colors.amber,
            //       ),
            //       Container(
            //         height: 200,
            //         width: 200,
            //         color: Colors.red,
            //       ),
            //       Container(
            //         height: 200,
            //         width: 200,
            //         color: Colors.green,
            //       ),
            //       Container(
            //         height: 200,
            //         width: 200,
            //         color: Colors.blue,
            //       ),
            //     ],
            //   ),
            // ),

            //     // expanded
            //     Column(
            //   children: [
            //     Expanded(
            //       flex: 2,
            //       child: Container(
            //         color: Colors.blue,
            //       ),
            //     ),
            //     Expanded(
            //       flex: 1,
            //       child: Container(
            //         height: 200,
            //         color: Colors.red,
            //       ),
            //     ),
            //   ],
            // ),

            // padding
            Column(
          children: [
            Padding(
              padding: EdgeInsets.all(22),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
