import 'package:flutter/material.dart';

class SlipDialogPage extends StatefulWidget {
  @override
  _SlipDialogPageState createState() => _SlipDialogPageState();
}

class _SlipDialogPageState extends State<SlipDialogPage> {

  //控制器
  ScrollController _controller;

  //单选按钮选值
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
      appBar: AppBar(
        title: Text('滑动页' , style: TextStyle(fontSize: 17.0),),
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: _controller,
        slivers: <Widget>[
          _buildList(),
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
              title: Text('中国'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('朝鲜'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('越南'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('柬埔寨'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('荷兰'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('美国'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('英国'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('法国'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('德国'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('韩国'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('葡萄牙'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('西班牙'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('匈牙利'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('俄罗斯'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('日本'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('新加坡'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('巴西'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('加拿大'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('澳大利亚'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}