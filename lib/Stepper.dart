import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage>{

  //当前的步骤
  int _currentStepIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper' , style: TextStyle(fontSize: 17.0)),
      ),
      body: Stepper(
        currentStep: _currentStepIndex,
        //上一步
        onStepCancel: (){
          setState(() {
            if (_currentStepIndex > 0) {
              _currentStepIndex --;
            }
          });
        },
        //下一步
        onStepContinue: (){
          setState(() {
            if(_currentStepIndex < 5){
              _currentStepIndex ++;
            }
          });
        },

        //展开时候的内容，可自定义按钮
        controlsBuilder: (BuildContext context,{VoidCallback onStepContinue , VoidCallback onStepCancel}){
          return Row(
            children: <Widget>[
              FlatButton(
                child: Text('下一步'),
                onPressed: onStepContinue,
              ),
              FlatButton(
                child: Text('上一步'),
                onPressed: onStepCancel,
              )
            ],
          );
        },
        steps: <Step>[
          Step(
            title: Text('标题一'),
            content: Text('我是内容一'),
            subtitle: Text('副标题一'),
          ),
          Step(
            title: Text('标题二'),
            content: Text('我是内容二'),
            subtitle: Text('副标题二'),
          ),
          Step(
            title: Text('标题三'),

            content: Text('我是内容三'),
            subtitle: Text('副标题三'),
          ),
          Step(
            title: Text('标题四'),
            content: Text('我是内容四'),
            subtitle: Text('副标题四'),
          ),
          Step(
            title: Text('标题五'),
            content: Text('我是内容五'),
            subtitle: Text('副标题五'),
          ),
          Step(
            title: Text('标题六'),
            content: Text('我是内容六'),
            subtitle: Text('副标题六'),
          ),
        ],
      ),
    );
  }
}