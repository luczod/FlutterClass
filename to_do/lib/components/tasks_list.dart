import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/components/task_tile.dart';
import 'package:to_do/providers/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final item = taskData.tasks[index];
          return TaskTile(
            taskTitle: item.name,
            isChecked: item.isDone,
            checkBoxCallBack: (checkboxState) {
              taskData.updateTask(item);
            },
            longPressCallBack: () {
              taskData.deleteTask(item);
            },
          );
        },
        itemCount: context.watch<TaskData>().taskCount,
      );
    });
  }
}

/*
tasks.map(
 (task) => TaskTile(
  taskTitle: task.name,
  isChecked: task.isDone,
 ),
).toList(growable: false),*/
