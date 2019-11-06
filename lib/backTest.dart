import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BackTest extends StatefulWidget
{
  @override
  _BackTestState createState() => _BackTestState();
}

class _BackTestState extends State<BackTest>
{
  var m_startDate = "-";
  var m_endDate = "-";

   @override
  Widget build(BuildContext context)
  {
  return Flex(
       direction: Axis.vertical,
       children: <Widget>[
         new Row(
           
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           
           children: <Widget>[
                new Expanded(
                  flex:2,
                  child: 
                  new GestureDetector(
                         child: Text(
                            '开始日期:$m_startDate',
                            style: TextStyle(fontSize: 13),),
                    
                    onTap: () {
                        // 调用函数打开
                        showDatePicker(
                            context: context,
                            initialDate: new DateTime.now(),
                            firstDate: new DateTime.now().subtract(new Duration(days: 6000)), // 减 30 天
                            lastDate: new DateTime.now().add(new Duration(days: 30)),       // 加 30 天
                        ).then((DateTime val) {
                            print(val);   // 2018-07-12 00:00:00.000

                            setState(() {

                              m_startDate = new DateFormat("yyyy-MM-dd").format(val);
                            });
                            
                        }).catchError((err) {
                            print(err);
                        });
                    },
                  ),
                ),
                
              new Expanded(
                  flex:2,
                  child: 
                  new GestureDetector(
                    child: new Text(
                          '结束日期:$m_endDate'
                        ),
                    onTap: () {
                        // 调用函数打开
                        showDatePicker(
                            context: context,
                            initialDate: new DateTime.now(),
                            firstDate: new DateTime.now().subtract(new Duration(days: 6000)), // 减 30 天
                            lastDate: new DateTime.now().add(new Duration(days: 30)),       // 加 30 天
                        ).then((DateTime val) {
                            print(val);   // 2018-07-12 00:00:00.000

                            setState(() {

                              m_endDate = new DateFormat("yyyy-MM-dd").format(val);
                            });
                            
                        }).catchError((err) {
                            print(err);
                        });
                    },
                  ),
                ),
                
                new Expanded(
                  flex:1,
                  child: new RaisedButton(
                    padding: EdgeInsets.all(10),
                        onPressed: () {},
                      child: const Text(
                        '开始回测',
                        style: TextStyle(fontSize: 13)
                      ),
                        ), 
                ),
                
           ]
         ),

        new Row(
          children: <Widget>[
              new Text('股票多头 几何年化收益=25.8%,最大回撤=16.2%'),
          ]
        ),

        new Row(
          children: <Widget>[
              new Text('夏普比=0.582,平均调仓换手率=62.4%'),
          ]
        ),

        

       ]
    );
  }
}

