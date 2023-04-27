import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool isChecked;
  final String todoTitle;
  final ValueChanged<bool?> checkboxCallback;
  final VoidCallback longPressCallback;

  TodoTile({
    required this.isChecked,
    required this.todoTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        todoTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.indigoAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
