import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget{
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage>{

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
    return Scaffold(
      appBar: AppBar(
        title: Text('输入框' , style: TextStyle(fontSize: 17.0),),
      ),
      backgroundColor: Colors.white,
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
              title: Text('框型输入' , style: TextStyle(fontSize: 15.0),),
            ),
            TextField(
              showCursor: false,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  /*边角*/
                  borderRadius: BorderRadius.all(
                    Radius.circular(30), //边角为30
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey, //边线颜色
                    width: 2, //边线宽度为2
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green, //边框颜色
                      width: 3, //宽度为5
                    )
                ),
                labelText: "框型账号框",
                labelStyle: TextStyle(
                  color: Colors.green,
                ),
                prefixIcon: Icon(Icons.picture_in_picture , color: Colors.green,),
                contentPadding: const EdgeInsets.symmetric(vertical: 13.0),//设置框的高度
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
            ),
            TextField(
              showCursor: false,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  /*边角*/
                  borderRadius: BorderRadius.all(
                    Radius.circular(30), //边角为30
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey, //边线颜色
                    width: 2, //边线宽度为2
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green, //边框颜色
                      width: 3, //宽度为5
                    )
                ),
                labelText: "框型密码框",
                labelStyle: TextStyle(
                  color: Colors.green,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 13.0),//设置框的高度
                prefixIcon: Icon(Icons.person , color: Colors.green,),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
            ),
            ListTile(
              title: Text('线型有提示' , style: TextStyle(fontSize: 15.0),),
            ),
            TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                labelText: "手机号码",
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: Icon(Icons.phone_android , color: Colors.green,),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
            ),
            ListTile(
              title: Text('线型无提示' , style: TextStyle(fontSize: 15.0),),
            ),
            TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.text_fields , color: Colors.green,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


