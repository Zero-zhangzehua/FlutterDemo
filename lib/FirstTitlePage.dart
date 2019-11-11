import 'package:flutter/material.dart';

class FirsTitlePage extends StatefulWidget {
  @override
  _FirsTitlePageState createState() => _FirsTitlePageState();
}

class _FirsTitlePageState extends State<FirsTitlePage> {

  //控制器
  ScrollController _controller;

  //单选按钮的选值
  int _groupValue = 1;

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

  void updateGroupValue(int v){
    setState(() {
      _groupValue = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: _controller,
        slivers: <Widget>[
          _buildSliverAppbar(),
          _buildSliverFixedExtentList(context),
        ],
      ),
    );
  }

  Widget _buildSliverAppbar(){
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      expandedHeight: 120.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: false,
          title: Text('一级标题' , style: TextStyle(fontSize: 15.0),),
          titlePadding: EdgeInsets.all(17.0),
          background: Container(
            color: Colors.white,
          )
      ),
    );
  }

  Widget _buildSliverFixedExtentList(BuildContext context){
    return SliverFixedExtentList(
      itemExtent: 70.0,
      delegate: SliverChildBuilderDelegate((BuildContext context , int index){
        return Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(10.0),
          child: ListTile(
            title: Text('测试数据'),
            trailing: Radio(
              activeColor: Colors.green,
                value: index + 1,
                groupValue: _groupValue,
                onChanged: (T){
                  updateGroupValue(T);
                }
            ),
          )
        );
      },childCount: 15),
    );
  }
}