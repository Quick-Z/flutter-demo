// 卡片容器 Card 例子2
import "package:flutter/material.dart";
import "./res/listData.dart";

void main() {
  // 入口方法
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text("雷猴123")),
          body: const MyApp(),
        ),
      )
  );
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Widget> _initCardData() {
      var tempList = listData.map((value) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(
                  value["imageUrl"],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20, // 半径
                  backgroundImage: NetworkImage(
                    value["imageUrl"]
                  )
                ),
                title: Text(value["title"]),
                subtitle: Text(value["author"])
              )
            ]
          )
        );
      });
      return tempList.toList();
    }

    return ListView(
      children: _initCardData(),
    );
  }
}
