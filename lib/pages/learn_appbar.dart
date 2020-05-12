// Material风格的导航栏

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: RaisedButton(
              onPressed: (){
              },
            ),
          )
        ],
      ),
    );
  }
}