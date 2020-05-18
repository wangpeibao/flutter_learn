// 组件相互嵌套的自定义滚动

import 'package:flutter/material.dart';

class MyCustomScrollView1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("相互嵌套"),),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid.count(
            crossAxisCount: 3,
            children: <Widget>[
              Container(color: Colors.black),
              Container(color: Colors.green),
              Container(color: Colors.red)
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                height: 85,
                alignment: Alignment.center,
                color: Colors.primaries[index % Colors.primaries.length],
                child: Text('$index',style: TextStyle(color: Colors.white,fontSize: 20),),
              );
            }, childCount: 10)
          )
        ],
      ),
    );
  }
}