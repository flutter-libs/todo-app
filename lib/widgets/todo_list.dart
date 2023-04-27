import 'package:flutter/material.dart';
import 'package:todo/widgets/todo_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/todo_data.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoData>(
      builder: (context, todoData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final todo = todoData.todos[index];
            return TodoTile(
              todoTitle: todo.name,
              isChecked: todo.isDone,
              checkboxCallback: (checkboxState) {
                todoData.updateTodo(todo);
              },
              longPressCallback: () {
                todoData.deleteTodo(todo);
              },
            );
          },
          itemCount: todoData.todoCount,
        );
      },
    );
  }
}