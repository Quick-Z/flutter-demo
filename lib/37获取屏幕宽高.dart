// 获取屏幕宽度和高度
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

    // 获取屏幕的宽度和高度
    final size = MediaQuery.of(context).size;

    return ListView(
      children: [
        ListTile(
          title: Text("屏幕宽度: ${size.width}")
        ),
        ListTile(
          title: Text("屏幕高度: ${size.height}")
        )
      ]
    );
  }
}
