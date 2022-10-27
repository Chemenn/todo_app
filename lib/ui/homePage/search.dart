import 'package:flutter/material.dart';
import '../../color/colors.dart' as appColors;


search(BuildContext context){
  return Container(
    margin: EdgeInsets.only(left: 26,right: 24,top: 10),
    height: 45,
    width: double.infinity,
    child:  TextField(
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: "Group Names",
              hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
              filled: true,
              fillColor: appColors.textFieldColor,
              focusColor: appColors.textFieldColor,
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColors.primaryColor),
              borderRadius: BorderRadius.circular(10),
             ),
             border:OutlineInputBorder(
              borderSide: BorderSide(color:Colors.transparent),
              borderRadius: BorderRadius.circular(10),
             ), 
            ),
            ),
  );
}