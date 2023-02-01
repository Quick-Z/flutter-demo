import 'package:flutter/material.dart';
import '../views/search.dart';
import '../views/form.dart';

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
        ]
      )
    );
  }
}
