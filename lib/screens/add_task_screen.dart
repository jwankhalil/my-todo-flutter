// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mytodo/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  

  String? newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'ADD TASK',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskTitle=value;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: (){
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle!);
                Navigator.pop(context);

              },
              child: Text('add',style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent, primary: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
