// 卡片容器 Card
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

    // 页面上显示一个容器，宽度是屏幕的宽度，高度是容器宽度的一半

    return ListView(
      children: [
        Card(
          elevation: 10, // 阴影的深度
          shadowColor: Colors.orange, // 阴影颜色
          shape: const RoundedRectangleBorder( // 设置边框和阴影圆角效果
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          margin: const EdgeInsets.all(10),
          // margin: const EdgeInsets.fromLTRB(10, 10, 10, 20), // 外边距
          color: Color.fromRGBO(240, 240, 240, 1), // 背景色
          child: Column(
            children: const [
              ListTile(
                title: Text("标题1", style: TextStyle(fontSize: 28)),
                subtitle: Text("子标题1"),
              ),
              Divider(),
              ListTile(
                title: Text("电话：12312312312")
              ),
              ListTile(
                title: Text("地址：秀秀阿拉山口地方就哭了")
              ),
            ],
          )
        ),

        Card(
          child: Column(
            children: const [
              ListTile(
                title: Text("标题2", style: TextStyle(fontSize: 28)),
                subtitle: Text("子标题2"),
              ),
              Divider(),
              ListTile(
                title: Text("电话：12312312312")
              ),
              ListTile(
                title: Text("地址：秀秀阿拉山口地方就哭了")
              ),
            ],
          )
        )
      ],
    );
  }
}
