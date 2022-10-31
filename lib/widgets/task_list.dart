// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mytodo/models/task_data.dart';
import 'package:mytodo/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, textData, child) {
        return ListView.builder(
            itemCount: textData.tasks.length,
            itemBuilder: (cotext, index) {
              return TaskTile(
                  name: textData.tasks[index].name,
                  isChecked: textData.tasks[index].isDone,
                  checkboxChange: (newTitle) {
                    textData.updateChecbox(textData.tasks[index]);
                  },
                  deletCheck: () {
                    textData.deleteTask(textData.tasks[index]);
                  });
            });
      },
    );
  }
}
