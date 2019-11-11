import 'package:flutter/material.dart';

class StaticWordPage extends StatefulWidget{
  _StaticWordPageState createState() => _StaticWordPageState();
}

class _StaticWordPageState extends State<StaticWordPage> {

  //控制器
  ScrollController _controller;

  // 文本间距
  final double textLineHeight = 2;

  static const textContent =
      "Flutter 是 Google 开源的 UI 工具包，帮助开发者通过一套代码库高效构建多平台精美应用，支持移动、Web、桌面和嵌入式平台。";

  //设置字体
  final _titleFont = const TextStyle(fontSize: 13.0 , color: Colors.grey);

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
    return Scaffold(
      appBar: AppBar(
        title: Text('静态排版' , style: TextStyle(fontSize: 17.0)),
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
              title: Text('字体大小  16  行距  2' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            Container(padding: EdgeInsets.all(5.0)),
            ListTile(
              title: Text('字体大小  18  行距  3' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
                title: Text(
                  textContent,
                  strutStyle: StrutStyle(forceStrutHeight: true, height: 3.0),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
                contentPadding: EdgeInsets.all(0.0),
            ),
            Container(padding: EdgeInsets.all(5.0)),
            ListTile(
              title: Text('字体大小  20  行距  4' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
                title: Text(
                  textContent,
                  strutStyle: StrutStyle(forceStrutHeight: true, height: 4.0),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
                contentPadding: EdgeInsets.all(0.0),
            ),
            Container(padding: EdgeInsets.all(5.0)),
            ListTile(
              title: Text('字体大小  20  行距  4  加粗  w900' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 4.0),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
          ],
        ),
      ),
    );
  }
}