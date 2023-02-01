import 'package:flutter/material.dart';
import '../views/search.dart';
import '../views/form.dart';
import '../views/news.dart';

class HomeRouterPage extends StatefulWidget {
  const HomeRouterPage({Key? key}) : super(key: key);

  @override
  State<HomeRouterPage> createState() => _HomeRouterPageState();
}

class _HomeRouterPageState extends State<HomeRouterPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // 路由跳转
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return const SearchPage();
                })
              );
            },
            child: const Text("跳转到搜索")
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              // 路由跳转
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return const FormPage();
                })
              );
            },
            child: const Text("跳转到表单")
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              // 路由跳转
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return const NewsPage(
                    title: "雷猴，这是参数",
                    aid: 12
                  );
                })
              );
            },
            child: const Text("跳转传值（新闻页）")
          ),
        ]
      )
    );
  }
}
