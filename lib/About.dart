import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget{
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  //控制器
  ScrollController _controller;


  static const textContent1 =
      "BottomSheet是一个从屏幕底部滑起的列表（以显示更多的内容）。";
  static const textContent2 =
      "一个 Material Design 卡片。拥有一个圆角和阴影。";
  static const textContent3 =
      "标签，一个Material widget。 它可以将一个复杂内容实体展现在一个小块中，如联系人。";
  static const textContent4 =
      "数据表显示原始数据集，它们通常出现在桌面企业产品中，DataTable Widget实现这个组件。";
  static const textContent5 =
      "一个逻辑1像素厚的水平分割线，两边都有填充。";
  static const textContent6 =
      "扩展面板包含创建流，允许对元素进行轻量级编辑。expanpanel小部件实现这个组件。";
  static const textContent7 =
      "一个拥有绘制、定位、调整大小的 widget。";
  static const textContent8 =
      "一个绘制了一个盒子的的widget，代表日后有widget将会被添加到该盒子中。";
  static const textContent9 =
      "一个固定高度的行，通常包含一些文本，以及一个行前或行尾图标。";
  static const textContent10 =
      "具有可选操作的轻量级消息提示，在屏幕的底部显示。";
  static const textContent11 =
      "一个文本提示工具，帮助解释一个按钮或其他用户界面，当widget长时间按下时（当用户采取其他适当操作时）显示一个提示标签。";
  static const textContent12 =
      "一个Material Design 步骤指示器，显示一系列步骤的过程。";
  static const textContent13 =
      "一个圆形图标按钮，它悬停在内容之上，以展示应用程序中的主要动作。FloatingActionButton通常用于Scaffold.floatingActionButton字段。";
  static const textContent14 =
      "滑块，允许用户通过滑动滑块来从一系列值中选择。";
  static const textContent15 =
      "当菜单隐藏式，点击或调用onSelected时显示一个弹出式菜单列表。";
  static const textContent16 =
      "底部导航条，可以很容易地在tap之间切换和浏览顶级视图。";
  static const textContent17 =
      "一个方便的widget，它封装了应用程序实现Material Design所需要的一些widget。";
  static const textContent18 =
      "Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。";
  static const textContent19 =
      "一个Material Design应用程序栏，由工具栏和其他可能的widget（如TabBar）组成。";
  static const textContent20 =
      "实现了可滚动widget的交互模型，但不包含UI显示相关的逻辑。";
  static const textContent21 =
      "一个Material Design 滚动条，表示当前滚动到了什么位置。";
  static const textContent22 =
      "Material Design下拉刷新指示器，包装一个可滚动widget。";
  static const textContent23 =
      "一个使用slivers创建自定义的滚动效果的ScrollView。";


  //设置字体
  final _titleFont = const TextStyle(fontSize: 13.0 , color: Colors.grey);

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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('关于' , style: TextStyle(fontSize: 17.0)),
      ),
      body: CustomScrollView(
        controller: _controller,
        slivers: <Widget>[
          _buildList()
        ],
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
              title: Text('BottomSheet' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent1,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('Card' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent2,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('Chip' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent3,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('DataTable' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent4,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('Divider' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent5,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('ExpansionTile' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent6,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('Container' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent7,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('Placeholder' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent8,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('ListTile' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent9,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('SnackBar' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent10,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('Tooltip' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent11,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),ListTile(
              title: Text('Stepper' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
          ),
            ListTile(
              title: Text(
                textContent12,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('FloatingActionButton' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent13,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('Slider' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent14,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),ListTile(
              title: Text('PopupMenuButton' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
          ),
            ListTile(
              title: Text(
                textContent15,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('BottomNavigationBar' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent16,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('WidgetsApp' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent17,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('Scaffold' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent18,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('Appbar' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent19,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('Scrollable' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent20,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('Scrollbar' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent21,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('RefreshIndicator' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent22,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text('CustomScrollView' , style: _titleFont,),
              contentPadding: EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                textContent23,
                strutStyle: StrutStyle(forceStrutHeight: true, height: 2.0),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
          ],
        ),
      ),
    );
  }
}