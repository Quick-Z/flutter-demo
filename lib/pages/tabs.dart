import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/setting.dart';
import './tabs/user.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(),
    SettingPage(),
    UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("雷猴")),
      // body: const Text("雷猴啊"),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red, // 激活项的颜色
          iconSize: 35, // 设置图标尺寸
          currentIndex: _currentIndex, // 当前选中项
          onTap: (index) { // 点击事件
            // print(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed, // 如果底部有4个或者4个以上的菜单需要配置此参数
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "用户"),
          ]
      ),
    );
  }
}