// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String name;
  final bool isChecked;
  final Function(bool?) checkboxChange;
  final Function() deletCheck;

  const TaskTile(
      {required this.name,
      required this.isChecked,
      required this.checkboxChange,
      required this.deletCheck});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxChange,
      ),
      onLongPress: deletCheck,
    );
  }
}
