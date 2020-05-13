// 设置actions功能

import 'package:flutter/material.dart';

class MyAppBar3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("actions"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: (){}),
          IconButton(icon: Icon(Icons.remove), onPressed: (){}),
        ],
      ),
    );
  }
}