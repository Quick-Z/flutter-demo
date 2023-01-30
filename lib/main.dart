// Align 组件
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

  List<Widget> _initListData() {
    List<Widget> list = [];

    for(var i = 0; i < 20; i++) {
      list.add(ListTile(title: Text("列表$i")));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {

    // 获取屏幕的宽度和高度
    final size = MediaQuery.of(context).size;

    // Stack 是堆的意思，后面的元素默认会堆到前面的元素上方(z轴方向的)
    // return Container(
    //   alignment: Alignment.center,
    //   width: 200,
    //   height: 200,
    //   color: Colors.red,
    //   child: const Text("雷猴")
    // );

    // 等同于上面的代码
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: const Align(
        // alignment: Alignment.centerRight,
        alignment: Alignment(1, 1), // 可以设置子元素的位置（适合的取值是-1 ～ 1）
        child: Text("雷猴234")
      )

      // 如果想剧中，页可以直接使用 Center 组件
      // child: const Center(
      //   child: Text("雷猴Flutter")
      // )
    );
  }
}
