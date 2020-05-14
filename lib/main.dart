import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/appbar/appbar1.dart';
import 'package:flutter_learn/pages/appbar/appbar2.dart';
import 'package:flutter_learn/pages/appbar/appbar3.dart';
import 'package:flutter_learn/pages/appbar/appbar4.dart';
import 'package:flutter_learn/pages/learn_aboutdialog.dart';
import 'package:flutter_learn/pages/learn_alertdialog.dart';
import 'package:flutter_learn/pages/learn_align.dart';
import 'package:flutter_learn/pages/learn_animatedlist.dart';
import 'package:flutter_learn/pages/learn_animatedswitcher.dart';
import 'package:flutter_learn/pages/learn_appbar.dart';
import 'package:flutter_learn/pages/learn_bottomnavigationbar.dart';
import 'package:flutter_learn/pages/learn_card.dart';
import 'package:flutter_learn/pages/learn_container.dart';
import 'package:flutter_learn/pages/learn_sizelimitwidget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learn',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Index(),
      routes: {
        "/index": (context) => Index(),
        "/learn_aboutdialog": (context) => MyAboutDialog(),
        "/learn_alertdialog": (context) => MyAlertDialog(),
        "/learn_align": (context) => MyAlign(),
        "/learn_animatedlist": (context) => MyAnimatedList(),
        "/learn_animatedswitcher": (context) => MyAnimatedSwitcher(),
        "/learn_appbar": (context) => MyAppBar(),
        "/learn_appbar/appbar1": (context) => MyAppBar1(),
        "/learn_appbar/appbar2": (context) => MyAppBar2(),
        "/learn_appbar/appbar3": (context) => MyAppBar3(),
        "/learn_appbar/appbar4": (context) => MyAppBar4(),
        "/learn_sizelimitwidget": (context) => MySizeLimitWidget(),
        "/learn_container": (context) => MyContainer(),
        "/learn_bottomnavigationbar": (context) => MyBottomBar(),
        "/learn_card": (context) => MyCard(),
      },
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      locale: Locale("zh"),
    );
  }
}

class Index extends StatelessWidget {

  var items = [
    {"name": "AboutDialog", "next": "/learn_aboutdialog"},
    {"name": "AlertDialog", "next": "/learn_alertdialog"},
    {"name": "Align", "next": "/learn_align"},
    {"name": "AnimatedList", "next": "/learn_animatedlist"},
    {"name": "AnimatedSwitcher", "next": "/learn_animatedswitcher"},
    {"name": "AppBar", "next": "/learn_appbar"},
    {"name": "大小限制类组件", "next": "/learn_sizelimitwidget"},
    {"name": "Container", "next": "/learn_container"},
    {"name": "BottomNavigationBar", "next": "/learn_bottomnavigationbar"},
    {"name": "Card", "next": "/learn_card"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter学习")),
      body: ListView(
        children: getlist(context),
      ),
    );
  }

  List<Widget> getlist(BuildContext ctx) {
    List lists = new List<Widget>();
    for(int i=0; i < items.length; i++) {
      lists.add(
        InkWell(
          onTap: (){Navigator.pushNamed(ctx, items[i]["next"]);},
          child: Container(
            child: Row(
              children: <Widget>[
                Spacer(flex: 1,),
                Expanded(child: Text(items[i]["name"]), flex: 10, ),
                Expanded(child: Icon(Icons.keyboard_arrow_right), flex: 2),
              ],
            ),
            height: 50,
          )
        )
      );
    }
    return lists;
  }

}