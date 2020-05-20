// 按钮类学习

import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class MyState extends State<MyButton> {

  // 下拉选择按钮的初始值
  String _dropDownValue = "1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("RaiseButton,凸起的按钮"),
            RaisedButton(
              child: Text("RaiseButton"),
              onPressed: (){print("RaiseButton");},
            ),
            Text("RaiseButton的禁用状态，onPressed设置为null"),
            RaisedButton(
              child: Text("RaiseButton"),
              onPressed: null,
            ),
            Text("RaiseButton,设置背景颜色color"),
            RaisedButton(
              child: Text("RaiseButton"),
              onPressed: (){print("RaiseButton");},
              color: Colors.red,
            ),
            Text("RaiseButton,设置禁用时背景颜色disabledColor"),
            RaisedButton(
              child: Text("RaiseButton"),
              onPressed: null,
              disabledColor: Colors.blue,
            ),
            Text("RaiseButton,设置字体颜色textColor"),
            RaisedButton(
              child: Text("RaiseButton"),
              onPressed: (){print("RaiseButton");},
              textColor: Colors.red,
            ),
            Text("RaiseButton,设置禁用时字体颜色disabledTextColor"),
            RaisedButton(
              child: Text("RaiseButton"),
              onPressed: null,
              disabledTextColor: Colors.blue,
            ),
            Text("RaiseButton,设置按下时的颜色highlightColor"),
            RaisedButton(
              child: Text("RaiseButton"),
              onPressed: (){print("RaiseButton");},
              highlightColor: Colors.red,
            ),
            Text("RaiseButton,设置禁用时字体颜色splashColor,松开时的波纹颜色"),
            RaisedButton(
              child: Text("RaiseButton"),
              onPressed: (){print("RaiseButton");},
              splashColor: Colors.blue,
            ),
            Text("RaiseButton,设置阴影evalution"),
            RaisedButton(
              child: Text("RaiseButton"),
              onPressed: (){print("RaiseButton");},
              color: Colors.red,
              elevation: 5.0,
            ),
            Text("RaiseButton,设置禁用时阴影disabledElevation"),
            RaisedButton(
              child: Text("RaiseButton"),
              onPressed: null,
              color: Colors.red,
              disabledElevation: 5.0,
            ),
            Text("RaiseButton,设置形状shape"),
            RaisedButton(
              child: Text("RaiseButton"),
              onPressed: (){print("RaiseButton");},
              color: Colors.red,
              shape: CircleBorder(),
            ),
            Text("FlatButton,扁平的按钮，用法和RaiseButton相同"),
            FlatButton(
              child: Text("FlatButton"),
              onPressed: (){print("FlatButton");},
              color: Colors.grey,
            ),
            Text("OutlineButton,带有边框的按钮，用法和RaiseButton相同"),
            OutlineButton(
              child: Text("OutlineButton"),
              onPressed: (){print("OutlineButton");},
            ),
            Text("OutlineButton,可以设置边框的样式"),
            OutlineButton(
              child: Text("OutlineButton"),
              onPressed: (){print("OutlineButton");},
              borderSide: BorderSide(color: Colors.red, width: 3.0, style: BorderStyle.solid),
            ),
            Text("DropdownButton,下拉选择按钮"),
            DropdownButton(
              value: _dropDownValue,
              items: [
                DropdownMenuItem(child: Text("1"), value: "1"),
                DropdownMenuItem(child: Text("2"), value: "2"),
                DropdownMenuItem(child: Text("3"), value: "3"),
              ],
              onChanged: (value){
                setState(() {
                  _dropDownValue = value;
                });
              },
            )
          ],
        )
      ),
    );
  }
}