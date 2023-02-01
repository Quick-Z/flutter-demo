// 内置弹窗
import "package:flutter/material.dart";

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

  void _alertDialog() async {

    // showDialog是异步的，可以获取返回值
    var result = await showDialog(
      barrierDismissible: false, // false：点击遮罩层不关闭弹窗
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("提示信息"),
          content: const Text("您确定要删除吗?"),
          actions: [
            TextButton(
              onPressed: () {
                // print("取消");
                Navigator.of(context).pop("cancel");
              },
              child: const Text("取消")
            ),
            TextButton(
              onPressed: () {
                // print("确定");
                Navigator.of(context).pop("ok");
              },
              child: const Text("确定")
            )
          ]
        );
      }
    );

    // 打印返回值
    print(result);
  }

  void _simpleDialog() async {
    var result = await showDialog(
      barrierDismissible: false, // false：点击遮罩层不关闭弹窗
      context: context,
      builder: (context) {
        return  SimpleDialog(
          title: const Text("选择工具"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                // print("Flutter");
                Navigator.of(context).pop("Flutter");
              },
              child: const Text("Fluter"),
            ),
            const Divider(),
            SimpleDialogOption(
              onPressed: () {
                // print("Vue");
                Navigator.of(context).pop("Vue");
              },
              child: const Text("Vue")
            ),
            const Divider(),
            SimpleDialogOption(
              onPressed: () {
                // print("React");
                Navigator.of(context).pop("React");
              },
              child: const Text("React")
            )
          ],
        );
      }
    );

    // 打印选择结果
    print(result);
  }

  void _modelBottomSheet() async {
    // print("_modelBottomSheet");
    var result = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 240,
          child: Column(
            children: [
              ListTile(
                title: const Text("分享"),
                onTap: () {
                  // print("点击:分享");
                  Navigator.of(context).pop("分享");
                }
              ),
              const Divider(),
              ListTile(
                title: const Text("收藏"),
                onTap: () {
                  print("点击:收藏");
                  Navigator.of(context).pop("收藏");
                }
              ),
              const Divider(),
              ListTile(
                title: const Text("取消"),
                onTap: () {
                  print("点击:取消");
                  Navigator.of(context).pop("取消");
                }
              ),
            ],
          )
        );
      }
    );

    // 打印返回值
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: _alertDialog,
          child: const Text("AlertDialog 弹窗")
        ),
        ElevatedButton(
          onPressed: _simpleDialog,
          child: const Text("SimpleDialog 弹窗")
        ),
        ElevatedButton(
          onPressed: _modelBottomSheet,
          child: const Text("showModalBottomSheet 底部弹窗")
        )
      ],
    );
  }
}

