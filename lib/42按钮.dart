// 按钮
import "package:flutter/material.dart";

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

    return ListView(
      children: [
        Row(
          children: [
            // 普通按钮
            ElevatedButton(
              // 点击事件
              onPressed: (){
                print("普通按钮：点击事件");
              },
              child: const Text("普通按钮")
            ),
            // 文本按钮
            TextButton(
              // 点击事件
              onPressed: (){
                print("文本按钮：点击事件");
              },
              child: const Text("文本按钮")
            ),
            // 带边框的按钮
            OutlinedButton(
              // 点击事件
              onPressed: () {
                print("带边框按钮：点击事件");
              },
              child: const Text("带边框按钮")
            ),
            // 图标按钮
            IconButton(
              // 点击事件
              onPressed: (){
                print("图标按钮：点击事件");
              },
              icon: const Icon(Icons.home)
            )
          ],
        ),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // 主轴布局方式
          children: [
            // 带图标和文本带按钮
            ElevatedButton.icon(
              onPressed: () {  },
              icon: const Icon(Icons.send),
              label: const Text("发送")
            ),
            TextButton.icon(
              onPressed: () {  },
              icon: const Icon(Icons.info),
              label: const Text("信息")
            ),
            OutlinedButton.icon(
              onPressed: () {  },
              icon: const Icon(Icons.add),
              label: const Text("增加")
            )
          ]
        ),

        const SizedBox(height: 20),

        Row(
          children: [
            // 修改按钮颜色
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent), // 修改按钮背景色
                foregroundColor: MaterialStateProperty.all(Colors.pink), // 修改图标和文字颜色
              ),
              onPressed: () {},
              child: const Text("按钮文本")
            )
          ]
        ),

        const SizedBox(height: 20),

        Row(
          children: [
            // 配置按钮的宽度和高度
            // 需要在外层使用一个容器包裹着，并在容器里设置宽高，可以使用SizedBox或者Container
            SizedBox (
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () {  },
                child: const Text("自定义按钮宽高")
              )
            ),
            SizedBox (
              width: 100,
              height: 40,
              child: ElevatedButton.icon(
                onPressed: () {  },
                icon: Icon(Icons.search),
                label: const Text("搜索")
              )
            )
          ]
        ),

        const SizedBox(height: 20),

        Row(
          children: [
            // 自适应按钮
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 100,
                child: ElevatedButton(
                  onPressed: () {  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red[300]), // 背景色
                    foregroundColor: MaterialStateProperty.all(Colors.indigo[600]) // 文本颜色
                  ),
                  child: const Text("登录")
                )
              )
            )
          ]
        ),

        const SizedBox(height: 20),

        Row(
          children: [
            // 圆角按钮
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20) // 圆角
                  )
                )
              ),
              child: const Text("圆角")
            ),
            // 圆形按钮
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  const CircleBorder(
                    side: BorderSide(
                      color: Colors.red, // 边框颜色
                    )
                  )
                )
              ),
              child: const Text("圆形")
            ),
            // 大一点大圆形按钮
            Container(
              width: 80,
              height: 80,
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    const CircleBorder(
                      side: BorderSide(
                        width: 4, // 边框厚度
                        color: Colors.red, // 边框颜色
                      )
                    )
                  )
                ),
                child: const Text("圆形")
              )
            )
          ]
        ),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center, // 剧中布局
          children: [
            OutlinedButton(
              onPressed: () {  },
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  const BorderSide( // 配置按钮边框
                    width: 4,
                    color: Colors.red
                  )
                )
              ),
              child: const Text("带边框的按钮")
            )
          ]
        )
      ],
    );
  }
}
