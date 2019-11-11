import 'package:flutter/material.dart';

class TooltipPage extends StatefulWidget {
  _TooltipPageState createState() => _TooltipPageState();
}

class _TooltipPageState extends State<TooltipPage>{
  final _textStyleAssetFont = const TextStyle(letterSpacing: 3.0 , fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip' , style: TextStyle(fontSize: 17.0))),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(40.0),
              child: Center(child: Text('长按图标弹出提示' , style: _textStyleAssetFont)),
            ),
            Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Tooltip(
                    message: "设置",
                    child: Icon(Icons.settings,),
                  ),
                  Tooltip(
                    message: "拍照",
                    child: Icon(Icons.add_a_photo,),
                  ),
                  Tooltip(
                    message: "闹钟",
                    child: Icon(Icons.alarm,),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(40.0)
            ),
            Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Tooltip(
                    message: "飞行模式",
                    child: Icon(Icons.airplanemode_inactive,),
                  ),
                  Tooltip(
                    message: "打电话",
                    child: Icon(Icons.add_call,),
                  ),
                  Tooltip(
                    message: "音量变化",
                    child: Icon(Icons.volume_up,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}