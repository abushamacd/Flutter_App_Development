import 'package:flutter/material.dart';
import 'package:task_manager/src/HomePage_controller.dart';
import 'package:task_manager/styles/appColor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final controller = homapageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Task Manager",
          style: TextStyle(color: appColor.whiteColor),
        ),
        backgroundColor: appColor.primaryColor,
      ),

      // body
      body: ListView.builder(
          itemCount: controller.taskList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: InkWell(
                onLongPress: () {
                  setState(() {
                    controller.updateStatus(index);
                  });
                },
                child: ExpansionTile(
                  leading: Icon(
                    Icons.list,
                    size: 30,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        controller.taskList[index].title,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      controller.taskList[index].status
                          ? Icon(
                              Icons.check,
                              size: 20,
                              color: appColor.primaryColor,
                            )
                          : SizedBox.shrink()
                    ],
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFEBE7E7),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 100,
                            width: 500,
                            child: Text(controller.taskList[index].details),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),

      // acction button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (ctx) {
                return AlertDialog(
                  title: Text(
                    "Add New Task",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: controller.titleController,
                        decoration: InputDecoration(
                            labelText: "Task Title",
                            labelStyle: TextStyle(fontWeight: FontWeight.w600),
                            hintText: "Type task title..."),
                      ),
                      TextField(
                        controller: controller.detailsController,
                        decoration: InputDecoration(
                            labelText: "Details",
                            labelStyle: TextStyle(fontWeight: FontWeight.w600),
                            hintText: "Type task details..."),
                      ),
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(appColor
                              .primaryColor), // Change the background color here
                        ),
                        onPressed: () {
                          setState(() {
                            controller.addTask();
                          });
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Add Task",
                          style: TextStyle(
                              color: appColor.whiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                );
              });
        },
        child: Icon(
          Icons.add,
          color: appColor.whiteColor,
          size: 30,
        ),
        backgroundColor: appColor.primaryColor,
      ),
    );
  }
}
