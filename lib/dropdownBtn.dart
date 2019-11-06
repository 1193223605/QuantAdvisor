import 'package:flutter/material.dart';

class LearnDropdownButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LearnDropdownButton();
  }
}
class _LearnDropdownButton extends State<LearnDropdownButton>{

  List<DropdownMenuItem> getListData(){
    List<DropdownMenuItem> items=new List();
    DropdownMenuItem dropdownMenuItem1=new DropdownMenuItem(
      child:new Text('全市场'),
      value: '1',
    );
    items.add(dropdownMenuItem1);
    DropdownMenuItem dropdownMenuItem2=new DropdownMenuItem(
      child:new Text('沪深300'),
      value: '2',
    );
    items.add(dropdownMenuItem2);
    DropdownMenuItem dropdownMenuItem3=new DropdownMenuItem(
      child:new Text('中证500'),
      value: '3',
    );
    items.add(dropdownMenuItem3);
    DropdownMenuItem dropdownMenuItem4=new DropdownMenuItem(
      child:new Text('中证800'),
      value: '4',
    );
    items.add(dropdownMenuItem4);
    DropdownMenuItem dropdownMenuItem5=new DropdownMenuItem(
      child:new Text('0725'),
      value: '5',
    );
    items.add(dropdownMenuItem5);
    DropdownMenuItem dropdownMenuItem6=new DropdownMenuItem(
      child:new Text('0811'),
      value: '6',
    );
    items.add(dropdownMenuItem6);
    DropdownMenuItem dropdownMenuItem7=new DropdownMenuItem(
      child:new Text('pool-0610'),
      value: '7',
    );
    items.add(dropdownMenuItem7);
    DropdownMenuItem dropdownMenuItem8=new DropdownMenuItem(
      child:new Text('pool-0910'),
      value: '8',
    );
    items.add(dropdownMenuItem8);
    DropdownMenuItem dropdownMenuItem9=new DropdownMenuItem(
      child:new Text('pool-20180513'),
      value: '9',
    );
    items.add(dropdownMenuItem9);
    DropdownMenuItem dropdownMenuItem10=new DropdownMenuItem(
      child:new Text('中小市值'),
      value: '10',
    );
    items.add(dropdownMenuItem10);
    return items;
  }

  var value;

/*  _LearnDropdownButton(){
    value=getListData()[0].value;
  }*/

  @override
  Widget build(BuildContext context) {
    return new DropdownButton(
              items: getListData(),
              hint:new Text('选股范围                                                       '),//当没有默认值的时候可以设置的提示
              value: value,//下拉菜单选择完之后显示给用户的值
              onChanged: (T){//下拉菜单item点击之后的回调
                setState(() {
                  value=T;
                });
              },
              elevation: 24,//设置阴影的高度
              style: new TextStyle(//设置文本框里面文字的样式
                color: Colors.black,
                fontSize: 14.0,
              ),
              
//              isDense: false,//减少按钮的高度。默认情况下，此按钮的高度与其菜单项的高度相同。如果isDense为true，则按钮的高度减少约一半。 这个当按钮嵌入添加的容器中时，非常有用
              iconSize: 50.0,//设置三角标icon的大小
    );
  }
}