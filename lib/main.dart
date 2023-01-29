// 布局 padding
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
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   padding: const EdgeInsets.all(20),
    //   child: const Text(
    //     "雷猴啊"
    //   )
    // );

    // Padding组件的功能是让上下左右都存在内边距
     return const Padding(
       padding: EdgeInsets.all(20),
       child: Text("雷猴")
     );
  }
}