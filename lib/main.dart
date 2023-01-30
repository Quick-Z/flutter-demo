// 层叠组件1 Stack
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
    // Stack 是堆的意思，后面的元素默认会堆到前面的元素上方(z轴方向的)
    return Stack(
        alignment: Alignment.center, // 配置子元素的显示方式
        children: [
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Container (
            height: 200,
            width: 200,
            color: Colors.yellow,
          ),
          const Text("雷猴Flutter"),
          const Text("asdfkljklasd"),
        ]
    );
  }
}
