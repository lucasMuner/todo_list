import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';
import '../widgets/tasks_list.dart';
import 'add_tasks_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.purple,
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTasksScreen());
        },
      ),
      body: Column(children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
              left: 30.0, top: 60.0, right: 250.0, bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40,
                child: Icon(
                  Icons.list,
                  size: 45,
                  color: Colors.purple,
                ),
              ),
              Text(
                'Todo',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '${Provider.of<TaskData>(context).tasks.length} Tarefas',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: TasksList(),
          ),
        ),
      ]),
    );
  }
}
