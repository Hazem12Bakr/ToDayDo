import 'package:flutter/material.dart';
import 'package:todo_list/Models/task.dart';
import 'package:todo_list/widgets/list_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  const TaskList(this.tasks, {super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index){
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxChange:(newValue) {
        setState(() {
          widget.tasks[index].donechange();
        });
      },
          );
      },
      );


    // return ListView(
    //   children: [
    //     TaskTile(
    //       taskTitle: tasks[0].name,
    //       isChecked:tasks[0].isDone,
    //     ),
    //     TaskTile(
    //       taskTitle: tasks[1].name,
    //       isChecked:tasks[1].isDone,
    //       ),
    //   ],
    // );
  }
}

