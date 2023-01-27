// 图片组件 圆形图片2
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipOval(
      child: Image.network(
        "https://cdn2.thecatapi.com/images/VZ3qFLIe3.jpg",
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      )
    );
  }
}
