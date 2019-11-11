import 'package:flutter/material.dart';
import 'package:flutter_demo/SlipDialog.dart';

class WidgetListPage extends StatefulWidget {
  @override
  _WidgetListPageState createState() => _WidgetListPageState();
}

class _WidgetListPageState extends State<WidgetListPage> {

  //控制器
  ScrollController _controller;

  //单选按钮选值
  int _radioGroupValue1 = 0;

  //赋值操作单选按钮选值
  int _radioGroupValue2 = 0;

  //开关初始值
  bool _switchValue1 = true;
  bool _switchValue2 = false;

  //设置字体
  final _titleFont = const TextStyle(fontSize: 13.0 , color: Colors.black45);

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
        title: new Text('列表控件组合' , style: TextStyle(fontSize: 17.0),),
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
              title: Text('单项选择' , style: _titleFont,),
              onTap: (){},
            ),
            ListTile(
              title: Text('单选选项' , style: _contentFont,),
              trailing:Radio(
                value: 0,
                activeColor: Colors.green,
                groupValue: _radioGroupValue1,
                onChanged: (T){
                  setState(() {
                    _radioGroupValue1 = T;
                  });
                }
              ),
              onTap: (){},
            ),
            ListTile(
              title: Text('单选选项' , style: _contentFont,),
              trailing:Radio(
                  value: 1,
                  activeColor: Colors.green,
                  groupValue: _radioGroupValue1,
                  onChanged: (T){
                    setState(() {
                      _radioGroupValue1 = T;
                    });
                  }
              ),
              onTap: (){},
            ),
            new Divider(),
            ListTile(
              title: Text('开关' , style: _titleFont,),
              onTap: (){},
            ),
            ListTile(
              title: Text('ON' , style: _contentFont,),
              trailing: Switch(
                value: _switchValue1,
                onChanged: (newValue){
                  setState(() {
                    _switchValue1 = newValue;
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
              onTap: (){},
            ),
            ListTile(
              title: Text('OFF' , style: _contentFont,),
              trailing: Switch(
                value: _switchValue2,
                onChanged: (newValue){
                  setState(() {
                    _switchValue2 = newValue;
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
              onTap: (){},
            ),
            new Divider(),
            ListTile(
              title: Text('分类标题' , style: _titleFont,),
              onTap: (){},
            ),
            ListTile(
              title: Text('分类标题' , style: _contentFont,),
              trailing: Icon(Icons.chevron_right , color: Colors.green,),
              onTap: (){},
            ),
            ListTile(
              title: Text('分类标题' , style: _contentFont,),
              trailing: Text('编辑' , style: TextStyle(color: Colors.green),),
              onTap: (){},
            ),
            new Divider(),
            ListTile(
              title: Text('响应操作' , style: _titleFont,),
              onTap: (){},
            ),
            ListTile(
              title: Text('滑动页' , style: _contentFont,),
              subtitle: Text('描述' , style: TextStyle(color: Colors.green),),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => SlipDialogPage()));
              },
            ),
            ListTile(
              title: Text('居中弹框' , style: _contentFont,),
              subtitle: Text('描述' , style: TextStyle(color: Colors.green),),
              onTap: (){
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
                            height: 280.0,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text('测试数据'),
                                  trailing: Radio(
                                      activeColor: Colors.green,
                                      value: 0,
                                      groupValue: _radioGroupValue2,
                                      onChanged: (T){
                                        setState(() {
                                          _radioGroupValue2 = T;
                                        });
                                      }
                                  ),
                                ),
                                ListTile(
                                  title: Text('测试数据'),
                                  trailing: Radio(
                                      activeColor: Colors.green,
                                      value: 1,
                                      groupValue: _radioGroupValue2,
                                      onChanged: (T){
                                        setState(() {
                                          _radioGroupValue2 = T;
                                        });
                                      }
                                  ),
                                ),
                                ListTile(
                                  title: Text('测试数据'),
                                  trailing: Radio(
                                      activeColor: Colors.green,
                                      value: 2,
                                      groupValue: _radioGroupValue2,
                                      onChanged: (T){
                                        setState(() {
                                          _radioGroupValue2 = T;
                                        });
                                      }
                                  ),
                                ),
                                ListTile(
                                  title: Text('测试数据'),
                                  trailing: Radio(
                                      activeColor: Colors.green,
                                      value: 3,
                                      groupValue: _radioGroupValue2,
                                      onChanged: (T){
                                        setState(() {
                                          _radioGroupValue2 = T;
                                        });
                                      }
                                  ),
                                ),
                                ListTile(
                                  title: Center(child: Text('Close'),),
                                  onTap: (){
                                    Navigator.pop(context);
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
            ListTile(
              title: Text('输入框' , style: _contentFont,),
              subtitle: Text('描述' , style: TextStyle(color: Colors.green),),
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Center(child: Text('输入框')),
                        titlePadding: EdgeInsets.all(20),
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
                            child: Text('取消' , style: TextStyle(color: Colors.green),),
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            child: Text('确定' , style: TextStyle(color: Colors.green),),
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
      ),
    );
  }
}