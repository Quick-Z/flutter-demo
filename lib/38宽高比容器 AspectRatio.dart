// 宽高比容器 AspectRatio
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

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // 页面上显示一个容器，宽度是屏幕的宽度，高度是容器宽度的一半

    return AspectRatio(
      aspectRatio: 2/1, // 宽高比
      child: Container(
        color: Colors.green,
      )
    );
  }
}
