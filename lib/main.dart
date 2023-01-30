// 布局 Wrap 组件
/**
 * Wrap 可以实现流布局，单行的Wrap跟Row表现几乎一致，单列的Wrap跟Column表现几乎一致。
 * 但Row与Column都是单行单列的，Wrap则突破了这个限制，mainAxis上空间不足时，则向crossAxis上去扩展显示。
 */
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

  List<Widget> _initListData() {
    List<Widget> list = [];

    for(var i = 0; i < 13; i++) {
      list.add(
        Button(
          "第${i + 1}集",
          onPressed: () {  },
        )
      );
    }

    return list;
  }


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Wrap(
          spacing: 5, // 主轴的间距
          runSpacing: 5, // 辅轴的间距
          // direction: Axis.vertical, // 排列方式。vertical 垂直; horizontal 水平
          alignment: WrapAlignment.center, // 布局方式（水平）
          children: _initListData()
      ),
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