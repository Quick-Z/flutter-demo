// 水平静态列表3 ListView
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
    return SizedBox(
      height: 120,
      child: ListView(
          scrollDirection: Axis.horizontal, // 排列方式。Axis.vertical 默认值，垂直； Axis.horizontal 水平,
          // padding: const EdgeInsets.all(10), // 内边距
          // padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          // reverse: true, // 反向排序
          children: <Widget>[
            Container(
              width: 120, // 宽度在ListView是垂直排列时，里默认是自适应的，所以默认是没什么效果
              decoration: const BoxDecoration(
                  color: Colors.red
              ),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(
                  color: Colors.yellow
              ),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(
                  color: Colors.orange
              ),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(
                  color: Colors.blue
              ),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(
                  color: Colors.pink
              ),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(
                  color: Colors.blueGrey
              ),
            ),
            Container(
              width: 120,
              decoration: const BoxDecoration(
                  color: Colors.greenAccent
              ),
            )
          ]
      )
    );
  }
}