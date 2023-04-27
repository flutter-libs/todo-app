import 'package:flutter/foundation.dart';
import 'package:todo/models/todo.dart';
import 'dart:collection';

class TodoData extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(name: 'Finish homework'),
    Todo(name: 'Walk the dog'),
    Todo(name: 'Do the dishes'),
  ];

  UnmodifiableListView<Todo> get todos {
    return UnmodifiableListView(_todos);
  }

  int get todoCount {
    return _todos.length;
  }

  void addTodo(String newTodoTitle) {
    final todo = Todo(name: newTodoTitle);
    _todos.add(todo);
    notifyListeners();
  }

  void updateTodo(Todo todo) {
    todo.toggleDone();
    notifyListeners();
  }

  void deleteTodo(Todo todo) {
    _todos.remove(todo);
    notifyListeners();
  }
}