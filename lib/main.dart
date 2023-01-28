// 动态列表2
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
  // const MyApp({super.key});

  MyApp({Key? key}): super(key: key) {
    print(listData);
  }

  List<Widget> _initListData() {
    // List<Widget> tempList = [];
    // for(var i = 0; i < listData.length; i++) {
    //   tempList.add(
    //     ListTile(
    //       title: Text("${listData[i]['title']}"),
    //       subtitle: Text("${listData[i]['author']}"),
    //       leading: Image.network("${listData[i]['imageUrl']}")
    //     )
    //   );
    // }

    // return tempList;

    var tempList = listData.map((value) {
      return ListTile(
        title: Text("${value['title']}"),
        subtitle: Text("${value['author']}"),
        leading: Image.network("${value['imageUrl']}")
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }
}