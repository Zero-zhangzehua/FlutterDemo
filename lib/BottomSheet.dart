import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget{
  _BottomSheetPageState createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {

  final textStyleAssetFont = const TextStyle(letterSpacing: 4.0,fontSize: 20.0,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('底部弹窗' , style: TextStyle(fontSize: 17.0),),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text('删除弹窗' , style: TextStyle(fontSize: 13.0 , color: Colors.grey),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('单行'),
                  onPressed: (){
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context){
                          return Container(
                            height: 130.0,
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                FlatButton(
                                  child: Text('删除10张照片' , style: TextStyle(fontSize:18.0 , color: Colors.red),),
                                  onPressed: (){},
                                ),
                                new Divider(),
                                FlatButton(
                                  child: Text('Cancel' , style: TextStyle(fontSize:18.0),),
                                  onPressed: (){},
                                ),
                              ],
                            ),
                          );
                        });
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('多行'),
                  onPressed: (){
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context){
                          return Container(
                            height: 330.0,
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                FlatButton(
                                  child: Text('Command one' , style: TextStyle(fontSize:18.0),),
                                  onPressed: (){},
                                ),
                                new Divider(),
                                FlatButton(
                                  child: Text('Command two' , style: TextStyle(fontSize:18.0),),
                                  onPressed: (){},
                                ),
                                new Divider(),
                                FlatButton(
                                  child: Text('Command three' , style: TextStyle(fontSize:18.0),),
                                  onPressed: (){},
                                ),
                                new Divider(),
                                FlatButton(
                                  child: Text('Command four' , style: TextStyle(fontSize:18.0),),
                                  onPressed: (){},
                                ),
                                new Divider(),
                                FlatButton(
                                  child: Text('Cancel' , style: TextStyle(fontSize:18.0),),
                                  onPressed: (){},
                                ),
                              ],
                            ),
                          );
                        });
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('有提示'),
                  onPressed: (){
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context){
                          return Container(
                            height: 170.0,
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('此照片将从手机中删除' , style: TextStyle(fontSize:13.0 , color: Colors.grey),),
                                new Divider(),
                                FlatButton(
                                  child: Text('删除10张照片' , style: TextStyle(fontSize:18.0 , color: Colors.red),),
                                  onPressed: (){},
                                ),
                                new Divider(),
                                FlatButton(
                                  child: Text('Cancel' , style: TextStyle(fontSize:18.0),),
                                  onPressed: (){},
                                ),
                              ],
                            ),
                          );
                        });
                  },
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10.0),
            ),
            ListTile(
              title: Text('选项弹窗' , style: TextStyle(fontSize: 13.0 , color: Colors.grey),),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0),
              child: RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text('有提示'),
                onPressed: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context){
                        return Container(
                          height: 360.0,
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('提示小文本，选项型弹框文字居中显示' , style: TextStyle(fontSize:13.0 , color: Colors.grey),),
                              new Divider(),
                              FlatButton(
                                child: Text('Command one' , style: TextStyle(fontSize:18.0),),
                                onPressed: (){},
                              ),
                              new Divider(),
                              FlatButton(
                                child: Text('Command two' , style: TextStyle(fontSize:18.0),),
                                onPressed: (){},
                              ),
                              new Divider(),
                              FlatButton(
                                child: Text('Command three' , style: TextStyle(fontSize:18.0),),
                                onPressed: (){},
                              ),
                              new Divider(),
                              FlatButton(
                                child: Text('Command four' , style: TextStyle(fontSize:18.0),),
                                onPressed: (){},
                              ),
                              new Divider(),
                              FlatButton(
                                child: Text('Cancel' , style: TextStyle(fontSize:18.0),),
                                onPressed: (){},
                              ),
                            ],
                          ),
                        );
                      });
                },
              ),
            ),
            ListTile(
              title: Text('图标弹窗' , style: TextStyle(fontSize: 13.0 , color: Colors.grey),),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0),
              child: RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text('普通'),
                onPressed: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context){
                        return Container(
                          height: 200.0,
                          child: Icon(
                            Icons.airplay,
                            color: Colors.green,
                            size: 200.0,
                          ),
                        );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}