import 'package:flutter/material.dart';
import '../../tools/keepAliveWrapper.dart';

class HomeTabbarPage extends StatefulWidget {
  const HomeTabbarPage({Key? key}) : super(key: key);

  @override
  State<HomeTabbarPage> createState() => _HomeTabbarPageState();
}

class _HomeTabbarPageState extends State<HomeTabbarPage> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  // 页面初始化的生命周期
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);

    // 监听 tab 切换事件
    // 可以获取到点击或者滑动页面切换tab的索引值
    _tabController.addListener(() {
      // 在这个地方会获取2次，因为当点击tab时，它首先会离开，然后再进入，所以会获取2次
      // 所以一般不会在这里监听
      // print(_tabController.index);

      // 所以最好监听一下准确索引值再做其他操作
      if (_tabController.animation!.value == _tabController.index) {
        print(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    // 页面销毁的生命周期
    super.dispose();

    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize( // PreferredSize可以配置 AppBar 高度
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.white, // 导航栏背景色
          elevation: 0.5, // 底部阴影
          title: SizedBox(
            height: 30,
            child: TabBar(
              controller: _tabController,
              isScrollable: true, // 有滚动条，所以元素不够的话默认会剧中显示了
              indicatorSize: TabBarIndicatorSize.label, // 指示器长度
              indicatorColor: Colors.red, // 底部指示器颜色
              labelColor: Colors.red, // 选中的 label 颜色
              unselectedLabelColor: Colors.black, // 未选中label的颜色
              labelStyle: const TextStyle(
                fontSize: 12
              ),
              onTap: (index) { // 监听点击事件。没法监听滑动
                print("点击事件：$index");
              },
              tabs: const [
                Tab(child: Text("关注")),
                Tab(child: Text("热门")),
                Tab(child: Text("视频")),
                Tab(child: Text("娱乐")),
                Tab(child: Text("篮球")),
                Tab(child: Text("深证")),
                Tab(child: Text("雷猴")),
                Tab(child: Text("其他")),
              ]
            ),
          ),
          centerTitle: true, // 剧中标题
        )
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          KeepAliveWrapper( // 自定义缓存组件
            child: ListView(
              children: const [
                ListTile(title: Text("我是关注列表1")),
                ListTile(title: Text("我是关注列表2")),
                ListTile(title: Text("我是关注列表3")),
                ListTile(title: Text("我是关注列表4")),
                ListTile(title: Text("我是关注列表5")),
                ListTile(title: Text("我是关注列表6")),
                ListTile(title: Text("我是关注列表7")),
                ListTile(title: Text("我是关注列表8")),
                ListTile(title: Text("我是关注列表9")),
                ListTile(title: Text("我是关注列表10")),
                ListTile(title: Text("我是关注列表11")),
                ListTile(title: Text("我是关注列表12")),
                ListTile(title: Text("我是关注列表13")),
                ListTile(title: Text("我是关注列表14")),
                ListTile(title: Text("我是关注列表15")),
                ListTile(title: Text("我是关注列表16")),
                ListTile(title: Text("我是关注列表17")),
                ListTile(title: Text("我是关注列表18")),
                ListTile(title: Text("我是关注列表19")),
                ListTile(title: Text("我是关注列表20")),
              ],
            ),
          ),
          const Text("热门"),
          const Text("视频"),
          const Text("娱乐"),
          const Text("篮球"),
          const Text("深证"),
          const Text("雷猴"),
          const Text("其他")
        ],
      )
    );
  }
}
