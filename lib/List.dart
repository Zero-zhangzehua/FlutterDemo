import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  //控制器
  ScrollController _controller;

  //设置字体
  final _titleFont = const TextStyle(fontSize: 13.0 , color: Colors.black45);
  final _fousFont = const TextStyle(fontSize: 15.0 , color: Colors.blue);
  final _signFont = const TextStyle(fontSize: 15.0 , color: Colors.red);
  final _contentFont = const TextStyle(fontSize: 18.0 , color: Colors.black);


  @override
  void initState() {
    super.initState();
    //初始化
    _controller = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('列表' , style: TextStyle(fontSize: 17.0),),
      ),
      body: CustomScrollView(
        controller: _controller,
        slivers: <Widget>[
          _buildList()
        ],
      ),
    );
  }

  Widget _buildList(){
    return new SliverPadding(
      padding: const EdgeInsets.all(10.0),
      sliver: new SliverList(
        delegate: new SliverChildListDelegate(
          <Widget>[
            ListTile(
              title: Text('单行列表' , style: _titleFont,),
              onTap: (){},
            ),
            ListTile(
              title: Text('单行列表' , style: _contentFont,),
              onTap: (){},
            ),
            ListTile(
              title: Text('单行列表' , style: _contentFont,),
              trailing: Icon(Icons.chevron_right),
              onTap: (){},
            ),
            ListTile(
              title: Text('焦点色标题' , style: _fousFont,),
              onTap: (){},
            ),
            ListTile(
              title: Text('警示色标题' , style: _signFont,),
              onTap: (){},
            ),
            new Divider(),
            ListTile(
              title: Text('双行列表' , style: _titleFont,),
              onTap: (){},
            ),
            ListTile(
              title: Text('标题' , style: _contentFont,),
              subtitle: Text('描述'),
              trailing: Icon(Icons.chevron_right),
              onTap: (){},
            ),
            new Divider(),
            ListTile(
              title: Text('图标列表' , style: _titleFont,),
              onTap: (){},
            ),
            ListTile(
              title: Text('标题' , style: _contentFont,),
              subtitle: Text('描述'),
              leading: Icon(Icons.format_list_bulleted),
              onTap: (){},
            ),
            ListTile(
              title: Text('标题' , style: _contentFont,),
              subtitle: Text('描述'),
              leading: Icon(Icons.format_list_bulleted),
              trailing: Icon(Icons.chevron_right),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}