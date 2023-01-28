// 动态列表3 ListView.builder
import "package:flutter/material.dart";

void main() {
  // 入口方法
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("雷猴123")),
        body: MyApp(),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  // late List<String> list;

  List<String> list = [];

  MyApp({Key? key}): super(key: key) {
    for (var i = 0; i < 20; i++) {
      list.add("我是第${i}条数据");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length, // 循环次数
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index])
        );
      }
    );
  }
}