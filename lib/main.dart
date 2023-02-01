// 第三方弹窗 fluttertoast
import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  // 入口方法
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text("弹窗")),
          body: const MyApp(),
        ),
      )
  );
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Dialog();
  }
}

class Dialog extends StatefulWidget {
  const Dialog({Key? key}) : super(key: key);

  @override
  State<Dialog> createState() => _DialogState();
}

class _DialogState extends State<Dialog> {

  void _toast() {
    print("???");
    Fluttertoast.showToast(
      msg: "提示信息",
      toastLength: Toast.LENGTH_SHORT, // 针对安卓平台的显示时长。LENGTH_SHORT 1秒; LENGTH_LONG 5秒
      gravity: ToastGravity.TOP, // 显示位置
      timeInSecForIosWeb: 1, // 提示事件，针对ios和web
      backgroundColor: Colors.red, // 背景色
      textColor: Colors.white, // 文本颜色
      fontSize: 16.0 // 字体大小
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _toast,
      child: const Text("toast 弹窗2")
    );
  }
}


