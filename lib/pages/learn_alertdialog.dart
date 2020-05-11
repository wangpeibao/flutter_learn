// 弹窗页

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("弹窗页"),),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("AlertDialog弹窗"),
            onPressed: (){
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("测试Title"),
                    content: Text("内容"),
                    actions: <Widget>[
                      FlatButton(child: Text("取消"), onPressed: (){
                        Navigator.of(context).pop();
                      }),
                      FlatButton(child: Text("确定"), onPressed: (){
                        Navigator.of(context).pop();
                      },)
                    ],
                  );
                }
              );
            },
          ),
          RaisedButton(
            child: Text("SimpleDialog"),
            onPressed: (){
              showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    title: Text("简单"),
                    children: <Widget>[
                      Text("1"),
                      Divider(),
                      Text("2")
                    ],
                  );
                }
              );
            },
          ),
          RaisedButton(
            child: Text("Dialog"),
            onPressed: (){
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(child: Text("最简单的Dialog"));
                }
              );
            },
          )
        ],
      ),
    );
  }
}