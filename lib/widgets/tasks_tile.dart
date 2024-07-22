import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isCheck;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function()? longPressCallBack;

  TasksTile(
      {required this.isCheck,
      required this.taskTitle,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.purple,
        value: isCheck,
        onChanged: (newValue) {
          checkBoxCallBack(newValue);
        },
      ),
    );
  }
}
