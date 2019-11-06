import 'package:flutter/material.dart';

import 'StrategyBasic.dart';
import 'FactorList.dart';
import 'FactorFilterList.dart';



///通过TabController 定义TabBar

class TabControllerPage extends StatefulWidget {
  @override
  _TabControllerPageState createState() => _TabControllerPageState();
}

class _TabControllerPageState extends State<TabControllerPage> with SingleTickerProviderStateMixin{

  TabController m_tabController;

  @override
  void initState() {
    //print('初始化 数据...');
    m_tabController = new TabController(
        vsync: this,//固定写法
        length: 3   //指定tab长度
    );
    //添加监听
    m_tabController.addListener((){
      var index = m_tabController.index;
      var previousIndex = m_tabController.previousIndex;
      print("index: $index");
      print('previousIndex: $previousIndex');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text('新建策略'),
            bottom: TabBar(
              controller: m_tabController,
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 16.0,),
              tabs: <Widget>[
                Tab(text: '基本设置',),
                Tab(text: '打分设置',),
                Tab(text: '筛选设置',),
              ],
            ),
          ),

        body: new TabBarView_StrategyBasic(m_tabController),

        bottomNavigationBar: BottomNavigationBar( // 底部导航
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.save), title: Text('保存并退出')),
              BottomNavigationBarItem(icon: Icon(Icons.cancel), title: Text('放弃新建')),
            ],
          ),
        ),
      );
  }
}

class TabBarView_StrategyBasic extends StatelessWidget
{
  TabController m_tabController;

  TabBarView_StrategyBasic(TabController tabControl)
  {
    m_tabController = tabControl;
  }

  @override
  Widget build(BuildContext context)
  {
    return new TabBarView(
            controller: m_tabController,
            children: <Widget>[
              Container(
                color: Color(0xffffffff),
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(20),
                child: new StrategyBasic(),
              ),
              Container(
                color: Color(0xffffffff),
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(20),
                child: new FactorList(),
              ),
              Container(
                color: Color(0xffffffff),
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(20),
                child: new FactorFilterList(),
              ),
              
            ],
          );
  }
}
