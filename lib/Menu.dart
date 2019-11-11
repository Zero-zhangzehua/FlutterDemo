import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  //控制器
  ScrollController _controller;

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
        title: new Text('菜单' , style: TextStyle(fontSize: 17.0),),
      ),
      body: _buildList(),
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
      trailing:
      PopupMenuButton(
        icon: Icon(Icons.more_horiz , color: Colors.green,),
        offset: Offset(100 , 100),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: "1",
            child: ListTile(
              title: Text('发送'),
            ),
          ),
          const PopupMenuItem<String>(
            value: "2",
            child: ListTile(
              title: Text('复制'),
            ),
          ),
        ],
        onSelected: (String result){
          setState(() {});
        },
        onCanceled: (){},
      ),
      onTap:(){},
    );
  }
}