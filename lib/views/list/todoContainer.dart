import 'package:flutter/material.dart';
import 'package:todo/model/todo.dart';
import 'package:todo/views/list/todoItemView.dart';

class TodoContainer extends StatelessWidget {
  List<Todo> _todos;
  TodoContainer({List<Todo> todos}) {
    _todos = todos;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: generateTodos(),
    );
  }

  List<TodoItemView> generateTodos() {
    return _todos.map((todo) => TodoItemView(todo: todo)).toList();
  }
}
