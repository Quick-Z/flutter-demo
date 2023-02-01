// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // 全局统一iOS风格
import '../pages/tabsRouterNamed2.dart';
import '../pages/views/Named1.dart';
import '../pages/views/Named2.dart';
import '../pages/views/Named3.dart';
import '../pages/views/Named4.dart';

// 第1步
// 配置路由表，Map类型的
final Map routes = {
  "/": (context) => const TabsRouterNamed2(),
  "/Named1": (context) => const Named1(),
  "/Named2": (context) => const Named2(),
  "/Named3": (context) {
    return const Named3();
  },
  "/Named4": (context, { arguments }) => Named4(arguments: arguments),
};

// 第2步 配置 onGenerateRoute
// 这个方法也相当于一个中间件，这里面可以做权限判断
// 固定写法
var onGenerateRoute = (RouteSettings settings) {
  print("--------");
  print(settings);
  print(settings.name); // 命名路由的名称
  print(settings.arguments); // 命名路由的参数
  print("--------");

  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      // MaterialPageRoute 安卓和iOS各自使用自己风格的跳转动画
      // 全平台使用iOS风格的页面跳转动画
      final Route route = CupertinoPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
      );
        return route;
      } else {
      // MaterialPageRoute 安卓和iOS各自使用自己风格的跳转动画
      // 全平台使用iOS风格的页面跳转动画
      final Route route = CupertinoPageRoute(
        builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  }
  return null;
};