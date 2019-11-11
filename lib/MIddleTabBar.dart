import 'package:flutter/material.dart';

class MiddleTabBarPage extends StatefulWidget{
  _MiddleTabBarPageState createState() => _MiddleTabBarPageState();
}

class _MiddleTabBarPageState extends State<MiddleTabBarPage> with SingleTickerProviderStateMixin{
  final textStyleAssetFont = const TextStyle(letterSpacing: 3.0, fontSize: 15.0,);

  //控制器
  var _tabController;

  //控制器
  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    //初始化
    this._controller = ScrollController();
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
    this._controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('页面中部Tab' , style: TextStyle(fontSize: 17.0),),
      ),
      body: Column(
        children: <Widget>[
          new Container(
            child: new Image.asset('images/oppo.jpg')
          ),
          new TabBar(
            controller: this._tabController,
            //未选中标签时标签的颜色
            unselectedLabelColor: Colors.grey,
            //字体颜色，默认为白色
            labelColor: Colors.green,
            //指示线的颜色
            indicatorColor: Colors.green,
            tabs: <Tab>[
              new Tab(
                text: '选项',
              ),
              new Tab(
                text: '选项',
              ),
              new Tab(
                text: '选项',
              )
            ],
          ),
          ListTile(
            title: Text('测试条项'),
            onTap: (){},
          ),
          ListTile(
            title: Text('测试条项'),
            onTap: (){},
          ),
          ListTile(
            title: Text('测试条项'),
            onTap: (){},
          ),
          ListTile(
            title: Text('测试条项'),
            onTap: (){},
          ),
          ListTile(
            title: Text('测试条项'),
            onTap: (){},
          ),
        ],
      )
    );
  }
}