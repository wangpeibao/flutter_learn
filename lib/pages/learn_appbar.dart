// Material风格的导航栏

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: ListView(
        children: <Widget>[
          Text("leading设置为backend回退，title设置名字"),
          ListTile(
            title: RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/learn_appbar/appbar1");
              },
              child: Text("简单appbar"),
            ),
          ),
          Text("leading未设置，但是Scaffold设置Drawer()"),
          ListTile(
            title: RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/learn_appbar/appbar2");
              },
              child: Text("简单appbar"),
            ),
          ),
          Text("设置actions"),
          ListTile(
            title: RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/learn_appbar/appbar3");
              },
              child: Text("设置actions"),
            ),
          ),
          Text("设置bottom"),
          ListTile(
            title: RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/learn_appbar/appbar4");
              },
              child: Text("设置bottom"),
            ),
          )
        ],
      ),
    );
  }
}