// DataTable表格类数据

import 'package:flutter/material.dart';

class MyDataTable extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class Items{
  Items(this.t1, this.t2, {this.ss=false});

  String t1;
  int t2;
  bool ss;
}


class MyState extends State<MyDataTable> {

  // 数据的初始化
  List<Items> Data = [
    Items("数据1", 1),
    Items("数据2", 2)
  ];

  // 排序状态
  bool _ascendingStatus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("表格类组件"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("DataTable,表头的元素数应该和每一行的数据数相同，不然会报错"),
            DataTable(
              columns: [
                DataColumn(label: Text("表头1")),
                DataColumn(label: Text("表头2")),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text("数据1")),
                    DataCell(Text("数据2")),
                  ]
                )
              ],
            ),
            Text("添加一行数据，添加DataRow即可"),
            DataTable(
              columns: [
                DataColumn(label: Text("表头1")),
                DataColumn(label: Text("表头2")),
              ],
              rows: Data.map((item){
                return DataRow(
                  cells: [
                    DataCell(Text(item.t1.toString())),
                    DataCell(Text(item.t2.toString())),
                  ]
                );
              }).toList(),
            ),
            Text("设置Column对齐方式，默认左对齐，DataColumn的numeric"),
            DataTable(
              columns: [
                DataColumn(label: Text("表头1")),
                DataColumn(label: Text("表头2"), numeric: true),
              ],
              rows: Data.map((item){
                return DataRow(
                    cells: [
                      DataCell(Text(item.t1.toString())),
                      DataCell(Text(item.t2.toString())),
                    ]
                );
              }).toList(),
            ),
            Text("设置Column长按提示，DataColumn的tooltip"),
            DataTable(
              columns: [
                DataColumn(label: Text("表头1")),
                DataColumn(label: Text("表头2"), tooltip: "长按提示"),
              ],
              rows: Data.map((item){
                return DataRow(
                    cells: [
                      DataCell(Text(item.t1.toString())),
                      DataCell(Text(item.t2.toString())),
                    ]
                );
              }).toList(),
            ),
            Text("设置Column排序的回调，DataColumn的onSort"),
            DataTable(
              sortAscending: _ascendingStatus,
              sortColumnIndex: 1,
              columns: [
                DataColumn(label: Text("表头1")),
                DataColumn(label: Text("表头2"), onSort: (columnIndex, ascending){
                  print(columnIndex);
                  print(ascending);
                  setState(() {
                    _ascendingStatus = ! _ascendingStatus;
                    if (_ascendingStatus) {
                      Data.sort((left, right) => left.t2.compareTo(right.t2));
                    } else {
                      Data.sort((left, right) => right.t2.compareTo(left.t2));
                    }
                  });
                }),
              ],
              rows: Data.map((item){
                return DataRow(
                    cells: [
                      DataCell(Text(item.t1.toString())),
                      DataCell(Text(item.t2.toString())),
                    ]
                );
              }).toList(),
            ),
            Text("设置DataRow.selected, 标记选中状态"),
            DataTable(
              columns: [
                DataColumn(label: Text("表头1")),
                DataColumn(label: Text("表头2"), tooltip: "长按提示"),
              ],
              rows: Data.map((item){
                return DataRow(
                    selected: true,
                    cells: [
                      DataCell(Text(item.t1.toString())),
                      DataCell(Text(item.t2.toString())),
                    ]
                );
              }).toList(),
            ),
            Text("设置DataCell.onTap, 绑定点击事件"),
            DataTable(
              columns: [
                DataColumn(label: Text("表头1")),
                DataColumn(label: Text("表头2"), tooltip: "长按提示"),
              ],
              rows: Data.map((item){
                return DataRow(
                    cells: [
                      DataCell(Text(item.t1.toString()), onTap: (){
                        print("123");
                      }),
                      DataCell(Text(item.t2.toString()), onTap: (){
                        print("321");
                      }),
                    ]
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}