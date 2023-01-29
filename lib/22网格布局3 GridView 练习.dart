// 网格布局3 GridView 练习
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

  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];

    for(var i = 0; i < 12; i++) {
      tempList.add(Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.blue
        ),
        child: Text(
          "第$i个元素",
          style: const TextStyle(
            fontSize: 20
          ),
        )
      ));
    }

    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // 主轴数量，必传
      crossAxisSpacing: 10, // 横轴的间距
      mainAxisSpacing: 10, // 垂直间距
      padding: const EdgeInsets.all(10), // 四周边距
      childAspectRatio: 1.2, // 子元素宽高比，默认是1，正方形。
      children: _initGridViewData(),
    );
  }
}