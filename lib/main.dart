import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'newStrategy.dart';
import 'StrategyInfoPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '我的策略'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new StrategyList(),

      bottomNavigationBar: BottomNavigationBar( // 底部导航
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.add_to_home_screen), 
                title: Text('新建策略'),
                ),
              BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), title: Text('退出')),
            ],
            onTap:  (index) {
              if (index == 0)
              {
                Navigator.push(
                  context,
                  //new MaterialPageRoute(builder: (context) => new TabControllerPage()),
                  new MaterialPageRoute(builder: (context) => new TabControllerPage())
                  );
              }
            },
          ),

    );
  }
}

class StrategyList extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    
          return new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new ListTile(
              leading: Icon(Icons.launch),
              title: Text('高分红'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: ()
              {
                 //显示当前策略信息
                  Navigator.push(
                  context,
                  //new MaterialPageRoute(builder: (context) => new TabControllerPage()),
                  new MaterialPageRoute(builder: (context) => new StrategyInfoPage())
                  );
              },
            ),
            new Divider(),
            new ListTile(
              leading: Icon(Icons.launch),
              title: Text('低估值'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            new Divider(),
            new ListTile(
              leading: Icon(Icons.launch),
              title: Text('黄金底'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            new Divider(),
            new ListTile(
              leading: Icon(Icons.launch),
              title: Text('大消费'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            new Divider(),
            new ListTile(
              leading: Icon(Icons.launch),
              title: Text('大基建'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            new Divider(),

          ],
        );
        
  }
}

