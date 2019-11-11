import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PageBreakPage extends StatefulWidget{
  _PageBreakPageState createState() => _PageBreakPageState();
}

class _PageBreakPageState extends State<PageBreakPage> {

  //图片列表
  List swiperDateList1 = [
    'images/oppo1.jpg',
    'images/oppo2.jpg',
    'images/oppo3.jpg',
  ];

  //图片列表
  List swiperDateList2 = [
    'images/oppo6.png',
    'images/oppo4.jpg',
    'images/oppo5.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('分页符', style: TextStyle(fontSize: 17.0),),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 200,
            child: Swiper(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index){
                  return Image.asset('${swiperDateList1[index]}');
                },
                pagination: new SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.black12,
                      activeColor: Colors.green,
                      size: 6.0,
                      activeSize: 6.0,
                    )),
                scrollDirection: Axis.horizontal,
                autoplay: false,
                onTap: (index) => print('点击了第$index个')),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
          ),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 200,
            child: Swiper(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index){
                  return Image.asset('${swiperDateList2[index]}');
                },
                pagination: new SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.black12,
                      activeColor: Colors.green,
                      size: 6.0,
                      activeSize: 6.0,
                    )),
                scrollDirection: Axis.horizontal,
                autoplay: false,
                onTap: (index) => print('点击了第$index个')),
          ),
        ],
      )
    );
  }
}