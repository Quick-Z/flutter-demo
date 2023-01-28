// 动态列表1
import 'package:flutter/material.dart';

void main() {
  // 入口方法
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("雷猴123")),
        body: const MyApp(),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  List<Widget> _initListData() {
    List<Widget> list = [];

    for(var i = 0; i < 20; i++) {
      list.add(ListTile(title: Text("我是一个列表 $i")));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }
}