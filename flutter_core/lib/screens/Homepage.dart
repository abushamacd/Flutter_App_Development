import 'package:flutter/material.dart';
import 'package:flutter_core/screens/list_view_builder.dart';
import 'package:flutter_core/widgets/list_item.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("App Bar"),
          actions: [
            Icon(Icons.search_rounded),
            Icon(Icons.person),
          ],
        ),
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

            //     // padding
            //     Column(
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.all(22),
            //       child: Container(
            //         height: 200,
            //         decoration: BoxDecoration(
            //             color: Colors.red,
            //             borderRadius: BorderRadius.circular(20.0)),
            //       ),
            //     ),
            //     Container(
            //       height: 200,
            //       color: Colors.blue,
            //     ),
            //   ],
            // ),

            // button and sizedbox
            //         Center(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       SizedBox(
            //         width: 150,
            //         child: ElevatedButton(
            //           onPressed: () {
            //             print("Elevated Button");
            //           },
            //           child: Row(
            //             children: [
            //               Icon(
            //                 Icons.ads_click,
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(left: 10),
            //                 child: Text("Click Me"),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       TextButton(
            //         onPressed: () {
            //           print("Text Button");
            //         },
            //         child: Text("Click Me"),
            //       ),
            //       IconButton(
            //         onPressed: () {
            //           print("Icon button");
            //         },
            //         icon: Icon(
            //           Icons.ads_click,
            //           semanticLabel: "Click Me",
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            //     // card, network image, circle avater
            //     Center(
            //   child: Column(
            //     children: [
            //       Padding(
            //         padding: EdgeInsets.all(20),
            //         child: Card(
            //           elevation: 40,
            //           child: Image.network(
            //             "https://res.cloudinary.com/delu47omx/image/upload/v1704209790/MyPort/profile/abushama_v8i4yl.jpg",
            //           ),
            //         ),
            //       ),
            //       CircleAvatar(
            //         backgroundColor: Colors.amber,
            //         radius: 60,
            //         backgroundImage: NetworkImage(
            //             "https://res.cloudinary.com/delu47omx/image/upload/v1704209790/MyPort/profile/abushama_v8i4yl.jpg"),
            //       )
            //     ],
            //   ),
            // ),

            //     // asset image
            //     Center(
            //   child: Image(
            //     image: AssetImage('assets/images/admin.jpg'),
            //   ),
            // )

            //    // stack
            //     Stack(
            //   children: [
            //     Column(
            //       children: [
            //         Container(
            //           height: 100,
            //           width: double.infinity,
            //           color: Colors.amber,
            //         ),
            //         Container(
            //           height: 100,
            //           width: double.infinity,
            //           color: Colors.black,
            //         ),
            //       ],
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(top: 40),
            //           child: CircleAvatar(
            //             backgroundColor: Colors.amber,
            //             radius: 60,
            //             backgroundImage: AssetImage('assets/images/admin.jpg'),
            //           ),
            //         ),
            //       ],
            //     )
            //   ],
            // )

            //     // list view
            //     ListView(
            //   children: [
            //     ListItem(
            //       color: Colors.blue,
            //       text: "List 1",
            //     ),
            //     ListItem(
            //       color: Colors.green,
            //       text: "List 2",
            //     ),
            //     ListItem(
            //       color: Colors.red,
            //       text: "List 3",
            //     ),
            //     ListItem(
            //       color: Colors.amber,
            //       text: "List 4",
            //     ),
            //     ListItem(
            //       color: Colors.purple,
            //       text: "List 5",
            //     ),
            //     ListItem(
            //       color: Colors.blue,
            //       text: "List 1",
            //     ),
            //     ListItem(
            //       color: Colors.green,
            //       text: "List 2",
            //     ),
            //     ListItem(
            //       color: Colors.red,
            //       text: "List 3",
            //     ),
            //     ListItem(
            //       color: Colors.amber,
            //       text: "List 4",
            //     ),
            //     ListItem(
            //       color: Colors.purple,
            //       text: "List 5",
            //     ),
            //   ],
            // )

            // list tile
            //     ListTile(
            //   leading: Icon(Icons.home),
            //   subtitle: Text("Subttile"),
            //   title: Text("Title"),
            //   trailing: Icon(Icons.edit),
            // )

            // ListViewBuilder

            ListViewBuilder()

        // floating button
        ,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Float Button");
          },
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}
