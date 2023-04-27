import 'package:flutter/material.dart';
import 'package:todo/screens/todo_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/todo_data.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoData(),
      child: MaterialApp(
        home: TodoScreen(),
      ),
    );
  }
}
