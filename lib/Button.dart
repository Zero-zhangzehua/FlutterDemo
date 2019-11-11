import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget{
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> with SingleTickerProviderStateMixin{

  final textStyleAssetFont = const TextStyle(letterSpacing: 3.0, fontSize: 15.0,);

  //控制器
  var _tabController;
  ScrollController _ScrollController;

  @override
  void initState() {
    super.initState();
    this._tabController = new TabController(
      //tab的个数
        length: 3,
        //动画的异步处理
        vsync: this
    );
    _ScrollController = ScrollController();
  }

  //整个页面 dispose 时，把控制器也 dispose 掉，释放内存
  @override
  void dispose() {
    super.dispose();
    this._tabController.dispose();
    this._ScrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('按钮' , style: TextStyle(fontSize: 17.0)),
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
              text: '列表',
            ),
            new Tab(
              text: '浮动按钮',
            ),
            new Tab(
              text: '按钮种类',
            )
          ],
        ),
      ),
      body: new TabBarView(
        controller: this._tabController,
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: Text('双行列表'),
          subtitle: Text('描述' , style: TextStyle(color: Colors.green)),
          trailing: MaterialButton(
            color: Colors.green,
            textColor: Colors.white,
            child: Text('关注'),
            onPressed: (){},
          ),
        ),
        ListTile(
          title: Text('双行列表'),
          subtitle: Text('描述' , style: TextStyle(color: Colors.green)),
          trailing: MaterialButton(
            color: Colors.lightGreen,
            textColor: Colors.white,
            child: Text('按钮'),
            onPressed: (){},
          ),
        ),
        ListTile(
          title: Text('双行列表'),
          subtitle: Text('描述' , style: TextStyle(color: Colors.green)),
          trailing: MaterialButton(
            color: Colors.white70,
            textColor: Colors.grey,
            child: Text('按钮'),
            onPressed: (){},
          ),
        )
      ],
    );
  }

  Widget _buildSecondPage() {
    return CustomScrollView(
      controller: _ScrollController,
      slivers: <Widget>[
        _buildList()
      ],
    );
  }

  Widget _buildList(){
    return new SliverPadding(
      padding: const EdgeInsets.all(10.0),
      sliver: new SliverList(
        delegate: new SliverChildListDelegate(
          <Widget>[
            ListTile(
              title: Text('双行列表'),
              subtitle: Text('描述' , style: TextStyle(color: Colors.green)),
              onTap: (){},
            ),
            ListTile(
              title: Text('双行列表'),
              subtitle: Text('描述' , style: TextStyle(color: Colors.green)),
              onTap: (){},
            ),
            ListTile(
              title: Text('双行列表'),
              subtitle: Text('描述' , style: TextStyle(color: Colors.green)),
              onTap: (){},
            ),
            ListTile(
              title: Text('双行列表'),
              subtitle: Text('描述' , style: TextStyle(color: Colors.green)),
              onTap: (){},
            ),
            ListTile(
              title: Text('双行列表'),
              subtitle: Text('描述' , style: TextStyle(color: Colors.green)),
              onTap: (){},
            ),
            ListTile(
              title: Text('双行列表'),
              subtitle: Text('描述' , style: TextStyle(color: Colors.green)),
              onTap: (){},
            ),
            FloatingActionButton(
              //响应事件
              onPressed:() {},
              child: Icon(Icons.add_a_photo),
              elevation: 10.0,
              highlightElevation: 2.0,
              backgroundColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThirdPage(){
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15.0),
        ),
        ListTile(
          title: Text('MaterialButton'),
          trailing:  MaterialButton(
            color: Colors.green,
            textColor: Colors.white,
            child: Text('MaterialButton'),
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onPressed: (){},
          ),
        ),
        ListTile(
          title: Text('RaisedButton'),
          trailing:  RaisedButton(
            color: Colors.green,
            textColor: Colors.white,
            child: Text('RaisedButton'),
            onPressed: (){},
          ),
        ),
        ListTile(
          title: Text('FlatButton'),
          trailing: FlatButton(//背景透明
            child: Text('FlatButton'),
            onPressed: (){},
          ),
        ),
        ListTile(
          title: Text('图标按钮'),
          trailing:   IconButton(
            icon: Icon(Icons.volume_up),
            tooltip: 'Increase volumn by 10%',
            onPressed: (){},
          ),
        ),
      ],
    );
  }
}