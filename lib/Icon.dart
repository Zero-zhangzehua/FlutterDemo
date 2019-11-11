import 'package:flutter/material.dart';

class IconPage extends StatefulWidget{
  _IconPageState createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图标' , style: TextStyle(fontSize: 17.0),),
      ),
      body: Column(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(30.0)
          ),
          Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.print , size: 25.0),
                  Icon(Icons.airplay , size: 25.0),
                  Icon(Icons.person , size: 25.0),
                  Icon(Icons.volume_up , size: 25.0),
                  Icon(Icons.add_call , size: 25.0),
                  Icon(Icons.check_circle , size : 25.0),
                ],
              ),
          ),
          Container(
              padding: const EdgeInsets.all(30.0)
          ),
          Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.remove_red_eye , size: 25.0),
                  Icon(Icons.add_a_photo , size: 25.0),
                  Icon(Icons.leak_add , size: 25.0),
                  Icon(Icons.add_alarm , size: 25.0),
                  Icon(Icons.add_location , size: 25.0),
                  Icon(Icons.add_to_home_screen , size : 25.0),
                ],
              )
          ),
          Container(
              padding: const EdgeInsets.all(30.0)
          ),
          Container(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.apps , size: 25.0),
                  Icon(Icons.ac_unit , size: 25.0),
                  Icon(Icons.list , size: 25.0),
                  Icon(Icons.access_time , size: 25.0),
                  Icon(Icons.adb , size: 25.0),
                  Icon(Icons.airplanemode_active , size : 25.0),
                ],
              )
          ),
        ],
      ),
    );
  }
}