import 'package:flutter/material.dart';
/**
 * 将需要被展开的部件放在children中即可
 * 当expansion tile 被展开时，我们可以看到background color,会进行一个transition动画进行过渡
 * expansion tile还有一个trailing属性，代表右边的小箭头
 * initiallyExpanded代表最初的状态是否被展开,默认为false，也就是不展开
 *
 * 当一个list view中有多个expansion tile的时候
 * 需要给每一个expansion tile指定唯一的[PageStorageKey]
 * 以保证在滑动的过程中，能够记住expansion tile的开关状态
 */


class ExpansionTilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('列表展开' ,  style: TextStyle(fontSize: 17.0)),
      ),
      body: Align(
        //设置相对屏幕的位置
        alignment: Alignment(-1.0 ,-0.95),
        child: ExpansionTile(
          title: Text('Expansion Tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white,
          children: <Widget>[
            ListTile(
              title: Text('OPPO'),
              subtitle: Text('Shenzhen'),
            ),
            ListTile(
              title: Text('XiaoMi'),
              subtitle: Text('Beijing'),
            ),
            ListTile(
              title: Text('HuaWei'),
              subtitle: Text('Dongguang'),
            ),
            ListTile(
              title: Text('Apple'),
              subtitle: Text('America'),
            ),
            ListTile(
              title: Text('Google'),
              subtitle: Text('America'),
            ),
            ListTile(
              title: Text('Meizu'),
              subtitle: Text('Zhuhai'),
            ),
            ListTile(
              title: Text('OnePlus'),
              subtitle: Text('Shenzhen'),
            ),
          ],
        ),
      ),
    );
  }
}