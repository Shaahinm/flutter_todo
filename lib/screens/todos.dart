import 'package:flutter/material.dart';
import 'package:todo/states/todos_state.dart';
import 'package:todo/views/application/app_scafold.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:todo/views/list/todoContainer.dart';

class Todos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return AppScafold(title: 'Todos');
    return ScopedModelDescendant<TodosState>(
      builder: (context, child, model) {
        return Material(
          child: TodoContainer(todos: model.todos),
        );
      },
    );
  }
}
