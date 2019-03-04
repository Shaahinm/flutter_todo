import 'package:scoped_model/scoped_model.dart';
import 'package:todo/model/todo.dart';
import 'dart:collection';

class TodosState extends Model {
  final List<Todo> _todos = [];
  UnmodifiableListView<Todo> get todos => UnmodifiableListView(_todos);
  void addTodo({Todo todo}) {
    _todos.add(todo);
    notifyListeners();
  }

  void addTodos(List<Todo> todos) {
    for (var item in todos) {
      addTodo(todo: item);
    }
  }
}
