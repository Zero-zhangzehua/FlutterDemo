import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget{
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> with SingleTickerProviderStateMixin{

  final textStyleAssetFont = const TextStyle(letterSpacing: 3.0, fontSize: 15.0,);

  //控制器
  var tabController;

  @override
  void initState() {
    super.initState();
    this.tabController = new TabController(
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
    this.tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Loading' , style: TextStyle(fontSize: 17.0)),
        bottom: new TabBar(
          controller: this.tabController,
          //未选中标签时标签的颜色
          unselectedLabelColor: Colors.black38,
          //字体颜色，默认为白色
          labelColor: Colors.green,
          //指示线的颜色
          indicatorColor: Colors.green,
          tabs: <Tab>[
            new Tab(
              text: '页面',
            ),
            new Tab(
              text: '弹窗',
            ),
            new Tab(
              text: '列表',
            )
          ],
        ),
      ),
      body: new TabBarView(
        controller: this.tabController,
        children: [
          _buildFirstPage(),
          _buildSecondPage(),
          _buildThirdPage()
        ],
      ),
    );
  }

  Widget _buildFirstPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircularProgressIndicator(
          strokeWidth: 5.0,
          backgroundColor: Colors.black12,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
        ),
        Text('正在加载......')
      ],
    );
  }

  Widget _buildSecondPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20.0),
        ),
        MaterialButton(
            color: Colors.green,
            textColor: Colors.white,
            elevation: 5.0,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7.0))),  //设置圆角
            child: Text('无按钮Loading',style: textStyleAssetFont,),
            onPressed:(){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return SimpleDialog(
                      title: Center(child: Text('正在加载'),),
                      //Dialog 的悬浮高度，和阴影效果有关
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      children: <Widget>[
                        Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 5.0,
                            backgroundColor: Colors.black12,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                          ),
                        )
                      ],
                    );
                  }
              );
            }
        ),
        Container(
          padding: EdgeInsets.all(15.0),
        ),
        MaterialButton(
            color: Colors.green,
            textColor: Colors.white,
            elevation: 5.0,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7.0))),  //设置圆角
            child: Text('有按钮Loading',style: textStyleAssetFont,),
            onPressed:(){
              showDialog (
                  context: context,
                  builder: (BuildContext context){
                    return SimpleDialog(
                      title: Center(child: Text('正在加载'),),
                      //Dialog 的悬浮高度，和阴影效果有关
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      children: <Widget>[
                        Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 5.0,
                            backgroundColor: Colors.black12,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10.0 , bottom: 10.0),
                        ),
                        ListTile(
                          title: Center(child: Text('取消' , style: TextStyle(fontSize: 18.0, color: Colors.green),)),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  }
              );
            }
        ),
      ],
    );
  }

  Widget _buildThirdPage(){
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('测试条项'),
          onTap: (){},
        ),
        ListTile(
          title: Text('测试条项'),
          trailing: CircularProgressIndicator(
            strokeWidth: 2.0,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black26),
          ),
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
          trailing: CircularProgressIndicator(
            strokeWidth: 2.0,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black26),
          ),
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
    );
  }
}