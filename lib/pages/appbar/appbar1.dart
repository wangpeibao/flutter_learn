// 带有返回按钮的appbar

import 'package:flutter/material.dart';

class MyAppBar1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("简单的AppBar"),
      ),
    );
  }
}