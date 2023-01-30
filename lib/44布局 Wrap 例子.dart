// 布局 Wrap 例子
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
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [
            Text(
              "热搜",
              // style: Theme.of(context).textTheme.headline6, // 有 1-6 级标题
              style: Theme.of(context).textTheme.titleLarge, // 大标题 titleLarge; 中级标题 titleMedium
            ),
          ]
        ),

        const Divider(), // 分割线

        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            Button("女装", onPressed: () {}),
            Button("笔记本", onPressed: () {}),
            Button("玩具", onPressed: () {}),
            Button("文学", onPressed: () {}),
            Button("男装", onPressed: () {}),
            Button("时尚", onPressed: () {}),
            Button("手机", onPressed: () {}),
            Button("水果", onPressed: () {}),
          ]
        ),

        const SizedBox(height: 10),

        Row(
          children: [
            Text("历史记录", style: Theme.of(context).textTheme.titleLarge)
          ]
        ),

        const Divider(), // 分割线

        // ListView 里不能嵌套 ListView

        Column(
          children: const [
            ListTile(title: Text("女装")),
            Divider(), // 分割线
            ListTile(title: Text("手机")),
            Divider(), // 分割线
            ListTile(title: Text("电脑")),
            Divider(), // 分割线
          ]
        ),
        const SizedBox(height: 40),

        Padding(
          padding: const EdgeInsets.all(40),
          child: OutlinedButton.icon(
            // 自适应宽度按钮
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.black45)
            ),
            onPressed: (){  },
            icon: const Icon(Icons.delete),
            label: const Text("清空历史记录")
          )
        )
      ]
    );
  }
}

class Button extends StatelessWidget {
  String text; // 按钮的文字
  void Function()? onPressed; // 点击按钮触发方法（方法传参）

  Button(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(223, 223, 223, 1)),
        foregroundColor: MaterialStateProperty.all(Colors.black45)
      ),
      child: Text(text)
    );
  }
}