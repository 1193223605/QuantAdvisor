import 'FactorFilterList.dart';
import 'entityclass.dart';
import 'entityclass.dart';
import 'entityclass.dart';
import 'entityclass.dart';

class SharedData {
  // 工厂模式
  factory SharedData() =>_getInstance();
  static SharedData get instance => _getInstance();
  static SharedData _instance;
  SharedData._internal() {
    // 初始化
  }
  static SharedData _getInstance() {
    if (_instance == null) {
      _instance = new SharedData._internal();
    }
    return _instance;
  }

  //新建因子的权重
  List<FactorInModel> FactorList4NewModel = new List();
  //true: Save;  false: cancel
  bool SaveOrCancelAction = false;

  void ClearNewFactorData(){
    FactorList4NewModel.clear();
    SaveOrCancelAction = false;
  }

  void AddNewFactor4NewModel(){
    FactorList4NewModel.add(new FactorInModel());
  }

  FactorInModel GetNewFactor4NewModel(){
    return FactorList4NewModel[FactorList4NewModel.length-1];
  }
}