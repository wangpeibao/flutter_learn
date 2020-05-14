// 进度类组件

import 'package:flutter/material.dart';

class MyProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Progress类"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("LinearProgressIndicator"),
            LinearProgressIndicator(),
            Text("LinearProgressIndicator可以设置进度值"),
            LinearProgressIndicator(value: 0.5),
            Text("LinearProgressIndicator,可以设置已完成的颜色和未完成的颜色"),
            LinearProgressIndicator(
              value: 0.5,
              backgroundColor: Colors.green,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
            Text("CircularProgressIndicator的用法和LinearProgressIndicator相同"),
            CircularProgressIndicator(),
            Text("CircularProgressIndicator可以设置进度值"),
            CircularProgressIndicator(value: 0.5),
            Text("CircularProgressIndicator,可以设置已完成的颜色和未完成的颜色"),
            CircularProgressIndicator(
              value: 0.5,
              backgroundColor: Colors.green,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
            Text("RefreshProgressIndicator,刷新指示器"),
            RefreshProgressIndicator(),
          ],
        ),
      ),
    );
  }
}