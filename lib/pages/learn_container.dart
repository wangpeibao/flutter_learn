// Container组件的学习

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("为子组件包上一层Container"),
            Container(
              child: Text("测试"),
            ),
            Text("设置背景色"),
            Container(
              color: Colors.green,
              child: Text("测试"),
            ),
            Text("设置padding，内边距"),
            Container(
              color: Colors.green,
              child: Text("测试"),
              padding: EdgeInsets.all(20.0),
            ),
            Text("设置margin, 外边距"),
            Container(
              color: Colors.green,
              child: Text("测试"),
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(20.0)
            ),
            Text("为container增加装饰, 在decoration中设置颜色和container中设置color效果相同"),
            Container(
              child: Text("测试"),
              decoration: BoxDecoration(
                color: Colors.green
              ),
            ),
            Text("为container增加装饰, 在decoration中设置形状，默认是矩形"),
            Container(
              child: Text("测试"),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle
              ),
            ),
            Text("为container增加装饰, 在decoration中设置形状，设置成圆角"),
            Container(
              child: Text("测试"),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
            ),
            Text("为container增加装饰, 在decoration中设置形状，"),
            Container(
              child: Text("测试"),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.black, width: 2)
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
            ),
            Text("为container增加装饰, 圆形图片"),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
                  fit: BoxFit.cover
                ),
                border: Border.all(color: Colors.black, width: 2)
              ),
            ),
            Text("设置alignment,设置alignment之后，Container会自动填充父组件"),
            Container(
              alignment: Alignment.center,
              color: Colors.green,
              child: Text("测试"),
            ),
            Container(
              alignment: Alignment.topLeft,
              color: Colors.green,
              child: Text("测试"),
            ),
            Text("设置transform,旋转、平移、缩放Container"),
            Container(
              color: Colors.green,
              child: Text("测试"),
              transform: Matrix4.rotationZ(0.5),
            ),
          ],
        ),
      ),
    );
  }
}