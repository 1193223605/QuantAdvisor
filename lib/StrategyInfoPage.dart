import 'package:flutter/material.dart';

import 'StrategyBasic.dart';
import 'FactorList.dart';
import 'FactorFilterList.dart';

import 'backTest.dart';


class StrategyInfoPage extends StatefulWidget {
  @override
  _StrategyInfoPageState createState() => _StrategyInfoPageState();
}

class _StrategyInfoPageState extends State<StrategyInfoPage> with SingleTickerProviderStateMixin
{

  TabController m_tabController;

  @override
  void initState() {
    //print('初始化 数据...');
    m_tabController = new TabController(
        vsync: this,//固定写法
        length: 5   //指定tab长度
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
            title: Text('策略详情'),
            bottom: TabBar(
              controller: m_tabController,
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 14.0,),
              tabs: <Widget>[
                Tab(text: '基本设置',),
                Tab(text: '打分设置',),
                Tab(text: '筛选设置',),
                Tab(text: '回测',),
                Tab(text: '选股交易',),
              ],
            ),
          ),

        body: new TabBarView_StrategyInfo2(m_tabController),

        bottomNavigationBar: BottomNavigationBar( // 底部导航
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.save), title: Text('保存')),
              BottomNavigationBarItem(icon: Icon(Icons.hotel), title: Text('返回')),
            ],
          ),
        ),
      );
  }
}

class TabBarView_StrategyInfo2 extends StatelessWidget
{
  TabController m_tabController;

  TabBarView_StrategyInfo2(TabController tabControl)
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
              
              Container(
                color: Color(0xffffffff),
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(20),
                child: new BackTest(),
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

