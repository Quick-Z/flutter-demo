// 层叠组件2 Stack 配合 Positioned 一起使用
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
    return Container(
      width: 300,
      height: 400,
      color: Colors.red,
      child: Stack( // Stack 是相对于外部容器进行定位，如果没有外部容器就相对于整个屏幕进行定位
        children: [
          // 设置子组件定位
          Positioned(
            left: 10,
            bottom: 10,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow
            ),
          ),
          const Positioned(
            right: 0,
            top: 190,
            child: Text("雷猴花特")
          )
        ],
      )
    );
  }
}
