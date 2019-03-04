import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Center(
            child: InkWell(
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontWeight: FontWeight.w900,
                      fontSize: 48.0),
                ),
                onTap: () => Navigator.pushNamed(context, '/todos'))),
      ),
    );
  }
}
