import 'package:flutter/material.dart';
import 'package:flutter_todo_list/models/task_data.dart';
import 'package:provider/provider.dart';

import 'screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          canvasColor: Colors.black87,
          accentColor: Colors.blue[900],
        ),
        home: TasksScreen(),
      ),
    );
  }
}
