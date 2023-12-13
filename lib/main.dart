import 'package:flutter/material.dart';
import 'package:todo_list/Models/task_data.dart';
import 'package:todo_list/Screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const ToDoList());
}

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    // from the provider package 
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}