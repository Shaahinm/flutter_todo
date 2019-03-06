import 'package:flutter/material.dart';
import 'package:todo/model/todo.dart';
import 'package:todo/screens/detail.dart';

class TodoItemView extends StatelessWidget {
  Todo _todo;

  TodoItemView({Key key, Todo todo}) : super(key: key) {
    _todo = todo;
    print(key);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_todo.title),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Detail(todo: _todo)));
      },
    );
  }
}
