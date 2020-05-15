// Column和Row组件

import 'package:flutter/material.dart';

class MyColumnRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column+Row"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("mainAxisAlignment,主轴对齐方式, 默认MainAxisAlignment.start, 和文字起始位置相同，Row和Column相同，只不过方向是垂直方向，只举例Row"),
            Row(
              children: <Widget>[
                Container(width: 50, height: 50, color: Colors.red,),
                Container(width: 50, height: 50, color: Colors.green,),
                Container(width: 50, height: 50, color: Colors.blue,),
              ],
            ),
            Text("mainAxisAlignment, 设置MainAxisAlignment.end, 和文字起始位置相反"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(width: 50, height: 50, color: Colors.red,),
                Container(width: 50, height: 50, color: Colors.green,),
                Container(width: 50, height: 50, color: Colors.blue,),
              ],
            ),
            Text("mainAxisAlignment, 设置MainAxisAlignment.center, 主轴居中"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(width: 50, height: 50, color: Colors.red,),
                Container(width: 50, height: 50, color: Colors.green,),
                Container(width: 50, height: 50, color: Colors.blue,),
              ],
            ),
            Text("mainAxisAlignment, 设置MainAxisAlignment.spaceBetween, 最左最右没有间距，中间间距相同"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(width: 50, height: 50, color: Colors.red,),
                Container(width: 50, height: 50, color: Colors.green,),
                Container(width: 50, height: 50, color: Colors.blue,),
              ],
            ),
            Text("mainAxisAlignment, 设置MainAxisAlignment.spaceAround, 最左最右没有的间距是中间间距的一半，中间间距相等"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(width: 50, height: 50, color: Colors.red,),
                Container(width: 50, height: 50, color: Colors.green,),
                Container(width: 50, height: 50, color: Colors.blue,),
              ],
            ),
            Text("mainAxisAlignment, 设置MainAxisAlignment.spaceEvenly, 所有间距相同"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(width: 50, height: 50, color: Colors.red,),
                Container(width: 50, height: 50, color: Colors.green,),
                Container(width: 50, height: 50, color: Colors.blue,),
              ],
            ),
            Text("crossAxisAlignment,交叉轴对齐方式，默认居中"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(width: 50, height: 50, color: Colors.red,),
                Container(width: 50, height: 100, color: Colors.green,),
                Container(width: 50, height: 150, color: Colors.blue,),
              ],
            ),
            Text("crossAxisAlignment,交叉轴对齐方式，CrossAxisAlignment.start, 上对齐"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(width: 50, height: 50, color: Colors.red,),
                Container(width: 50, height: 100, color: Colors.green,),
                Container(width: 50, height: 150, color: Colors.blue,),
              ],
            ),
            Text("crossAxisAlignment,交叉轴对齐方式，CrossAxisAlignment.end, 下对齐"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(width: 50, height: 50, color: Colors.red,),
                Container(width: 50, height: 100, color: Colors.green,),
                Container(width: 50, height: 150, color: Colors.blue,),
              ],
            ),
            Text("crossAxisAlignment,交叉轴对齐方式，CrossAxisAlignment.stretch, 使得子组件充满交叉轴，前提父组件有固定的高度"),
            Container(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(width: 50, height: 50, color: Colors.red,),
                  Container(width: 50, height: 100, color: Colors.green,),
                  Container(width: 50, height: 150, color: Colors.blue,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}