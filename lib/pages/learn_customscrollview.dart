// 自定义滚动组件，将子组件联合在一起，具有统一的滚动效果

import 'package:flutter/material.dart';

class MyCustomScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CustomScrollView"),),
      body: ListView(
        children: <Widget>[
          InkWell(
              onTap: (){Navigator.pushNamed(context, "/learn_customscrollview/mix");},
              child: Container(
                child: Row(
                  children: <Widget>[
                    Spacer(flex: 1,),
                    Expanded(child: Text("组件嵌套"), flex: 10, ),
                    Expanded(child: Icon(Icons.keyboard_arrow_right), flex: 2),
                  ],
                ),
                height: 50,
              )
          ),
          InkWell(
              onTap: (){Navigator.pushNamed(context, "/learn_customscrollview/appbar");},
              child: Container(
                child: Row(
                  children: <Widget>[
                    Spacer(flex: 1,),
                    Expanded(child: Text("appbar吸顶"), flex: 10, ),
                    Expanded(child: Icon(Icons.keyboard_arrow_right), flex: 2),
                  ],
                ),
                height: 50,
              )
          )
        ],
      ),
    );
  }
}