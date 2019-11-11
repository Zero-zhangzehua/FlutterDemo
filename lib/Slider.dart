import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage>{

  //滑动条的初始值
  double _value1 = 50;
  double _value2 = 25;
  double _value3 = 50;
  double _value4 = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('滑动条', style: TextStyle(fontSize: 17.0)),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
            ),
            Slider(
              activeColor: Colors.green,
              inactiveColor: Colors.black12,
              value: _value1,
              min: 0.0,
              max: 100.0,
              onChanged: (double newValue){
                setState(() {
                  _value1 = newValue;
                });
              },
            ),
            Container(
              padding: EdgeInsets.all(20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('小号' , style: TextStyle(fontSize: 15.0)),
                Text('默认' , style: TextStyle(fontSize: 15.0)),
                Text('中号' , style: TextStyle(fontSize: 15.0)),
                Text('大号' , style: TextStyle(fontSize: 15.0)),
                Text('超大' , style: TextStyle(fontSize: 15.0)),
              ],
            ),
            Slider(
              activeColor: Colors.green,
              inactiveColor: Colors.black12,
              value: _value2,
              min: 0.0,
              max: 100.0,
              divisions: 4,
              onChanged: (double newValue){
                setState(() {
                  _value2 = newValue;
                });
              },
            ),
            Container(
              padding: EdgeInsets.all(20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('偏冷' , style: TextStyle(fontSize: 15.0)),
                Text('默认' , style: TextStyle(fontSize: 15.0)),
                Text('偏暖' , style: TextStyle(fontSize: 15.0)),
              ],
            ),
            Slider(
              activeColor: Colors.green,
              inactiveColor: Colors.black12,
              value: _value3,
              min: 0.0,
              max: 100.0,
              onChanged: (double newValue){
                setState(() {
                  _value3 = newValue;
                });
              },
            ),
            Container(
              padding: EdgeInsets.all(25.0),
            ),
            Slider(
              activeColor: Colors.green,
              inactiveColor: Colors.black12,
              value: _value4,
              min: 0.0,
              max: 100.0,
              onChanged: (newValue){
                setState(() {
                  _value4 = newValue;
                });
              },
              onChangeStart: (startValue){
                print('onChangeStart:$startValue');
              },
              onChangeEnd: (endValue){
                print('onChangeEnd:$endValue');
              },
              label:'$_value4 complete',
              divisions: 4,
            ),
          ],
        ),
      ),
    );
  }
}