import 'package:flutter/material.dart';
import 'package:uitest2/sharedata.dart';
import 'package:uitest2/webapihelper.dart';

import 'newfactor4model.dart';
import 'newfactorfilter4model.dart';
import 'webapihelper.dart';

class DropdownBtnFactor extends StatefulWidget{

//true: 新建模型; false: 修改模型
  bool IsMakeNewModel=false;
  FactorOrCondition m_type = FactorOrCondition.Factor;

  DropdownBtnFactor(FactorOrCondition type){
    m_type = type;
  }

  @override
  State<StatefulWidget> createState() {
    return _DropdownBtnFactor();
  }
}
class _DropdownBtnFactor extends State<DropdownBtnFactor>{

  

  //得到系统因子列表，放在下拉列表框中
  List<DropdownMenuItem> getListData(){

    List<DropdownMenuItem> items=new List();

    String factorDesc = '';
    String factorName = '';

    DropdownMenuItem dropdownMenuItem1=new DropdownMenuItem(
        child:new Text(factorDesc),
        value: factorName,
      );
    items.add(dropdownMenuItem1);

    for(var factor in WebAPIHelper.instance.m_Cache_FactorList)
    {
      factorDesc = factor.FactorDesc + "("+factor.FactorName+")";
      factorName = factor.FactorName;
      DropdownMenuItem dropdownMenuItem1=new DropdownMenuItem(
        child:new Text(factorDesc),
        value: factorName,
      );
      items.add(dropdownMenuItem1);
    }
    
    return items;
  }

  var m_value = '';

/*  _LearnDropdownButton(){
    value=getListData()[0].value;
  }*/

  @override
  Widget build(BuildContext context) {
    
    Widget parent = null;
    if (widget.m_type == FactorOrCondition.Factor){
      parent = context.ancestorWidgetOfExactType(NewFactor4Model);
      widget.IsMakeNewModel = (parent as NewFactor4Model).m_IsMakeNewModel; 
    }
    else{
      parent = context.ancestorWidgetOfExactType(NewFactorFilter4Model);
      widget.IsMakeNewModel = (parent as NewFactorFilter4Model).m_IsMakeNewModel; 
    }

    return new DropdownButton(
              items: getListData(),
              hint:new Text('因子'),//当没有默认值的时候可以设置的提示
              value: m_value,//下拉菜单选择完之后显示给用户的值
              onChanged: (T){//下拉菜单item点击之后的回调
                setState(() {
                  m_value=T;

                  if (widget.IsMakeNewModel){
                    if (widget.m_type == FactorOrCondition.Factor){
                      SharedData.instance.GetNewFactor4NewModel().FactorName = m_value;
                      SharedData.instance.GetNewFactor4NewModel().FactorDesc = 
                        WebAPIHelper.instance.GetFactorInfoByName(m_value).FactorDesc;  
                    }
                    else{
                      SharedData.instance.GetNewCondition4NewModel().CondName = m_value;
                    }
                  }

                });
              },
              elevation: 24,//设置阴影的高度
              style: new TextStyle(//设置文本框里面文字的样式
                color: Colors.black,
                fontSize: 14.0,
              ),
              
//              isDense: false,//减少按钮的高度。默认情况下，此按钮的高度与其菜单项的高度相同。如果isDense为true，则按钮的高度减少约一半。 这个当按钮嵌入添加的容器中时，非常有用
              iconSize: 50.0,//设置三角标icon的大小
              isExpanded: true,
    );
  }
}