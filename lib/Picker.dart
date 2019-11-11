import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickerPage extends StatefulWidget{
  _PickerPageState createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('选择器' , style: TextStyle(fontSize: 17.0)),
      ),
      body:Column(
        children: <Widget>[
          ListTile(
            title: Text('FlutterTimePicker'),
            onTap: _showTimePicker,
          ),
          ListTile(
            title: Text('FlutterDatePicker'),
            onTap: _showDatePicker,
          ),
          ListTile(
            title: Text('IOSPicker'),
            onTap: _showIOSPicker,
          ),
          ListTile(
            title: Text('IOSTimePicker'),
            onTap: _showIOSTimePicker,
          ),
        ],
      )
    );
  }

  _showDatePicker() async{
    Locale mLocale = Localizations.localeOf(context);
    var picker = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2016),
      lastDate: DateTime(2020),
      locale: mLocale);
  }

  _showTimePicker() async{
    var picker = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()
    );
  }

  _showIOSPicker() {
    final _picker = CupertinoPicker(
      backgroundColor: Colors.white,
      itemExtent: 30,//子控件的均匀高度
      onSelectedItemChanged: (int position){
        print('$position');
      },
      children: <Widget>[
        Text('1'),
        Text('2'),
        Text('3'),
        Text('4'),
        Text('5'),
        Text('6'),
        Text('7'),
        Text('8'),
        Text('9'),
        Text('10'),
      ],
    );
    showCupertinoModalPopup(context: context, builder: (BuildContext context){
      return Container(
        height: 200,
        child: _picker,
      );
    });
  }

  _showIOSTimePicker() {
    final _datepicker =CupertinoDatePicker(onDateTimeChanged: (date){
      print("the date is ${date.toString()}");
    },
      initialDateTime: DateTime(1995),
      use24hFormat: true,
      mode: CupertinoDatePickerMode.dateAndTime,
    );

    showCupertinoModalPopup(context: context, builder: (BuildContext context){
      return Container(
        height: 200,
        child: _datepicker,
      );
    });
  }

}