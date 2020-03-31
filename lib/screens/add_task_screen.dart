import 'package:flutter/material.dart';
import 'package:flutter_todo_list/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskName;
    ThemeData themeData = Theme.of(context);
    return Container(
      color: Color(0xFF01040A),
      child: Container(
        decoration: BoxDecoration(
          color: themeData.canvasColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: themeData.accentColor,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) => (taskName = value),
            ),
            FlatButton(
              color: themeData.accentColor,
              child: Text(
                'Add',
              ),
              onPressed: () {
                if (taskName != null && taskName.isNotEmpty) {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(taskName);
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
