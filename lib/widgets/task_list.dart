import 'package:flutter/material.dart';
import 'package:todo_list/Models/task_data.dart';
import 'package:todo_list/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemCount: TaskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked: TaskData.tasks[index].isDone,
                taskTitle: TaskData.tasks[index].name,
                checkboxChange: (newValue) {
                  TaskData.updateTask(TaskData.tasks[index]);
                });
          },
        );
      },
    );
  }
}
