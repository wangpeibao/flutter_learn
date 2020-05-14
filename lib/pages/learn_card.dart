// material风格的卡片组件，用于显示一组信息

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("基础用法"),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(title: Text("测试"), subtitle: Text("就是个测试"),),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Yes'),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: const Text('No'),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
            Text("修改背景颜色"),
            Card(
              color: Colors.green,
              child: Column(
                children: <Widget>[
                  ListTile(title: Text("测试"), subtitle: Text("就是个测试"),),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Yes'),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: const Text('No'),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
            Text("修改阴影"),
            Card(
              color: Colors.green,
              elevation: 5.0,
              child: Column(
                children: <Widget>[
                  ListTile(title: Text("测试"), subtitle: Text("就是个测试"),),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Yes'),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: const Text('No'),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
            Text("修改卡片形状"),
            Card(
              color: Colors.green,
              elevation: 5.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: <Widget>[
                  ListTile(title: Text("测试"), subtitle: Text("就是个测试"),),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Yes'),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: const Text('No'),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}