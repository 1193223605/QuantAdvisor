import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  bool _value = false;

  //全选/全不选切换
  void _valueChanged(bool value) {
    for (var i = 0; i < isChecks.length; i++) {
      isChecks[i] = value;
    }
    setState(() {
      _value = value;
    });
  }

  bool isCheck = false;

  //列表是否选中值
  List<bool> isChecks = [false, false, false, false,false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      height: 250,  
      child : new SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: new Column(
      children: <Widget>[

          CheckboxListTile(
            value: isChecks[0],
            onChanged: (bool){
              setState(() {
                isChecks[0] = bool;
              });
            },
            title: Text('银行'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),
          
          CheckboxListTile(
            value: isChecks[1],
            onChanged: (bool){
              setState(() {
                isChecks[1] = bool;
              });
            },
            title: Text('房地产'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),
        
        CheckboxListTile(
            value: isChecks[2],
            onChanged: (bool){
              setState(() {
                isChecks[2] = bool;
              });
            },
            title: Text('医药生物'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),
        
        CheckboxListTile(
            value: isChecks[3],
            onChanged: (bool){
              setState(() {
                isChecks[3] = bool;
              });
            },
            title: Text('公用事业'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),

          CheckboxListTile(
            value: isChecks[3],
            onChanged: (bool){
              setState(() {
                isChecks[4] = bool;
              });
            },
            title: Text('公用事业2'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),

          CheckboxListTile(
            value: isChecks[3],
            onChanged: (bool){
              setState(() {
                isChecks[5] = bool;
              });
            },
            title: Text('公用事业3'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),

          CheckboxListTile(
            value: isChecks[3],
            onChanged: (bool){
              setState(() {
                isChecks[6] = bool;
              });
            },
            title: Text('公用事业4'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),

      ],
          //physics: BouncingScrollPhysics(),
       //new Center(
    //child: Column(
      //children: <Widget>[

/*
          CheckboxListTile(
            value: isChecks[0],
            onChanged: (bool){
              setState(() {
                isChecks[0] = bool;
              });
            },
            title: Text('银行'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),

          
          CheckboxListTile(
            value: isChecks[1],
            onChanged: (bool){
              setState(() {
                isChecks[1] = bool;
              });
            },
            title: Text('房地产'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),
        
        CheckboxListTile(
            value: isChecks[2],
            onChanged: (bool){
              setState(() {
                isChecks[2] = bool;
              });
            },
            title: Text('医药生物'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),
        
        CheckboxListTile(
            value: isChecks[3],
            onChanged: (bool){
              setState(() {
                isChecks[3] = bool;
              });
            },
            title: Text('公用事业'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),

          CheckboxListTile(
            value: isChecks[3],
            onChanged: (bool){
              setState(() {
                isChecks[3] = bool;
              });
            },
            title: Text('公用事业2'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),

          CheckboxListTile(
            value: isChecks[3],
            onChanged: (bool){
              setState(() {
                isChecks[3] = bool;
              });
            },
            title: Text('公用事业3'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),

          CheckboxListTile(
            value: isChecks[3],
            onChanged: (bool){
              setState(() {
                isChecks[3] = bool;
              });
            },
            title: Text('公用事业4'),
            controlAffinity: ListTileControlAffinity.platform,
            activeColor: _value ? Colors.red : Colors.green,
            dense: true,
          ),
          */

        //],
      //)
    //)
      ),
      ),
  );
  }
}


