// CheckBox 和 CheckboxListTile，单选框

import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class MyState extends State<MyCheckBox> {

  bool _checkValue1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBox"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("简单的CheckBox"),
            Checkbox(
              value: _checkValue1,
              onChanged: (bool state){
                setState(() {
                  _checkValue1 = state;
                });
              },
            ),
            Text("实际应用中多使用CheckboxListTile"),
            Container(
              width: 150,
              child: CheckboxListTile(
                value: _checkValue1,
                onChanged: (bool state){
                  setState(() {
                    _checkValue1 = state;
                  });
                },
                title: Text("测试"),
              ),
            ),
            Text("修改选中时对勾的颜色"),
            Container(
              width: 150,
              child: CheckboxListTile(
                value: _checkValue1,
                onChanged: (bool state){
                  setState(() {
                    _checkValue1 = state;
                  });
                },
                title: Text("测试"),
                checkColor: Colors.green,
              ),
            ),
            Text("修改勾选框的相对位置"),
            Container(
              width: 150,
              child: CheckboxListTile(
                value: _checkValue1,
                onChanged: (bool state){
                  setState(() {
                    _checkValue1 = state;
                  });
                },
                title: Text("测试"),
                checkColor: Colors.green,
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            Text("修改选中时背景颜色"),
            Container(
              width: 150,
              child: CheckboxListTile(
                value: _checkValue1,
                onChanged: (bool state){
                  setState(() {
                    _checkValue1 = state;
                  });
                },
                title: Text("测试"),
                checkColor: Colors.green,
                activeColor: Colors.black,
              ),
            ),
            Text("设置子描述"),
            Container(
              width: 200,
              child: CheckboxListTile(
                value: _checkValue1,
                onChanged: (bool state){
                  setState(() {
                    _checkValue1 = state;
                  });
                },
                title: Text("测试"),
                checkColor: Colors.green,
                activeColor: Colors.black,
                subtitle: Text("真的是测试"),
              ),
            ),
            Text("设置子图标"),
            Container(
              width: 400,
              child: CheckboxListTile(
                value: _checkValue1,
                onChanged: (bool state){
                  setState(() {
                    _checkValue1 = state;
                  });
                },
                title: Text("测试"),
                checkColor: Colors.green,
                activeColor: Colors.black,
                subtitle: Text("真的是测试"),
                secondary: Icon(Icons.people),
              ),
            ),
          ],
        ),
      ),
    );
  }
}