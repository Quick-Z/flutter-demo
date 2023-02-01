import 'package:flutter/material.dart';
import '../views/Named1.dart';

class HomeRouterNamedPage extends StatefulWidget {
  const HomeRouterNamedPage({Key? key}) : super(key: key);

  @override
  State<HomeRouterNamedPage> createState() => _HomeRouterNamedPageState();
}

class _HomeRouterNamedPageState extends State<HomeRouterNamedPage> {
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
                  return const Named1();
                })
              );
            },
            child: const Text("基础路由跳转 1")
          ),

          const SizedBox(height: 20),

          // 命名路由跳转
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/Named2");
            },
            child: const Text("命名路由跳转 2")
          )
        ],
      )
    );
  }
}
