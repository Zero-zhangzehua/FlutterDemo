import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RefreshPage extends StatefulWidget {
  @override
  _RefreshPageState createState() => _RefreshPageState();
}

class _RefreshPageState extends State<RefreshPage> {

  //控制器
  ScrollController _controller;

  // 保存建议的单词对
  List<WordPair> _suggestions = new List();

  @override
  void initState() {
    super.initState();
    //初始化
    _controller = ScrollController();
    _suggestions.addAll(generateWordPairs().take(20));
  }

  // 处理下拉刷新
  Future _handleRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
      setState(() {
        _suggestions.clear();
        _suggestions.addAll(generateWordPairs().take(20));
        return _suggestions;
      });
    });
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
        title: new Text('下拉刷新' , style: TextStyle(fontSize: 17.0),),
      ),
      body: new RefreshIndicator(
        color: Colors.green,
        child: _buildList(),
        onRefresh: _handleRefresh,
      )
    );
  }

  Widget _buildList(){
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext _context, int i){
          return  _buildRow(i);
        });
  }
  Widget _buildRow(int index) {
    return new ListTile(
      title: new Text(
        '双行列表',
      ),
      subtitle: Text('描述' , style: TextStyle(color: Colors.green)),
      onTap:(){},
    );
  }
}