import 'package:flutter/material.dart';

//可搜索的内容
const _searchList = [
  '中国',
  '朝鲜',
  '越南',
  '老挝',
  '泰国',
  '缅甸',
  '柬埔寨',
  '荷兰',
  '美国',
  '英国',
  '法国',
  '德国',
  '韩国',
  '葡萄牙',
  '西班牙',
  '匈牙利',
  '俄罗斯',
  '日本',
  '新加坡',
  '巴西',
  '加拿大',
  '澳大利亚'
];

//建议的内容
const _recentSuggest = [
  '中国',
  '美国',
  '英国',
  '法国'
];

class SearchLogoPage extends StatefulWidget{
  _SearchLogoPageState createState() => _SearchLogoPageState();
}

class _SearchLogoPageState extends State<SearchLogoPage>{


  ScrollController _controller;

  //设置字体
  final _titleFont = const TextStyle(fontSize: 17.0);

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
      automaticallyImplyLeading: false,
      centerTitle: true, //标题是否居中
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed:(){
            showSearch(context: context, delegate: SearchBar());
          },
        )
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
        title: Text("搜索图标" , style: _titleFont,),
        centerTitle: false,
        titlePadding: EdgeInsets.all(15.0),
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
              title: Text('中国'),
              onTap: (){},
            ),
            ListTile(
              title: Text('朝鲜'),
              onTap: (){},
            ),
            ListTile(
              title: Text('越南'),
              onTap: (){},
            ),
            ListTile(
              title: Text('老挝'),
              onTap: (){},
            ),
            ListTile(
              title: Text('泰国'),
              onTap: (){},
            ),
            ListTile(
              title: Text('缅甸'),
              onTap: (){},
            ),
            ListTile(
              title: Text('柬埔寨'),
              onTap: (){},
            ),
            ListTile(
              title: Text('荷兰'),
              onTap: (){},
            ),
            ListTile(
              title: Text('美国'),
              onTap: (){},
            ),
            ListTile(
              title: Text('英国'),
              onTap: (){},
            ),
            ListTile(
              title: Text('法国'),
              onTap: (){},
            ),
            ListTile(
              title: Text('德国'),
              onTap: (){},
            ),
            ListTile(
              title: Text('韩国'),
              onTap: (){},
            ),
            ListTile(
              title: Text('葡萄牙'),
              onTap: (){},
            ),
            ListTile(
              title: Text('西班牙'),
              onTap: (){},
            ),
            ListTile(
              title: Text('匈牙利'),
              onTap: (){},
            ),
            ListTile(
              title: Text('俄罗斯'),
              onTap: (){},
            ),
            ListTile(
              title: Text('日本'),
              onTap: (){},
            ),
            ListTile(
              title: Text('新加坡'),
              onTap: (){},
            ),
            ListTile(
              title: Text('巴西'),
              onTap: (){},
            ),
            ListTile(
              title: Text('加拿大'),
              onTap: (){},
            ),
            ListTile(
              title: Text('澳大利亚'),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }

}

class SearchBar extends SearchDelegate<String>{

  //这个方法返回控件列表
  @override
  List<Widget>buildActions(BuildContext context){
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "",//搜索值为空
      )
    ];
  }

  //这个方法返回一个控件，显示为搜索框左侧的按钮，一般设置为返回
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation
        ),
        onPressed: () => close(context, null)  //点击时关闭整个搜索页面
    );
  }

  //这个方法返回一个控件，显示为搜索内容区域的搜索结果内容。
  @override
  Widget buildResults(BuildContext context) {
    return ListTile(
      title: Text(query),
      onTap: (){},
    );
  }

  //这个方法返回一个控件，显示为搜索内容区域的建议内容
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionsList= query.isEmpty
        ? _recentSuggest
        : _searchList.where((input)=> input.startsWith(query)).toList();


    return ListView.builder(
      itemCount:suggestionsList.length,
      itemBuilder: (context,index) => ListTile(
        title: RichText( //富文本
          text: TextSpan(
              text: suggestionsList[index].substring(0 , query.length),
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionsList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey)
                )
              ]
          ),
        ),
      ),
    );
  }
}


