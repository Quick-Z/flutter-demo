import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  // 接受上一个页面传过来的参数
  final String title;
  final int aid;

  const NewsPage({super.key, this.title = "新闻", required this.aid});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 返回上一页
          Navigator.pop(context);
        },
        child: const Icon(Icons.keyboard_return)
      ),
      body: Center(
        child: Text("aid: ${widget.aid}")
      ),
    );
  }
}
