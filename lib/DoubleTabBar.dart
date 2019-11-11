import 'package:flutter/material.dart';

class DoubleTabBarPage extends StatefulWidget{
  _DoubleTabBarPageState createState() => _DoubleTabBarPageState();
}

class _DoubleTabBarPageState extends State<DoubleTabBarPage> with SingleTickerProviderStateMixin{
  final textStyleAssetFont = const TextStyle(letterSpacing: 3.0, fontSize: 15.0,);

  //控制器
  var _tabController;

  @override
  void initState() {
    super.initState();
    this._tabController = new TabController(
      //tab的个数
        length: 3,
        //动画的异步处理
        vsync: this
    );
  }

  //整个页面 dispose 时，把控制器也 dispose 掉，释放内存
  @override
  void dispose() {
    super.dispose();
    this._tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('二级Tab' , style: TextStyle(fontSize: 17.0)),
        bottom: new TabBar(
            controller: this._tabController,
            //未选中标签时标签的颜色
            unselectedLabelColor: Colors.black38,
            //字体颜色，默认为白色
            labelColor: Colors.green,
            //指示线的颜色
            indicatorColor: Colors.green,
            tabs: <Tab>[
              new Tab(
                text: '首页',
                icon: Icon(Icons.home),
              ),
              new Tab(
                text: '历史',
                icon: Icon(Icons.history),
              ),
              new Tab(
                text: '设置',
                icon: Icon(Icons.settings),
              )
            ],
        ),
      ),
      body: new TabBarView(
        controller: this._tabController,
        children: [
          _buildList(),
          _buildList(),
          _buildList(),
        ],
      ),
    );
  }

  Widget _buildList(){
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext _context, int i){
          if(i.isOdd){
            return const Divider();
          }
          final index = i ~/ 2;
          return  _buildRow(index);
        });
  }

  Widget _buildRow(int index) {
    return new ListTile(
      title: new Text(
        '测试条项',
        style: textStyleAssetFont,
      ),
      onTap:(){},
    );
  }

}