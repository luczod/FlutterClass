import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxCallBack;
  final VoidCallback longPressCallBack;

  const TaskTile(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: Colors.black54,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}

/*
void checkBoxCallback(bool? checkboxState) {
  setState(() {
    isChecked = checkboxState;
  });
}*/
