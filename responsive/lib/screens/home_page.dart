import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context);

    return Scaffold(
      body: Center(
        // child: device.platformBrightness == Brightness.light
        //     ? Text(
        //         "Height: ${(device.size.height).toInt()}",
        //         style: TextStyle(fontSize: device.textScaler.scale(30)),
        //       )
        //     : Text(
        //         "Width: ${(device.size.width).toInt()}",
        //         style: TextStyle(fontSize: device.textScaler.scale(30)),
        //       ),
        // child: Column(
        //   children: [
        //     // Expanded(
        //     //   flex: 2,
        //     //   child: Container(
        //     //     color: Colors.amber,
        //     //     height: 300,
        //     //   ),
        //     // ),
        //     // Expanded(
        //     //   flex: 3,
        //     //   child: Container(
        //     //     color: Colors.red,
        //     //     height: 300,
        //     //   ),
        //     // ),
        //     Flexible(
        //       flex: 3,
        //       child: Container(
        //         color: Colors.amber,
        //       ),
        //     ),
        //     Flexible(
        //       flex: 6,
        //       child: Container(
        //         color: Colors.red,
        //       ),
        //     ),
        //   ],
        // ),

        // layout builder
        child: LayoutBuilder(
          builder: ((context, constraints) {
            if (constraints.maxWidth > 500) {
              return Container(
                color: Colors.amber,
                height: device.size.height - kBottomNavigationBarHeight,
              );
            } else {
              return Container(
                color: Colors.blue,
                height: double.infinity,
              );
            }
          }),
        ),
      ),
    );
  }
}
