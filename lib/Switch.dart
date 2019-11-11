import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget{
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {

  //Switch的初始值
  bool _value1 = true;
  bool _value2 = false;
  bool _value3 = true;
  bool _value4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch' , style: TextStyle(fontSize: 17.0)),
      ),
      body:Center(
        child:Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('ON:'),
                    Switch(
                      value: _value1,
                      onChanged: (newValue){
                        setState(() {
                          _value1 = newValue;
                        });
                      },
                      //打开状态按钮颜色
                      activeColor: Colors.white,
                      //打开状态轨道颜色
                      activeTrackColor:Colors.green,
                      //关闭状态按钮颜色
                      inactiveThumbColor:Colors.white,
                      //关闭状态轨道颜色
                      inactiveTrackColor: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('OFF:'),
                    Switch(
                      value: _value2,
                      onChanged: (newValue){
                        setState(() {
                          _value2 = newValue;
                        });
                      },
                      //打开状态按钮颜色
                      activeColor: Colors.white,
                      //打开状态轨道颜色
                      activeTrackColor:Colors.green,
                      //关闭状态按钮颜色
                      inactiveThumbColor:Colors.white,
                      //关闭状态轨道颜色
                      inactiveTrackColor: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('变式Switch:'),
                    Switch(
                      value: _value3,
                      onChanged: (newValue){
                        setState(() {
                          _value3 = newValue;
                        });
                      },
                      //打开状态按钮颜色
                      activeColor: Colors.white,
                      //打开状态轨道颜色
                      activeTrackColor:Colors.pink,
                      //关闭状态按钮颜色
                      inactiveThumbColor:Colors.white,
                      //关闭状态轨道颜色
                      inactiveTrackColor: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('IOS风格Switch:'),
                    CupertinoSwitch(
                      value: _value4,
                      onChanged: (newValue){
                        setState(() {
                          _value4 = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}