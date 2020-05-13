// 设置Bottom tarbar

import 'package:flutter/material.dart';

class MyAppBar4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom"),
        bottom: TabBar(
          tabs: <Widget>[
            Text("1"),
            Text("2"),
            Text("3")
          ],
          controller: TabController(length: 3, vsync: ScrollableState()),
        ),
      ),
      drawer: Drawer(),
    );
  }
}