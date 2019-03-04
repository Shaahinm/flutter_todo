import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:todo/model/todo.dart';
import 'package:todo/routes.dart';
import 'package:todo/states/todos_state.dart';

class Application {
  final todosState = TodosState();

  ScopedModel<TodosState> run() {
    var localTodos = List.generate(
        10, (i) => Todo('title $i', 'longer descroption for all'));
    todosState.addTodos(localTodos);
    return ScopedModel<TodosState>(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Todo',
          initialRoute: '/',
          theme: new ThemeData(
              primaryColor: Colors.black,
              primaryIconTheme: IconThemeData(color: Colors.red),
              primaryTextTheme:
                  TextTheme(title: TextStyle(color: Colors.black)),
              textTheme: TextTheme(title: TextStyle(color: Colors.black))),
          routes: Routes.avilableRoutes),
      model: todosState,
    );
  }
}
