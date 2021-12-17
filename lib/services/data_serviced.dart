import 'dart:convert';

import 'package:flutter_cubit/model/data_modle.dart';
import 'package:http/http.dart' as http;

class DataServices {
  String baseUrl = "http://mark.bslmeiyu.com/api";
  Future<List<DataModle>> getInfo() async {
    var apiUrl = '/getplaces';
    http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));
    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        print(list);
        return list.map((e) => DataModle.fromJsaon(e)).toList();
      } else {
        return <DataModle>[];
      }
    } catch (e) {
      print(e);
      return <DataModle>[];
    }
  }
}
