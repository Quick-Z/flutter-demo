// 占满全屏
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
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // return IconContainer(Icons.home, color: Colors.yellow);
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.orange
    );
  }
}
