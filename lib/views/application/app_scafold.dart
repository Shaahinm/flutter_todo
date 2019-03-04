import 'package:flutter/material.dart';

class AppScafold extends StatelessWidget {
  String _title;  
  AppScafold({String title = "Home"}) {
    _title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar(),
        body: Container(),
        bottomNavigationBar: Container());
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: Color(0xfff8faf8),
      centerTitle: true,
      elevation: 1.0,
      leading: IconButton(
        icon: Icon(Icons.camera_enhance),
        tooltip: 'Take a Picture',
        onPressed: () => debugPrint('button Clicked'),
      ),
      title: Text(_title),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: IconButton(
            icon: Icon(Icons.send),
            tooltip: 'Send a new message',
            onPressed: () => debugPrint('button Clicked'),
          ),
        )
      ],
    );
  }
}
