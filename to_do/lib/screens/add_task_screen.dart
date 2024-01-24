import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/constants.dart';
import 'package:to_do/providers/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  // final Function(String) addTaskCallback;

  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: kBoxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            kLabel,
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: kInputDecoration,
              style: const TextStyle(color: Colors.black),
              onChanged: (newValue) {
                newTaskTitle = newValue;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              onPressed: () {
                context.read<TaskData>().addNewTask(newTaskTitle);
                Navigator.of(context).pop();
              },
              child: kButtonText,
            )
          ],
        ),
      ),
    );
  }
}
