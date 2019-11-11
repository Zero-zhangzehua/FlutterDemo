import 'package:flutter/material.dart';

class ChipPage extends StatefulWidget{
  _ChipPageState createState() => _ChipPageState();
}

class _ChipPageState extends State<ChipPage> {

  //ChoiceChip是否被选中的标志
  bool _isChoiceSelected = false;

  //FilterChip是否被选中的标志
  bool _isFilterSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip' , style: TextStyle(fontSize: 17.0)),
      ),
      body: Center(
        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Input Chip:'),
                  InputChip(
                    avatar: CircleAvatar(
                      child: Icon(Icons.check_circle),
                    ),
                    label: Text('Input Chip'),
                    onPressed: (){
                      print('Input Chip');
                    },
                    onDeleted: (){},
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Choice Chip:'),
                  ChoiceChip(
                    label:Text('Choice Chip'),
                    selected: _isChoiceSelected,
                    onSelected: (isSelected){
                      setState(() {
                        _isChoiceSelected = isSelected;
                      });
                    },
                    selectedColor: Colors.green,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Action Chip:'),
                  Builder(
                    builder: (BuildContext context){
                      return Center(
                        child: ActionChip(
                          label: Text('Action Chip'),
                          onPressed: (){
                            setState(() {
                              Scaffold.of(context).showSnackBar(SnackBar(content: Text('ON TAP')));
                            });
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Filter Chip:'),
                  FilterChip(
                    label: Text('Filter Chip'),
                    selected: _isFilterSelected,
                    onSelected: (isSelected){
                      setState(() {
                        _isFilterSelected = isSelected;
                      });
                    },
                    selectedColor: Colors.green,
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