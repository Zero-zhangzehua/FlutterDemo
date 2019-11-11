import 'package:flutter/material.dart';

class ChoicePage extends StatefulWidget{
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> with SingleTickerProviderStateMixin{

  final textStyleAssetFont = const TextStyle(letterSpacing: 3.0, fontSize: 15.0,);

  //控制器
  var _tabController;

  ScrollController _ScrollController;

  //单选按钮的选值
  int _radioGroupValue = 0;

  //复选框选值
  bool _checkBoxValue1 = false;
  bool _checkBoxValue2 = false;
  bool _checkBoxValue3 = false;
  bool _checkBoxValue4 = false;
  bool _checkBoxValue5 = false;
  bool _checkBoxValue6 = false;
  bool _checkBoxValue7 = false;
  bool _checkBoxValue8 = false;

  @override
  void initState() {
    super.initState();
    this._tabController = new TabController(
        //tab的个数
        length: 2,
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
        title: new Text('单选与多选' , style: TextStyle(fontSize: 17.0)),
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
              text: '单选',
            ),
            new Tab(
              text: '多选',
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: this._tabController,
        children: [
          _buildFirstPage(),
          _buildSecondPage(),
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
          title: Text('单项选择'),
          trailing: Radio(
              activeColor: Colors.green,
              value: 0,
              groupValue: _radioGroupValue,
              onChanged: (T){
                setState(() {
                  _radioGroupValue = T;
                });
              }
          ),
        ),
        ListTile(
          title: Text('单项选择'),
          trailing: Radio(
              activeColor: Colors.green,
              value: 1,
              groupValue: _radioGroupValue,
              onChanged: (T){
                setState(() {
                  _radioGroupValue = T;
                });
              }
          ),
        ),
        ListTile(
          title: Text('单项选择'),
          trailing: Radio(
              activeColor: Colors.green,
              value: 2,
              groupValue: _radioGroupValue,
              onChanged: (T){
                setState(() {
                  _radioGroupValue = T;
                });
              }
          ),
        ),
        ListTile(
          title: Text('单项选择'),
          trailing: Radio(
              activeColor: Colors.green,
              value: 3,
              groupValue: _radioGroupValue,
              onChanged: (T){
                setState(() {
                  _radioGroupValue = T;
                });
              }
          ),
        ),
        ListTile(
          title: Text('单项选择'),
          trailing: Radio(
              activeColor: Colors.green,
              value: 4,
              groupValue: _radioGroupValue,
              onChanged: (T){
                setState(() {
                  _radioGroupValue = T;
                });
              }
          ),
        ),
        ListTile(
          title: Text('单项选择'),
          trailing: Radio(
              activeColor: Colors.green,
              value: 5,
              groupValue: _radioGroupValue,
              onChanged: (T){
                setState(() {
                  _radioGroupValue = T;
                });
              }
          ),
        ),
        ListTile(
          title: Text('单项选择'),
          trailing: Radio(
              activeColor: Colors.green,
              value: 6,
              groupValue: _radioGroupValue,
              onChanged: (T){
                setState(() {
                  _radioGroupValue = T;
                });
              }
          ),
        ),
      ],
    );
  }

  Widget _buildSecondPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CheckboxListTile(
          title: Text('多项选择'),
          activeColor: Colors.green,
          value: _checkBoxValue1,
          onChanged: (bool value){
            setState(() {
              _checkBoxValue1 = value;
            });
          },
        ),
        CheckboxListTile(
          title: Text('多项选择'),
          activeColor: Colors.green,
          value: _checkBoxValue2,
          onChanged: (bool value){
            setState(() {
              _checkBoxValue2 = value;
            });
          },
        ),
        CheckboxListTile(
          title: Text('多项选择'),
          activeColor: Colors.green,
          value: _checkBoxValue3,
          onChanged: (bool value){
            setState(() {
              _checkBoxValue3 = value;
            });
          },
        ),
        CheckboxListTile(
          title: Text('多项选择'),
          activeColor: Colors.green,
          value: _checkBoxValue4,
          onChanged: (bool value){
            setState(() {
              _checkBoxValue4 = value;
            });
          },
        ),
        CheckboxListTile(
          title: Text('多项选择'),
          activeColor: Colors.green,
          value: _checkBoxValue5,
          onChanged: (bool value){
            setState(() {
              _checkBoxValue5 = value;
            });
          },
        ),
        CheckboxListTile(
          title: Text('多项选择'),
          activeColor: Colors.green,
          value: _checkBoxValue6,
          onChanged: (bool value){
            setState(() {
              _checkBoxValue6 = value;
            });
          },
        ),
        CheckboxListTile(
          title: Text('多项选择'),
          activeColor: Colors.green,
          value: _checkBoxValue7,
          onChanged: (bool value){
            setState(() {
              _checkBoxValue7 = value;
            });
          },
        ),
        CheckboxListTile(
          title: Text('多项选择'),
          activeColor: Colors.green,
          value: _checkBoxValue8,
          onChanged: (bool value){
            setState(() {
              _checkBoxValue8 = value;
            });
          },
        ),
      ],
    );
  }
}