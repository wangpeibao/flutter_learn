// 关于页控件

import 'package:flutter/material.dart';

class MyAboutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("关于页"),),
      body: RaisedButton(
        onPressed: () {
          showAboutDialog(
              context: context,
              applicationName: "学习中",
              applicationVersion: "v1.0.0",
              applicationLegalese: "啥也没有",
              applicationIcon: Image.asset("assets/images/kong-logo.png"),
              children: <Widget>[
                Text("1"),
                Text("2")
              ]
          );
        },
        child: Text("打开关于页"),
      )
    );
  }
}