// 底部导航条 BottomNavigationBar
import "package:flutter/material.dart";
import './pages/tabs.dart';

void main() {
  // 入口方法
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "雷猴啊",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      // home: HomePage(),
      home: const Tabs(),

    );
  }
}


