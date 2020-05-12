// 当列表数据发生变化时的过渡动画


import 'package:flutter/material.dart';

class MyAnimatedList extends StatefulWidget{
  @override
  MyState createState() => MyState();
}

class MyState extends State<MyAnimatedList> {

  //
  List<String> items = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedList"),),
      body: Column(
        children: <Widget>[
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: items.length,
              itemBuilder: (BuildContext context, int index, Animation animation){
                return _buildItem(items[index].toString(), animation);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  int index = items.length;
                  items.add(index.toString());
                  _listKey.currentState.insertItem(index);
                },
              ),
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: (){
                  int index = items.length - 1;
                  String item = items[index];
                  _listKey.currentState.removeItem(index, (context, animation) => _buildItem(item, animation));
                  items.removeAt(index);
                },
              )
            ],
          ),
        ],
      )
    );
  }

  // 构建每行的方法(平移)
  Widget _buildItem1(String _item, Animation _animation) {
    return SlideTransition(
      position: _animation.drive(CurveTween(curve: Curves.easeIn)).drive(Tween<Offset>(begin: Offset(1,1),end: Offset(0,1))),
      child: ListTile(title: Text(_item),)
    );
  }
  // 构建每行的方法(下落)
  Widget _buildItem(String _item, Animation _animation) {
    return SizeTransition(
        sizeFactor: _animation,
        child: ListTile(title: Text(_item),)
    );
  }
}