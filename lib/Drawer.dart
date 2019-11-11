import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget{
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  final textStyleAssetFont = const TextStyle(letterSpacing: 3.0,fontSize: 17.0,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('抽屉' , style: TextStyle(fontSize: 17.0)),
      ),
      drawer: Drawer(
        child: HomeBuilder.homeDrawer(),
      ),
      body: _buildList(),
    );
  }
  Widget _buildList(){
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext _context, int i){
          if(i.isOdd){
            return const Divider();
          }
          final index = i ~/ 2;
          return  _buildRow(index);
        });
  }

  Widget _buildRow(int index) {
    return ListTile(
      title: Text(
        '测试条项',
        style: textStyleAssetFont,
      ),
      onTap:(){},
    );
  }

}

class HomeBuilder{
  static Widget homeDrawer(){
    return ListView(
      padding: const EdgeInsets.only(),
      children: <Widget>[
        _drawerHeader(),
        ListTile(
          leading: CircleAvatar(
            child: Text("A"),
          ),
          title: Text('示例标题A'),
          subtitle: Text('示例副标题A'),
          onTap: () => {},
        ),
        ListTile(
          leading: CircleAvatar(
            child: Text('B'),
          ),
          title: Text('示例标题B'),
          subtitle: Text('示例副标题B'),
          onTap: () => {},
        ),
        ListTile(
          leading: CircleAvatar(
            child: Text('C'),
          ),
          title: Text('示例标题C'),
          subtitle: Text('示例副标题C'),
          onTap: () => {},
        ),
        ListTile(
          leading: CircleAvatar(
            child: Text('D'),
          ),
          title: Text('示例标题D'),
          subtitle: Text('示例副标题D'),
          onTap: () => {},
        ),
        ListTile(
          leading: CircleAvatar(
            child: Text('E'),
          ),
          title: Text('示例标题E'),
          subtitle: Text('示例副标题E'),
          onTap: () => {},
        ),
        ListTile(
          leading: CircleAvatar(
            child: Text('F'),
          ),
          title: Text('示例标题F'),
          subtitle: Text('示例副标题F'),
          onTap: () => {},
        )
      ],
    );
  }

  static Widget _drawerHeader() {
    return new UserAccountsDrawerHeader(
      accountName: Text("oppo"),
      accountEmail: Text("FlutterDemo@oppo.com"),
      decoration: BoxDecoration(
          color: Colors.green,
          //borderRadius: BorderRadius.all(Radius.circular(5.0))
      ),
      onDetailsPressed: (){},
    );
  }
}