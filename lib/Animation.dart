import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget{
  _AnimationPageState createState() => _AnimationPageState();
}


class _AnimationPageState extends State<AnimationPage> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  CurvedAnimation curve;
  bool isForward = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);
    animation.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('动画' , style: TextStyle(fontSize: 17.0)),
        ),
        body: Stack(children: <Widget>[
          ListView(children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(children: <Widget>[
                  Expanded(
                      flex: 1, child: Center(child: Text('FadeTransition'))),
                  Expanded(
                      flex: 1, child: Center(child: Text('ScaleTransition')))
                ])),
            Row(children: <Widget>[
              Expanded(
                  flex: 1,
                  child: FadeTransition(
                      opacity: animation, child: FlutterLogo(size: 100.0 , colors: Colors.green))),
              Expanded(
                  flex: 1,
                  child: ScaleTransition(
                      scale: animation, child: FlutterLogo(size: 100.0 , colors: Colors.green)))
            ]),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Center(child: Text('RotationTransition'))),
                  Expanded(
                      flex: 1, child: Center(child: Text('OpacityTransition')))
                ])),
            Row(children: <Widget>[
              Expanded(
                  flex: 1,
                  child: RotationTransition(
                      turns: animation, child: FlutterLogo(size: 100.0 , colors: Colors.green))),
              Expanded(
                  flex: 1,
                  child: AnimatedOpacity(
                      opacity: animation.value,
                      duration: Duration(milliseconds: 2000),
                      child: FlutterLogo(size: 100.0 , colors: Colors.green)))
            ]),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Center(child: Text('Transform.translate'))),
                  Expanded(
                      flex: 1, child: Center(child: Text('Transform.rotate')))
                ])),
            Row(children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Transform.translate(
                      offset: Offset(100.0 * curve.value, 0.0),
                      child: FlutterLogo(size: 100.0 , colors: Colors.green))),
              Expanded(
                  flex: 1,
                  child: Transform.rotate(
                      angle: curve.value * pi, child: FlutterLogo(size: 100.0 , colors: Colors.green)))
            ]),
          ]),
        ]),
        floatingActionButton: new FloatingActionButton(
            tooltip: 'Animation',
            backgroundColor: Colors.green,
            child: new Icon(Icons.lightbulb_outline),
            onPressed: () {
              isForward ? controller.reverse() : controller.forward();
              isForward = !isForward;
            }));
  }
}