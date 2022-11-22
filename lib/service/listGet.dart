import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pro/models/listModel.dart';
import '../data/token.dart';
import 'package:http/http.dart' as http;


class ListGet{
String token="";
  Future<List<Groups>> createGroup(
      ) async {
await Tooken().tokenDosyaOku().then((value) {
token=value;
});
debugPrint(token+"dsdsd");
    var response = await http.get(
        Uri.parse(
          "http://95.85.116.10:3003/api/v1/lists",
        ),
        headers: <String, String>{
          "Content-Type": "application/json",
           
           'Authorization': 'Bearer $token',
        },
        );
    debugPrint(response.body);
    debugPrint(response.statusCode.toString());
 List responseJson = json.decode(response.body);
var posts =  responseJson.map(
          (item) => Groups.fromJson(item),
        )
        .toList();

    if (response.statusCode == 200) {
    
         return posts;
    } 
    else if(response.statusCode==409){
      return posts;
    }
    else {
      return posts;
    }
  }
}

