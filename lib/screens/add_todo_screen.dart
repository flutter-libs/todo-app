import 'package:flutter/material.dart';
import 'package:todo/models/todo.dart';
import 'package:todo/models/todo_data.dart';
import 'package:provider/provider.dart';

class AddTodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTodoTitle = '';
    return Container(
      color: Colors.indigoAccent,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.indigoAccent
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTodoTitle = newText;
              },
            ),
            TextButton(
              onPressed: () {
                Provider.of<TodoData>(context, listen: false).addTodo(newTodoTitle);
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.indigoAccent
              ),
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
