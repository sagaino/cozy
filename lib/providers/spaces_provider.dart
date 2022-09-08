import 'dart:convert';
import 'package:find_house_app/models/space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier{
  getRecommendedSpaces() async {
    var res = await http.get(Uri.parse("https://bwa-cozy.herokuapp.com/recommended-spaces"));
    
    if(res.statusCode == 200){
      List data = jsonDecode(res.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else{
      return <Space>[];
    }
  }
}