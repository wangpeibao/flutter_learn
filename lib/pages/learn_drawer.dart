// 抽屉组件，配合Scaffold

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Text("1"),
            Text("2"),
            RaisedButton(child: Text("手动关闭Drawer"), onPressed: (){
              Navigator.of(context).pop();
            },),
          ],
        ),
      ),
      body: Builder(
        builder: (BuildContext ctx) {
          return Column(
            children: <Widget>[
              RaisedButton(child: Text("手动打开Drawer"), onPressed: (){
                Scaffold.of(ctx).openDrawer();
              },),
            ],
          );
        },
      )
    );
  }
}