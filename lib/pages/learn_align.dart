// Align组件是控制子组件位置的

import 'package:flutter/material.dart';

class MyAlign extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Align"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("默认居中对齐"),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Align(
                child: Text("居中"),
              ),
            ),
            Text("设置alignment调整位置，给定center, centerLeft, centerRight, top, topLeft,bottom等"),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Align(
                child: Text("右下"),
                alignment: Alignment.bottomRight
              ),
            ),
            Text("设置alignment调整位置，自定义位置，中间点是(0,0),纵轴：上边界-1,下边界1,横轴：左边界-1，右边界1"),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Align(
                  child: Text("右下"),
                  alignment: Alignment(1, -0.5)
              ),
            ),
            Text("若父组件没有大小的限制，通过设置Align的widthFactor, heightFactor,则父组件的大小等于Align的子组件的大小乘上对应的factor"),
            Container(
              color: Colors.green,
              child: Align(
                widthFactor: 2,
                heightFactor: 3,
                child: Container(width: 100, height: 100, color: Colors.black,),
              ),
            ),
            Text("Center组件继承于Align,子组件居中"),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(child: Text("居中"),),
            )
          ],
        ),
      )
    );
  }
}