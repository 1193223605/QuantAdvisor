import 'package:flutter/material.dart';
import 'dropdownBtn.dart';
import 'checkBoxList.dart';

//显示策略基本信息的部件
class StrategyBasic extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Flex(
       direction: Axis.vertical,
       children: <Widget>[
         new Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
                new Expanded(
                  flex:1,
                  child: new Text('策略名称'),
                ),
                
                new Expanded(
                  flex:5,
                  child: new TextField(
                        decoration: InputDecoration(),
                        ), 
                ),
                
           ]
         ),
         
         //new Divider(),

         new Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
                new Expanded(
                  flex:1,
                  child: new Text('策略说明'),
                ),
                
                new Expanded(
                  flex:5,
                  child: new TextField(
                        decoration: InputDecoration(),
                        ), 
                ),
           ]
         ),

        //new Divider(),

        new Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
                new Expanded(
                  flex:1,
                  child: new Text('选股范围'),
                ),
                
                new Expanded(
                  flex:5,
                  child: new LearnDropdownButton(), 
                ),
           ]
         ),

         new Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
                new Expanded(
                  flex:1,
                  child: new Text('选股行业'),
                ),
                
                new Expanded(
                  flex:5,
                  child: new DemoPage(),
                ),
           ]
         ),

          new Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
                new Expanded(
                  flex:1,
                  child: new Text('选股个数'),
                ),
                
                new Expanded(
                  flex:5,
                  child: new TextField(
                        decoration: InputDecoration(),
                        ), 
                ),
           ]
         ),
          
          new Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
                new Expanded(
                  flex:1,
                  child: new Text('调仓天数'),
                ),
                
                new Expanded(
                  flex:5,
                  child: new TextField(
                        decoration: InputDecoration(),
                        ), 
                ),
           ]
         ),

       ], 
    );
  }
}

