import 'package:flutter/material.dart';
import 'package:flutter_demo/Button.dart';
import 'package:flutter_demo/Chip.dart';
import 'package:flutter_demo/Choice.dart';
import 'package:flutter_demo/ExpansionTile.dart';
import 'package:flutter_demo/PageBreak.dart';
import 'package:flutter_demo/Picker.dart';
import 'package:flutter_demo/Placeholder.dart';
import 'package:flutter_demo/Slider.dart';
import 'package:flutter_demo/Stepper.dart';
import 'package:flutter_demo/Switch.dart';
import 'package:flutter_demo/DataTable.dart';
import 'ScrollBar.dart';

class WidgetsPage extends StatefulWidget{
  _WidgetsPageState createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {

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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('控件' , style: TextStyle(fontSize: 17.0)),
        backgroundColor: Colors.white,
      ),
      body: CustomScrollView(
        controller: _controller,
        slivers: <Widget>[
          _buildList()
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildList(){
    return new SliverPadding(
      padding: const EdgeInsets.all(10.0),
      sliver: new SliverList(
        delegate: new SliverChildListDelegate(
          <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => SwitchPage()));
                  },
                  child:Card(
                    //设置阴影
                    elevation: 20.0,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    //Clip.antiAlias 指抗锯齿
                    clipBehavior: Clip.antiAlias,
                    child:  Container(
                      height: 155.0,
                      width: 155.0,
                      color: Colors.white,
                      child: Center(child: Text('开关'),)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => ButtonPage()));
                  },
                  child:Card(
                    //设置阴影
                    elevation: 20.0,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    //Clip.antiAlias 指抗锯齿
                    clipBehavior: Clip.antiAlias,
                    child:  Container(
                      height: 155.0,
                      width: 155.0,
                      color: Colors.white,
                      child: Center(child: Text('按钮'),)
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(7.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => DraggableScrollBarDemo()));
                  },
                  child:Card(
                    //设置阴影
                    elevation: 20.0,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    //Clip.antiAlias 指抗锯齿
                    clipBehavior: Clip.antiAlias,
                    child:  Container(
                        height: 155.0,
                        width: 155.0,
                        color: Colors.white,
                        child: Center(child: Text('快速滑动'),)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => ChoicePage()));
                  },
                  child:Card(
                    //设置阴影
                    elevation: 20.0,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    //Clip.antiAlias 指抗锯齿
                    clipBehavior: Clip.antiAlias,
                    child:  Container(
                        height: 155.0,
                        width: 155.0,
                        color: Colors.white,
                        child: Center(child: Text('单选与多选'),)
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(7.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => SliderPage()));
                  },
                  child:Card(
                    //设置阴影
                    elevation: 20.0,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    //Clip.antiAlias 指抗锯齿
                    clipBehavior: Clip.antiAlias,
                    child:  Container(
                        height: 155.0,
                        width: 155.0,
                        color: Colors.white,
                        child: Center(child: Text('滑动条'),)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => ExpansionTilePage()));
                  },
                  child:Card(
                    //设置阴影
                    elevation: 20.0,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    //Clip.antiAlias 指抗锯齿
                    clipBehavior: Clip.antiAlias,
                    child:  Container(
                        height: 155.0,
                        width: 155.0,
                        color: Colors.white,
                        child: Center(child: Text('列表展开'),)
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(7.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => ChipPage()));
                  },
                  child:Card(
                    //设置阴影
                    elevation: 20.0,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    //Clip.antiAlias 指抗锯齿
                    clipBehavior: Clip.antiAlias,
                    child:  Container(
                        height: 155.0,
                        width: 155.0,
                        color: Colors.white,
                        child: Center(child: Text('Chip'),)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => DataTablePage()));
                  },
                  child:Card(
                    //设置阴影
                    elevation: 20.0,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    //Clip.antiAlias 指抗锯齿
                    clipBehavior: Clip.antiAlias,
                    child:  Container(
                        height: 155.0,
                        width: 155.0,
                        color: Colors.white,
                        child: Center(child: Text('数据表'),)
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(7.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => StepperPage()));
                  },
                  child:Card(
                    //设置阴影
                    elevation: 20.0,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    //Clip.antiAlias 指抗锯齿
                    clipBehavior: Clip.antiAlias,
                    child:  Container(
                        height: 155.0,
                        width: 155.0,
                        color: Colors.white,
                        child: Center(child: Text('Stepper'),)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => PlaceholderPage()));
                  },
                  child:Card(
                    //设置阴影
                    elevation: 20.0,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    //Clip.antiAlias 指抗锯齿
                    clipBehavior: Clip.antiAlias,
                    child:  Container(
                        height: 155.0,
                        width: 155.0,
                        color: Colors.white,
                        child: Center(child: Text('占位控件'),)
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(7.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => PageBreakPage()));
                  },
                  child:Card(
                    //设置阴影
                    elevation: 20.0,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    //Clip.antiAlias 指抗锯齿
                    clipBehavior: Clip.antiAlias,
                    child:  Container(
                        height: 155.0,
                        width: 155.0,
                        color: Colors.white,
                        child: Center(child: Text('分页符'),)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => PickerPage()));
                  },
                  child:Card(
                    //设置阴影
                    elevation: 20.0,
                    //设置圆角
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    //Clip.antiAlias 指抗锯齿
                    clipBehavior: Clip.antiAlias,
                    child:  Container(
                        height: 155.0,
                        width: 155.0,
                        color: Colors.white,
                        child: Center(child: Text('选择器'),)
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}