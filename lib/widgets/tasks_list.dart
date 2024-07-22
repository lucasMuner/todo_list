import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';
import 'package:todo_list/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
              isCheck: task.isDone,
              taskTitle: task.name,
              checkBoxCallBack: (newValue) {
                taskData.updateTask(task);
              },
              longPressCallBack: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
