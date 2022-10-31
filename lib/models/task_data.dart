import 'package:flutter/material.dart';
import 'package:mytodo/models/task.dart';
import 'package:provider/provider.dart';

class TaskData  extends ChangeNotifier{
  List <Task> tasks =[];

void addTask(String name){
  tasks.add(Task(name: name, ));
  notifyListeners();
}

void updateChecbox(Task task){
  task.isDoneChange();
  notifyListeners();
}

void deleteTask(Task task){
tasks.remove(task);
notifyListeners();

}

}