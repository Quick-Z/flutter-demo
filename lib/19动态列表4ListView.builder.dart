// 动态列表4 ListView.builder
import "package:flutter/material.dart";
import "./res/listData.dart";

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
  MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length, // 循环次数
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.network(listData[index]['imageUrl']),
          title: Text(listData[index]['title']),
          subtitle: Text(listData[index]['author'])
        );
      }
    );
  }
}