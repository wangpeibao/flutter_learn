// appbar具有吸顶效果，统一滚动

import 'package:flutter/material.dart';

class MyCustomScrollView2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 230.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('复仇者联盟'),
              background: Image.network(
                'http://img.haote.com/upload/20180918/2018091815372344164.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
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