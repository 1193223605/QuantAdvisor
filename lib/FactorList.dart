import 'package:flutter/material.dart';

class FactorList extends StatelessWidget
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
                    flex:1,
                    child: new Text('方向',
                        textAlign: TextAlign.center),
                  ),

                  new Expanded(
                    flex:1,
                    child: new Text('权重',
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
            child: new FactorList1(),
        )
        

      ],
      );
  }
}

class FactorList1 extends StatelessWidget
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
                  child: new Text('流通市值'),
                ),
                
                new Expanded(
                  flex:1,
                  child: new Text('越大越好'),
                ),

                new Expanded(
                  flex:1,
                  child: new Text('50',
                        textAlign: TextAlign.center),

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


          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Expanded(
                  flex:2,
                  child: new Text('180日涨跌幅'),
                ),
                
                new Expanded(
                  flex:1,
                  child: new Text('越大越好'),
                ),

                new Expanded(
                  flex:1,
                  child: new Text('30',
                        textAlign: TextAlign.center),

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

          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Expanded(
                  flex:2,
                  child: new Text('60日涨跌幅'),
                ),
                
                new Expanded(
                  flex:1,
                  child: new Text('越大越好'),
                ),

                new Expanded(
                  flex:1,
                  child: new Text('30',
                        textAlign: TextAlign.center),

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


        new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Expanded(
                  flex:2,
                  child: new Text('20日成交额'),
                ),
                
                new Expanded(
                  flex:1,
                  child: new Text('越大越好'),
                ),

                new Expanded(
                  flex:1,
                  child: new Text('35',
                        textAlign: TextAlign.center),

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

          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Expanded(
                  flex:2,
                  child: new Text('非流动性'),
                ),
                
                new Expanded(
                  flex:1,
                  child: new Text('越小越好'),
                ),

                new Expanded(
                  flex:1,
                  child: new Text('15',
                        textAlign: TextAlign.center),

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