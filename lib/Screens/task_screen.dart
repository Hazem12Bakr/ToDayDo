import 'package:flutter/material.dart';
import 'package:todo_list/Models/task.dart';
import 'package:todo_list/Screens/add_task_screen.dart';
import 'package:todo_list/widgets/task_list.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks =[
  Task(name: 'go shopping'),
  Task(name: 'buy a gift'),
  Task(name: 'go to the gym'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
             builder: (context)=> SingleChildScrollView(
               // ignore: avoid_unnecessary_containers
               child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
                child:  AddTaskScreen((newTaskTitle){
                  setState(() {
                    tasks.add(Task(name: newTaskTitle));
                    // to close keyboard after finishing typing
                    Navigator.pop(context);
                  });
                  
                }),
                ),
             ),
             );
        },
        backgroundColor: Colors.indigo[400],
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(width: 25),
                Text(
                  'ToDayDo',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 25),
             Text(
              '${tasks.length} Tasks',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: TaskList(tasks),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}


