import 'package:flutter/material.dart';
import 'package:flutter_demo/BottomNavigationBar.dart';


class ListViewExpanedPage extends StatefulWidget{
  _ListViewExpanedPageState createState() => _ListViewExpanedPageState();
}

class _ListViewExpanedPageState extends State<ListViewExpanedPage>{

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
        title: Text('ListView展开收起' , style: TextStyle(fontSize: 17.0),),
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
            ExpansionTile(
              title: Text('测试数据1'),
              leading: Icon(Icons.format_list_bulleted , color: Colors.red,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('子项1'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => BottomNavigationBarPage()));
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('测试数据2'),
              leading: Icon(Icons.more_horiz , color: Colors.yellow,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('子项1'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项2'),
                  onTap: (){},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('测试数据3'),
              leading: Icon(Icons.switch_camera , color: Colors.red,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('子项1'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项2'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项3'),
                  onTap: (){},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('测试数据4'),
              leading: Icon(Icons.all_inclusive , color: Colors.deepPurpleAccent,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('子项1'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项2'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项3'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项4'),
                  onTap: (){},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('测试数据5'),
              leading: Icon(Icons.folder_open , color: Colors.green,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('子项1'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项2'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项3'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项4'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项5'),
                  onTap: (){},
                ),
              ],
            ),
            ExpansionTile(
              title: Text('测试数据10'),
              leading: Icon(Icons.search , color: Colors.blue,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('子项1'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项2'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项3'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项4'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项5'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项6'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项7'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项8'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项9'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('子项10'),
                  onTap: (){},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


