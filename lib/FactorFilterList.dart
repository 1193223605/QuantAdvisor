import 'package:flutter/material.dart';

class FactorFilterList extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Column(children: <Widget>[
        new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                new Expanded(
                    flex:2,
                    child: new Text('因子',
                        textAlign: TextAlign.center),
                  ),
                  
                  new Expanded(
                    flex:2,
                    child: new Text('分位数筛选',
                        textAlign: TextAlign.center),
                  ),

                  new Expanded(
                    flex:1,
                    child: new Text('操作',
                        textAlign: TextAlign.center),

                  ),
            ],
          ),
        //new Divider(),

        new Flexible(
            child: new FactorFilterList1(),
        )
        

      ],
      );
  }
}

class FactorFilterList1 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return new ListView(
         //itemExtent: 25.0, 
         
         children: <Widget>[
           
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Expanded(
                  flex:2,
                  child: new Text('20日涨跌幅'),
                ),
                
                new Expanded(
                  flex:2,
                  child: Row(
                    children:<Widget>[
                      
                      new Expanded(
                        child: new Text('大于等于'),
                      ),

                      new Expanded(
                        child: new TextField(),
                      ),

                      new Expanded(
                        child: new Text('小于等于'),
                      ),

                      new Expanded(
                        child: new TextField(),
                      ),

                    ] 
                  ),
                ),

                new Expanded(
                  flex:1,
                  child: Row(
                    children:<Widget>[
                      
                      new Expanded(
                        child: new IconButton(
                          onPressed: () {},
                          icon: new Icon(Icons.delete),
                          tooltip: '删除',
                        ),
                      ),

                      new Expanded(
                        child: new IconButton(
                          onPressed: () {},
                          icon: new Icon(Icons.add_box),
                          tooltip: '添加',
                        ),
                      ),

                    ] 
                  ),
                ),

          ],
        ),

         ],
         
      );
  }
}