// 一系列的尺寸限制类组件

import 'package:flutter/material.dart';

class MySizeLimitWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("尺寸限制类组件"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("ConstrainedBox,约束子组件的最大宽高,多级嵌套时选择最小的那个值"),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 50, maxWidth: 100),
              child: Container(height: 100, width: 100, color: Colors.green,),
            ),
            Text("UnconstrainedBox不会对子组件约束，但是允许子组件超过父组件的大小, 在debug模式下会显示出超出的范围"),
            Container(
              height: 100,
              width: 100,
              child: UnconstrainedBox(
                child: Container(width: 150, height: 150, color: Colors.green,),
              ),
            ),
            Text("UnconstrainedBox不会对子组件约束，但是可以设置对齐的方式, 左上对齐，向右下溢出"),
            Container(
              height: 100,
              width: 100,
              child: UnconstrainedBox(
                alignment: Alignment.topLeft,
                child: Container(width: 150, height: 150, color: Colors.green,),
              ),
            ),
            Text("SizedBox具有固定宽高的组件，可以设置成无限大，但是仍然受到父组件的限制，SizedBox可以没有子组件所以SizedBox非常适合控制2个组件之间的空隙"),
            Container(
              height: 100,
              width: 100,
              child: SizedBox.expand(
                child: RaisedButton(onPressed: (){}, child: Text("居中"),),
              ),
            ),
            Text("AspectRatio,固定宽高比的控件"),
            Container(
              height: 100,
              child: AspectRatio(
                aspectRatio: 1 / 2,
                child: Container(color: Colors.green,),
              ),
            ),
            Text("FractionallySizedBox, 设置相对尺寸的组件"),
            Container(
              height: 100,
              width: 100,
              child: FractionallySizedBox(
                heightFactor: 0.7,
                widthFactor: 0.7,
                child: RaisedButton(onPressed: (){}, child: Text("测试"),),
              ),
            ),
            Text("LimitedBox,当没有父组件约束时的约束组件，如果父组件有约束，则limitedbox不起作用"),
            LimitedBox(
              maxHeight: 100,
              child: Container(color: Colors.green,),
            ),

          ],
        ),
      )
    );
  }
}