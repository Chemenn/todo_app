// import 'dart:convert';
// import 'package:flutter/material.dart';
// import '../data/token.dart';
// import 'package:pro/ui/home/homePage.dart';
// import 'package:http/http.dart' as http;


// class PostList{
// String token="";
//   Future createGroup(
//       String name,BuildContext context) async {
// await Tooken().tokenDosyaOku().then((value) {
// token=value;
// });
// debugPrint(token+"dsdsd");
//     var response = await http.post(
//         Uri.parse(
//           "http://95.85.116.10:3003/api/v1/lists",
//         ),
//         headers: <String, String>{
//           "Content-Type": "application/json",
           
//            'Authorization': 'Bearer $token',
//         },
//         body: jsonEncode(<String, String>{
//           "name":name,
//         }));
//     debugPrint(response.body);
//     debugPrint(response.statusCode.toString());


//     if (response.statusCode == 200) {

//       Navigator.pushAndRemoveUntil(
//         context,
//         MaterialPageRoute(builder: (context) => HomePage()),
//             (Route<dynamic> route) => false,
//       );
//          return response.body;
//     } 
//     // else {
//     //   return response.body;
//     // }
//   }
// }

