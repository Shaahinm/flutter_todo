import 'package:flutter/material.dart';
import 'package:todo/model/todo.dart';
import 'package:todo/views/application/app_scafold.dart';

class Detail extends StatelessWidget {
  Todo _todo;

  Detail({Todo todo}) {
    _todo = todo;
  }

  Widget body(BuildContext context) {
    return Center(
      child: Center(
      child: Padding(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(_todo.description),
          IconButton(
            icon: Icon(Icons.send),
            tooltip: 'Send a new message',
            onPressed: () {
              debugPrint('button Clicked');
            },
          ),
          RaisedButton(
            child: Text("Back to Todos"),
            onPressed: () => print('clicked'),
          )
        ],
      ),
      padding: EdgeInsets.all(24.0),
    )));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AppScafold(
        title: "Todo Detail",
        body: body(context),
      ),
    );
  }
}
