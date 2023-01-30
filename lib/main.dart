// 层叠组件3 例子
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
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 50),
          children: _initListData(),
        ),
        Positioned(
          left: 0,
          // right: 0,
          top: 0,
          height: 44,
          // width: 300, // 需要指定宽度，而且在这里无法使用 double.infinity。如果不想指定宽度，需要同时设置left和right
          width: size.width,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    // 剧中
                      alignment: Alignment.center,
                      height: 44,
                      color: Colors.black,
                      child: const Text(
                          "二级导航",
                          style: TextStyle(
                              color: Colors.white
                          )
                      )
                  )
              )
            ]
          )
        )
      ]
    );
  }
}
