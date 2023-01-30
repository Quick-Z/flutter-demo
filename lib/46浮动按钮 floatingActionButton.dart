// 浮动按钮
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
        primarySwatch: Colors.orange
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

  int _numCount = 0;


  @override
  Widget build(BuildContext context) {

    print("build时执行$_numCount");

    return Scaffold(
      // 加上 const 后，重新build时就不会修改静态数据，能提升一点性能
      appBar: AppBar(title: const Text("雷猴Flutter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_numCount",
              style: Theme.of(context).textTheme.headline2
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: (){

                // 使用 setState 后，会重新渲染页面
                setState(() {
                  _numCount--;
                });
                print("页面按钮 --");
              },
              child: const Text("减少")
            )
          ]
        )
      ),
      // 浮动按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _numCount++;
            print("浮动按钮 ++");
          });
        },
        child: const Icon(Icons.add)
      ),
    );
  }
}