// 带有返回按钮的appbar

import 'package:flutter/material.dart';

class MyAppBar2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("没有设置leading,设置Drawer"),
      ),
      drawer: Drawer(),
    );
  }
}