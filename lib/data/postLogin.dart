import 'dart:convert';

import 'package:flutter/material.dart';
import '../data/token.dart';
import 'package:pro/ui/home/homePage.dart';

import 'package:http/http.dart' as http;
import '../data/LoginData.dart';


class PostLogIn{

  Future createUser(
      String username,String email,String password,BuildContext context) async {

    var response = await http.post(
        Uri.parse(
          "http://95.85.116.10:3003/api/v1/users/register",
        ),
        headers: <String, String>{
          "Content-Type": "application/json",
        },
        body: jsonEncode(<String, String>{
          "email":email,
          "username":username,
          "password":password,
        }));
    debugPrint(response.body);
    debugPrint(response.statusCode.toString());


    if (response.statusCode == 200) {

      Tooken().tokenDosyaYaz(json.decode(response.body)['token']);
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
            (Route<dynamic> route) => false,
      );
         return response.body;
    } 
    else if(response.statusCode==409){
      return ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(
            content: Text('Already has such user'),
                      ));
    }
    else {
      return response.body;
    }
  }
}

class LogInHttp{

  Future createUser(
    
      String username,String password,BuildContext context) async {

    var response = await http.post(
        Uri.parse(
          "http://95.85.116.10:3003/api/v1/users/login",
        ),
        headers: <String, String>{
          "Content-Type": "application/json",
        },
        body: jsonEncode(<String, String>{
          "username":username,
          "password":password,
        }));
    debugPrint(response.body);
    debugPrint(response.statusCode.toString());


    if (response.statusCode == 200) {

      Tooken().tokenDosyaYaz(json.decode(response.body)['token']);
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
            (Route<dynamic> route) => false,
      );
      return response.body;
    } 
    else if(response.statusCode==404){
      return ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(
            content: Text(response.body),
                      ));
    }
    else {
      return response.body;
    }
  }
}
