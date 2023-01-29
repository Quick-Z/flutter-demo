// 网格布局4 GridView.builder
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

  Widget _initGridViewData(context, index) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26
        )
      ),
      child: Column(
        children: [
          Image.network(listData[index]["imageUrl"]),
          const SizedBox(height: 10),
          Text(listData[index]["title"], style: const TextStyle(fontSize: 10))
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10), // 四周边距
      itemCount: listData.length, // 数据量
      // SliverGridDelegateWithFixedCrossAxisCount
      // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 2, // 主轴数量，必传
      //   crossAxisSpacing: 10, // 横轴的间距
      //   mainAxisSpacing: 10, // 垂直间距
      //   childAspectRatio: 1, // 子元素宽高比，默认是1，正方形。
      // ),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 170, // 主轴数量，必传
        crossAxisSpacing: 10, // 横轴的间距
        mainAxisSpacing: 10, // 垂直间距
        childAspectRatio: 1, // 子元素宽高比，默认是1，正方形。
      ),
      itemBuilder: _initGridViewData
    );
  }
}