import 'package:flutter/material.dart';
import 'package:flutter_demo/About.dart';
import 'package:flutter_demo/Animation.dart';
import 'package:flutter_demo/BorderAnimation.dart';
import 'package:flutter_demo/BottomNavigationBar.dart';
import 'package:flutter_demo/BottomTabBar.dart';
import 'package:flutter_demo/CenterSheet.dart';
import 'package:flutter_demo/DynamicWord.dart';
import 'package:flutter_demo/StaticWord.dart';
import 'package:flutter_demo/DoubleTabBar.dart';
import 'package:flutter_demo/FirstTitlePage.dart';
import 'package:flutter_demo/Icon.dart';
import 'package:flutter_demo/List.dart';
import 'package:flutter_demo/ListViewExpaned.dart';
import 'package:flutter_demo/Loading.dart';
import 'package:flutter_demo/MIddleTabBar.dart';
import 'package:flutter_demo/Menu.dart';
import 'package:flutter_demo/Refresh.dart';
import 'package:flutter_demo/SearchBar.dart';
import 'package:flutter_demo/SearchLogo.dart';
import 'package:flutter_demo/SecondTitlePage.dart';
import 'package:flutter_demo/SingleTabBar.dart';
import 'package:flutter_demo/SnackBar.dart';
import 'package:flutter_demo/Tooltip.dart';
import 'package:flutter_demo/Drawer.dart';
import 'package:flutter_demo/TextField.dart';
import 'package:flutter_demo/BottomSheet.dart';
import 'package:flutter_demo/WidgetList.dart';
import 'package:flutter_demo/Widgets.dart';

import 'LateAnimation.dart';

class Home extends StatefulWidget{
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  //控制器
  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    //初始化
    _controller = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: _controller,
        slivers: <Widget>[
          _buildSliverAppbar(),
          _buildList()
        ],
      ),
    );
  }

  Widget _buildSliverAppbar(){
    return SliverAppBar(
      /**
       * 如果没有leading，automaticallyImplyLeading为true，就会默认返回箭头
       * 如果 没有leading 且为false，空间留给title
       * 如果有leading，这个参数就无效了
       */
      automaticallyImplyLeading: true,
      centerTitle: true, //标题是否居中
      actions: [
        PopupMenuButton(
          icon: Icon(Icons.more_vert),
          offset: Offset(100 , 100),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: "1",
              child: ListTile(
                title: Text('分享'),
              ),
            ),
            PopupMenuDivider(), //分割线
            const PopupMenuItem<String>(
              value: "2",
              child: ListTile(
                title: Text('设置'),
              ),
            ),
          ],
          onSelected: (String result){
            setState(() {});
          },
          onCanceled: (){},
        ),
      ], //右侧的内容和点击事件
      elevation: 4, //阴影的高度
      forceElevated: false, //是否显示阴影
      backgroundColor: Colors.white, //背景颜色
      brightness: Brightness.dark, //黑底白字，lignt 白底黑字
      iconTheme: IconThemeData(
          color: Colors.green,
          size: 30,
          opacity: 1), //所有的icon的样式,不仅仅是左侧的，右侧的也会改变
      textTheme: TextTheme(), //字体样式
      primary: true, // appbar是否显示在屏幕的最上面，为false是显示在最上面，为true就显示在状态栏的下面
      titleSpacing: 0, //标题两边的空白区域
      expandedHeight: 100.0, //默认高度是状态栏和导航栏的高度，如果有滚动视差的话，要大于前两者的高度
      floating: false, //滑动到最上面，再滑动是否隐藏导航栏的文字和标题等的具体内容，为true是隐藏，为false是不隐藏
      pinned: true, //是否固定导航栏，为true是固定，为false是不固定，往上滑，导航栏可以隐藏
      snap: false, //只跟floating相对应，如果为true，floating必须为true，也就是向下滑动一点儿，整个大背景就会动画显示全部，网上滑动整个导航栏的内容就会消失
      flexibleSpace: FlexibleSpaceBar(
        title: Text("FlutterDemo" , style: TextStyle(fontSize: 17.0),),
        centerTitle: false,
        titlePadding: EdgeInsets.all(18.0),
        collapseMode: CollapseMode.pin,
      ),
    );
  }

  Widget _buildList(){
    return new SliverPadding(
      padding: const EdgeInsets.all(10.0),
      sliver: new SliverList(
        delegate: new SliverChildListDelegate(
          <Widget>[
            ListTile(
              leading: (
                Icon(Icons.hd , color: Colors.red,)
              ),
              title: Text('图标'),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => IconPage()));
              },
            ),
            ExpansionTile(
              title: Text('文本'),
              leading: Icon(Icons.title , color: Colors.blue,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('静态排版'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => StaticWordPage()));
                  },
                ),
                ListTile(
                  title: Text('动态排版'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => DynamicWordPage()));
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('标题栏'),
              leading: Icon(Icons.format_list_bulleted , color: Colors.green),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('一级标题'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => FirsTitlePage()));
                  },
                ),
                ListTile(
                  title: Text('次级标题'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => SecondTitlePage()));
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('Tab栏'),
              leading: Icon(Icons.add_to_photos , color: Colors.tealAccent,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('一级Tab'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => SingleTabBarPage()));
                  },
                ),
                ListTile(
                  title: Text('二级Tab'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => DoubleTabBarPage()));
                  },
                ),
                ListTile(
                  title: Text('页面中部Tab'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => MiddleTabBarPage()));
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('底部栏'),
              leading: Icon(Icons.assignment , color: Colors.blue,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('标签栏'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => BottomNavigationBarPage()));
                  },
                ),
                ListTile(
                  title: Text('工具栏'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => BottomTabbarPage()));
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('搜索栏'),
              leading: Icon(Icons.search , color: Colors.deepOrange,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('搜索图标'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => SearchLogoPage()));
                  },
                ),
                ListTile(
                  title: Text('标题栏下方搜索栏'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => SearchBarPage()));
                  },
                ),
              ],
            ),
            ListTile(
              leading: (
                  Icon(Icons.menu , color: Colors.yellow,)
              ),
              title: Text('菜单'),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => MenuPage()));
              },
            ),
            ExpansionTile(
              title: Text('列表'),
              leading: Icon(Icons.format_list_bulleted , color: Colors.deepPurple,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('列表'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => ListPage()));
                  },
                ),
                ListTile(
                  title: Text('列表控件组合'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => WidgetListPage()));
                  },
                ),
                ListTile(
                  title: Text('ListView展开收起'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => ListViewExpanedPage()));
                  },
                ),
              ],
            ),
            ListTile(
              leading: (
                  Icon(Icons.archive , color: Colors.lightGreen,)
              ),
              title: Text('控件'),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => WidgetsPage()));
              },
            ),
            ListTile(
              leading: (
                  Icon(Icons.blur_linear , color: Colors.deepOrange,)
              ),
              title: Text('抽屉'),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => DrawerPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.text_format , color: Colors.lightBlue,),
              title: Text('输入框'),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => TextFieldPage()));
              },
            ),
            ExpansionTile(
              title: Text('弹窗'),
              leading: Icon(Icons.rate_review , color: Colors.deepOrangeAccent,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('底部弹窗'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => BottomSheetPage()));
                  },
                ),
                ListTile(
                  title: Text('居中弹窗'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => CenterSheetPage()));
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('提示'),
              leading: Icon(Icons.message , color: Colors.indigoAccent,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('SnackBar'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => ToastPage()));
                  },
                ),
                ListTile(
                  title: Text('Tips'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => TooltipPage()));
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('加载'),
              leading: Icon(Icons.cloud_download , color: Colors.pinkAccent,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('Loading'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => LoadingPage()));
                  },
                ),
                ListTile(
                  title: Text('下拉刷新'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => RefreshPage()));
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text('动画'),
              leading: Icon(Icons.camera , color: Colors.green,),
              backgroundColor: Colors.white,
              children: <Widget>[
                ListTile(
                  title: Text('基本动画'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => AnimationPage()));
                  },
                ),
                ListTile(
                  title: Text('延迟动画'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => LateAnimationPage()));
                  },
                ),
                ListTile(
                  title: Text('转换动画'),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => BorderAnimationPage()));
                  },
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.more_horiz , color: Colors.grey,),
              title: Text('关于'),
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}


