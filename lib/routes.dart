import 'package:todo/screens/home.dart';
import 'package:todo/screens/todos.dart';

class Routes {
  static final avilableRoutes = {
    '/': (context) => Home(),
    '/todos': (context) => Todos()
  };
}
