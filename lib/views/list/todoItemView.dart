import 'package:flutter/material.dart';
import 'package:todo/model/todo.dart';

class TodoItemView extends StatelessWidget {
  Todo _todo;

  TodoItemView({Todo todo}) {
    _todo = todo;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_todo.title),
      onTap: () => debugPrint('item clicked'),
    );
  }
}
