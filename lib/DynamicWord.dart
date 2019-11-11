import 'package:flutter/material.dart';

class DynamicWordPage extends StatefulWidget{
  _DynamicWordPageState createState() => _DynamicWordPageState();
}

class _DynamicWordPageState extends State<DynamicWordPage> {

  //控制器
  ScrollController _controller;
  // 文本间距
  double textLineHeight = 2.0;
  //文本大小
  double fontSize = 15.0;

  String font = "15";
  String height = "2.0";

  static const textContent1 = "Flutter 1.9 发布";
  static const textContent2 =
      "Flutter 是 Google 开源的 UI 工具包，帮助开发者通过一套代码库高效构建多平台精美应用，支持移动、Web、桌面和嵌入式平台。";
  static const textContent3 =
      "随着 1.9 版本的发布，在 Web 平台运行 Flutter 的代码正式被合并到主 repo，但是 在 Web 平台的支持尚未达到 Beta 阶段，请不要用在生产环节。 Web 和即将到来的桌面端支持将会影响本站的内容，更多的更新将会在稍后时间发布。";


  //字号滑动条的初始值
  double _value1 = 0;
  double _value2 = 0;

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
        title: Text('动态排版' , style: TextStyle(fontSize: 17.0)),
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
            Container(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('字号' , style: TextStyle(fontSize: 15.0)),
                  Slider(
                    activeColor: Colors.green,
                    inactiveColor: Colors.black12,
                    value: _value1,
                    min: 0.0,
                    max: 100.0,
                    divisions: 3,
                    onChanged: (double newValue){
                      setState((){
                        _value1 = newValue;
                        fontSize = 15.0 + (_value1 / 33) * 2;
                        print(_value1);
                        font = fontSize.floor().toString();
                      });
                    },
                  ),
                  Text(
                    font,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('行距' , style: TextStyle(fontSize: 15.0)),
                  Slider(
                    activeColor: Colors.green,
                    inactiveColor: Colors.black12,
                    value: _value2,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (double newValue){
                      setState(() {
                        _value2 = newValue;
                        textLineHeight = _value2 * 0.05 + 2;
                        height = textLineHeight.ceilToDouble().toString();
                      });
                    },
                  ),
                  Text(
                    height,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5.0 , top: 25.0),
              child: Text(
                textContent1,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w900
                ),
                strutStyle: StrutStyle(
                    forceStrutHeight: true,
                    height: textLineHeight
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5.0 , top: 15.0),
              child: Text(
                textContent2,
                style: TextStyle(
                  fontSize: fontSize,
                ),
                strutStyle: StrutStyle(
                    forceStrutHeight: true,
                    height: textLineHeight
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5.0 , top: 15.0),
              child: Text(
                textContent3,
                style: TextStyle(
                  fontSize: fontSize,
                ),
                strutStyle: StrutStyle(
                    forceStrutHeight: true,
                    height: textLineHeight
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}