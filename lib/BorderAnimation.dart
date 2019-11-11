import 'package:flutter/material.dart';

class BorderAnimationPage extends StatefulWidget{
  _BorderAnimationPageState createState() => _BorderAnimationPageState();
}


class _BorderAnimationPageState extends State<BorderAnimationPage> with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation, borderAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      }
      if (status == AnimationStatus.dismissed) {
        Navigator.pop(context);
      }
    });

    animation = Tween(begin: 50.0, end: 200.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.ease,
      ),
    );

    borderAnimation = BorderRadiusTween(
      begin: BorderRadius.circular(75.0),
      end: BorderRadius.circular(0.0),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.ease,
    ));

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('转换动画' , style: TextStyle(fontSize: 17.0))),
      body: AnimatedBuilder(animation: controller, builder: (context, child) {
        return Center(
          child: Container(
            width: animation.value,
            height: animation.value,
            decoration: BoxDecoration(
              borderRadius: borderAnimation.value,
              color: Colors.green,
            ),
          ),
        );
      }),
    );
  }
}