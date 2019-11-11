import 'package:flutter/material.dart';

class SecondTitlePage extends StatefulWidget {
  @override
  _SecondTitlePageState createState() => _SecondTitlePageState();
}

class _SecondTitlePageState extends State<SecondTitlePage> {

  //单选按钮选值
  int _groupValue = 1;

  void updateGroupValue(int v){
    setState(() {
      _groupValue = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次级标题' , style: TextStyle(fontSize: 17.0),)
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          _buildSliverFixedExtentList(context),
        ],
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