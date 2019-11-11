import 'package:flutter/material.dart';

class CenterSheetPage extends StatefulWidget{
  _CenterSheetPageState createState() => _CenterSheetPageState();
}

class _CenterSheetPageState extends State<CenterSheetPage> {
  final textStyleAssetFont = const TextStyle(letterSpacing: 4.0,fontSize: 20.0,);

  //单选按钮选值
  int _radioGroupValue = 0;

  //复选框选值
  bool _checkBoxValue1 = false;
  bool _checkBoxValue2 = false;
  bool _checkBoxValue3 = false;
  bool _checkBoxValue4 = false;
  bool _checkBoxValue5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('居中弹窗' , style: TextStyle(fontSize: 17.0),),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text('确认弹窗' , style: TextStyle(fontSize: 13.0 , color: Colors.grey),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('单标题'),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Center(child: Text('声明与条款'),),
                            titlePadding: EdgeInsets.only(bottom: 18.0 ,top: 18.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6))),
                            //content: Text('声明与条款'),
                            //contentPadding: EdgeInsets.all(50.0),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('取消' , style: TextStyle(fontSize: 15.0, color: Colors.green),),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                              FlatButton(
                                child: Text('确定' , style: TextStyle(fontSize: 15.0 , color: Colors.green),),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }
                    );
                  }
                ),
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('竖排按钮'),
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return SimpleDialog(
                            title: Center(child: Text('竖排按钮'),),
                            //titlePadding: EdgeInsets.only(left:90.0 ,top: 18.0),
                            //Dialog 的悬浮高度，和阴影效果有关
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6))),
                            children: <Widget>[
                              ListTile(
                                title: Center(child: Text('Button1' , style: TextStyle(fontSize: 18.0, color: Colors.green),)),
                                onTap: (){},
                              ),
                              ListTile(
                                title: Center(child: Text('Button2' , style: TextStyle(fontSize: 18.0, color: Colors.green),),),
                                onTap: (){},
                              ),
                              ListTile(
                                title: Center(child: Text('Button3' , style: TextStyle(fontSize: 18.0, color: Colors.green),),),
                                onTap: (){},
                              ),
                            ],
                          );
                        }
                    );
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('有提示'),
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return SimpleDialog(
                            title: Center(child: Text('声明与条款'),),
                            //titlePadding: EdgeInsets.only(left:90.0 ,top: 18.0),
                            //Dialog 的悬浮高度，和阴影效果有关
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6))),
                            children: <Widget>[
                              ListTile(
                                title: Text('相册在使用过程中，需要使用网络、获取位置信息。付费时需要联网使用安全支付，您是否同意？' , style: TextStyle(fontSize: 13.0),),
                              ),
                              ListTile(
                                title: Center(child: Text('同意' , style: TextStyle(fontSize: 18.0, color: Colors.green),)),
                                onTap: (){
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: Center(child: Text('退出' , style: TextStyle(fontSize: 18.0, color: Colors.green),),),
                                onTap: (){
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        }
                    );
                  },
                ),
              ],
            ),
            ListTile(
              title: Text('输入弹窗' , style: TextStyle(fontSize: 13.0 , color: Colors.grey),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('单行'),
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Center(child: Text('新建文件夹'),),
                            //Dialog 的悬浮高度，和阴影效果有关
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6))),
                            content:  TextField(
                              cursorColor: Colors.green,
                              decoration: InputDecoration(
                                focusColor: Colors.green,
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('取消' , style: TextStyle(fontSize: 18.0, color: Colors.green),),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                              FlatButton(
                                child: Text('确定' , style: TextStyle(fontSize: 18.0, color: Colors.green),),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }
                    );
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('多行'),
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Center(child: Text('新建文件夹'),),
                            //Dialog 的悬浮高度，和阴影效果有关
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6))),
                            content: Container(
                              height: 110.0,
                              child:  Column(
                                children: <Widget>[
                                  TextField(
                                    cursorColor: Colors.green,
                                    decoration: InputDecoration(
                                      focusColor: Colors.green,
                                    ),
                                  ),
                                  TextField(
                                    cursorColor: Colors.green,
                                    decoration: InputDecoration(
                                      focusColor: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('取消' , style: TextStyle(fontSize: 18.0, color: Colors.green),),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                              FlatButton(
                                child: Text('确定' , style: TextStyle(fontSize: 18.0, color: Colors.green),),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }
                    );
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('有提示文本'),
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Center(child: Text('新建文件夹'),),
                            //Dialog 的悬浮高度，和阴影效果有关
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6))),
                            content:  Container(
                              height: 70,
                              child: Column(
                                children: <Widget>[
                                  Center(child: Text('请为此文件夹输入名称' , style: TextStyle(fontSize: 15.0),),),
                                  TextField(
                                    cursorColor: Colors.green,
                                    decoration: InputDecoration(
                                      focusColor: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('取消' , style: TextStyle(fontSize: 18.0, color: Colors.green),),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                              FlatButton(
                                child: Text('确定' , style: TextStyle(fontSize: 18.0, color: Colors.green),),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }
                    );
                  },
                ),
              ],
            ),
            ListTile(
              title: Text('Loading' , style: TextStyle(fontSize: 13.0 , color: Colors.grey),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('无按钮'),
                  onPressed: (){
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
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('有按钮'),
                  onPressed: (){
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
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('条形无按钮'),
                  onPressed: (){
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
                              LinearProgressIndicator(
                                backgroundColor: Colors.black12,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                              ),
                            ],
                          );
                        }
                    );
                  },
                ),
              ],
            ),
            ListTile(
              title: Text('选择弹窗' , style: TextStyle(fontSize: 13.0 , color: Colors.grey),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('单选'),
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Center(child: Text('居中弹框')),
                            //Dialog 的悬浮高度，和阴影效果有关
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6))),
                            content: new StatefulBuilder(builder: (context, StateSetter setState){
                              return Container(
                                height: 115.0,
                                child: Column(
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('男'),
                                      trailing: Radio(
                                          activeColor:Colors.green,
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
                                      title: Text('女'),
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
                                  ],
                                ),
                              );
                            }),
                          );
                        }
                    );
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('多选'),
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Center(child: Text('多选')),
                            //Dialog 的悬浮高度，和阴影效果有关
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6))),
                            content: new StatefulBuilder(builder: (context, StateSetter setState){
                              return Container(
                                height: 370.0,
                                child: Column(
                                  children: <Widget>[
                                    CheckboxListTile(
                                      title: Text('示例主标题'),
                                      subtitle: Text('示例副标题' , style: TextStyle(color: Colors.green)),
                                      activeColor: Colors.green,
                                      value: _checkBoxValue1,
                                      onChanged: (bool value){
                                        setState(() {
                                          _checkBoxValue1 = value;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('示例主标题'),
                                      subtitle: Text('示例副标题' , style: TextStyle(color: Colors.green)),
                                      activeColor: Colors.green,
                                      value: _checkBoxValue2,
                                      onChanged: (bool value){
                                        setState(() {
                                          _checkBoxValue2 = value;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('示例主标题'),
                                      subtitle: Text('示例副标题' , style: TextStyle(color: Colors.green)),
                                      activeColor: Colors.green,
                                      value: _checkBoxValue3,
                                      onChanged: (bool value){
                                        setState(() {
                                          _checkBoxValue3 = value;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('示例主标题'),
                                      subtitle: Text('示例副标题' , style: TextStyle(color: Colors.green)),
                                      activeColor: Colors.green,
                                      value: _checkBoxValue4,
                                      onChanged: (bool value){
                                        setState(() {
                                          _checkBoxValue4 = value;
                                        });
                                      },
                                    ),
                                    CheckboxListTile(
                                      title: Text('示例主标题'),
                                      subtitle: Text('示例副标题' , style: TextStyle(color: Colors.green)),
                                      activeColor: Colors.green,
                                      value: _checkBoxValue5,
                                      onChanged: (bool value){
                                        setState(() {
                                          _checkBoxValue5 = value;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              );
                            }),
                          );
                        }
                    );
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('时间选择器'),
                  onPressed: (){
                    _showTimePicker();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _showTimePicker() async{
    var picker = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()
    );
  }
}