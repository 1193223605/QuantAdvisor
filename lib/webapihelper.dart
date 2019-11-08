import 'dart:convert';
import 'dart:io';

import 'entityclass.dart';

class WebAPIHelper {
  // 工厂模式
  factory WebAPIHelper() =>_getInstance();
  static WebAPIHelper get instance => _getInstance();
  static WebAPIHelper _instance;
  WebAPIHelper._internal() {
    // 初始化
  }
  static WebAPIHelper _getInstance() {
    if (_instance == null) {
      _instance = new WebAPIHelper._internal();
    }
    return _instance;
  }

  final _url_GetModelList = 'http://47.102.210.159:3939/ListModel';
  final _url_GetIndustryList = 'http://47.102.210.159:3939/ListIndustry';

  List<ModelInfo> m_Cache_ModelList = new List();
  List<String> m_Cache_IndustryList = new List();

  //得到模型列表
  Future<List<ModelInfo>> GetModelList() async {
    
    var httpClient = new HttpClient();

    List<ModelInfo> list = new List<ModelInfo>();

    String result;

    try {
      var request = await httpClient.getUrl(Uri.parse(_url_GetModelList));
      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        //result = data['origin'];

        for (var item in data) {
          
            ModelInfo m = new ModelInfo();
            m.ModelName = item['ModelName'];
            m.ModelDesc = item['ModelDesc'];
            m.NumStock = item['NumStock'];
            m.WgtMethod = item['WgtMethod'];
            m.IndustryList = item['IndustryList'];
            m.FacProcess = item['FacProcess'];
            m.CYBWeight = item['CYBWeight'];
            m.DefaultInterval = item['DefaultInterval'];
            m.DefaultHedgeIndex = item['DefaultHedgeIndex'];
            m.StockRange = item['StockRange'];

            list.add(m);
        }

      } else {
        result =
            'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }

    m_Cache_ModelList = list;
    return list;

  }

  //按照 ModelName找 ModelInfo
  ModelInfo GetModelInfoByName(String modelName){

    for (var model in m_Cache_ModelList) {
      if (model.ModelName == modelName){
        return model;
      }
    }
    
    return null;
  }

  //得到行业列表
  Future<List<String>> GetIndustryList() async {
    
    var httpClient = new HttpClient();

    List<String> list = new List();

    String result;

    try {
      var request = await httpClient.getUrl(Uri.parse(_url_GetIndustryList));
      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        //result = data['origin'];

        for (var item in data) {
          
            list.add(item);
        }

      } else {
        result =
            'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }

    m_Cache_IndustryList = list;
    return list;

  }

}