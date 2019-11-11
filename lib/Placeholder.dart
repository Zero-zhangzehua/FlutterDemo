import 'package:flutter/material.dart';

class PlaceholderPage extends StatefulWidget{
  _PlaceholderPageState createState() => _PlaceholderPageState();
}

class _PlaceholderPageState extends State<PlaceholderPage> {
  @override

  //进度条的值
  double _value1 = 20;

  //占位控件的初始值
  double _height = 240.0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('占位控件' , style: TextStyle(fontSize: 17.0)),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30.0),
            ),
            Slider(
              activeColor: Colors.green,
              inactiveColor: Colors.black12,
              value: _value1,
              min: 0.0,
              max: 100.0,
              onChanged: (newValue){
                setState(() {
                  _value1 = newValue;
                  _height = _value1 * 2 + 200.0;
                });
              },
              divisions: 5,
              label:'$_height',
            ),
            Container(
              padding: EdgeInsets.all(20.0),
            ),
            Placeholder(
              color: Colors.yellow,
              strokeWidth: 5,
              fallbackHeight: _height,
              fallbackWidth: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}