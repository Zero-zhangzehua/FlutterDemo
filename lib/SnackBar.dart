import 'package:flutter/material.dart';

class ToastPage extends StatefulWidget{
  _ToastPageState createState() => _ToastPageState();
}

class _ToastPageState extends State<ToastPage> {

  //设置字体
  final textStyleAssetFont = const TextStyle(letterSpacing: 3.0 , fontSize: 15.0,);

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('SnackBar' , style: TextStyle(fontSize: 17.0),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
          ),
          MaterialButton(
              color: Colors.green,
              textColor: Colors.white,
              elevation: 5.0,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),  //设置圆角
              child: Text('点击弹出SnackBar',style: textStyleAssetFont,),
              onPressed:(){
                _displaySnackBar(context);
              }
          ),
        ],
      ),
    );
  }

  _displaySnackBar(BuildContext context) {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text('测试数据' , style: textStyleAssetFont,),
      ),
    );
  }
}