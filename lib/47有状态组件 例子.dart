// 有状态组件 例子
import "package:flutter/material.dart";

void main() {
  // 入口方法
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "雷猴啊",
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      // home: HomePage(),
      home: const HomePage(),
    );
  }
}

// 有状态组件
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  final List<String> _list = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // 加上 const 后，重新build时就不会修改静态数据，能提升一点性能
      appBar: AppBar(title: const Text("雷猴Flutter")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 改变数据必须加上 setState
          setState(() {
            _list.add("新增列表");
          });
        },
        child: const Icon(Icons.add)
      ),
      body: ListView(
        children: _list.map((v){
          return ListTile(
            title: Text(v)
          );
        }).toList(),
      )
    );
  }
}