// 子组件之间切换加入动画效果

import 'package:flutter/material.dart';

class MyAnimatedSwitcher extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class MyState extends State<MyAnimatedSwitcher> {
  
  Widget currentChild = Container(
    width: 200,
    height: 200,
    color: Colors.green,
    key: ValueKey("1"),
  );
  Widget afterChild = Container(
      width: 100,
      height: 100,
      color: Colors.black,
      key: ValueKey("2")
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedSwitcher"),),
      body: Column(
        children: <Widget>[
          Text("子组件一定要有自己Key，默认的动画效果FadeTransiton，即渐隐渐显，也可以通过修改transitionBuilder的值改变动画效果"),
          RaisedButton(
            child: Text("切换组件"),
            onPressed: () {
              setState(() {
                currentChild = afterChild;
              });
            },
          ),
          AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: currentChild,
          ),
        ],
      )
    );
  }
}