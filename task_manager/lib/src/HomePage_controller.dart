import 'package:flutter/material.dart';
import 'package:task_manager/models/taskModel.dart';

class homapageController {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();

  List<taskDataModel> taskList = [
    taskDataModel(title: "Demo Class 1", details: "details 1", status: true),
  ];

  void addTask() {
    taskList.add(taskDataModel(
        title: titleController.text,
        details: detailsController.text,
        status: false));

    titleController.clear();
    detailsController.clear();
  }

  void updateStatus(index) {
    taskList[index].status = !taskList[index].status;
    print(index);
  }
}
