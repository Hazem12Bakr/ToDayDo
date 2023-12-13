import 'package:flutter/material.dart';
import 'package:todo_list/Models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks =[
  Task(name: 'go shopping'),
  Task(name: 'buy a gift'),
  Task(name: 'go to the gym'),
];
}