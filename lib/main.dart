// Align 组件 例子
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

    // 等同于上面的代码
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 40,
          child: Stack(
            children: const [
              Align(
                alignment: Alignment.topLeft,
                child: Text("收藏"),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text("购买"),
              ),
            ],
          )
        ),
        SizedBox(
          width: double.infinity,
          height: 40,
          child: Stack(
            children: const [
              Positioned(
                left: 10,
                child: Text("收藏"),
              ),
              Positioned(
                right: 10,
                child: Text("购买"),
              ),
            ],
          )
        )
      ]
    );
  }
}
