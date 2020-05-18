// 分割线

import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Divider"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("Divider分割线"),
            Container(
              height: 50,
              color: Colors.green,
              child: Divider(
                height: 40,
                thickness: 5,
                color: Colors.red,
              ),
            ),
            Text("Divider.thickness 修改分割线的宽度"),
            Container(
              height: 50,
              color: Colors.green,
              child: Divider(
                height: 40,
                thickness: 10,
                color: Colors.red,
              ),
            ),
            Text("Divider.indent, endIndent 修改分割线左右的距离"),
            Container(
              height: 50,
              color: Colors.green,
              child: Divider(
                height: 40,
                thickness: 10,
                color: Colors.red,
                indent: 10,
                endIndent: 20,
              ),
            ),
            Text("VerticalDivider水平分割线"),
            Container(
              height: 50,
              width: 400,
              color: Colors.green,
              child: VerticalDivider(
                thickness: 5,
                color: Colors.red,
              ),
            ),
            Text("VerticalDivider.thickness设置线宽度"),
            Container(
              height: 50,
              width: 400,
              color: Colors.green,
              child: VerticalDivider(
                thickness: 10,
                color: Colors.red,
              ),
            ),
            Text("VerticalDivider.indent, endIndent设置线上下边距"),
            Container(
              height: 50,
              width: 400,
              color: Colors.green,
              child: VerticalDivider(
                thickness: 10,
                color: Colors.red,
                indent: 10,
                endIndent: 20,
              ),
            ),
          ],
        ),
      )
    );
  }
}