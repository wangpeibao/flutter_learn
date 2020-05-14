// BottomNavigationBar + BottomNavigationBarItem 实现底部导航栏

import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget{
  @override
  MyState createState() => MyState();
}

class MyState extends State<MyBottomBar> {

  static List<Widget> _bodyList = [
    Center(child: Text("首页"),),
    Center(child: Text("书籍"),),
    Center(child: Text("我的"),)
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomNavigationBar"),),
      body: _bodyList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text('首页'),icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('书籍'),icon: Icon(Icons.book)),
          BottomNavigationBarItem(title: Text('我的'),icon: Icon(Icons.perm_identity)),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}