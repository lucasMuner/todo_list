import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';

class AddTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = "";
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Adicionar tarefa:",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text(
                "Add",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.purple),
            )
          ],
        ),
      ),
    );
  }
}
