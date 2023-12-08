import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
   // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
   AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String? newTaskTitle;
    // ignore: avoid_unnecessary_containers
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.indigo[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {
              addTaskCallback(newTaskTitle);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
              foregroundColor: Colors.white,
            ),
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
