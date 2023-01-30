// 圆形图片 ClipOval
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

    return const CircleAvatar(
      radius: 20, // 半径
      backgroundImage: NetworkImage(
        "https://www.itying.com/images/flutter/2.png"
      )
    );
  }
}
