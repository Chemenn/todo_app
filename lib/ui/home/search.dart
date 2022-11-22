import 'package:flutter/material.dart';
import '../../color/colors.dart' as appColors;

search(BuildContext context) {
  //int max = 5;
  return Container(
    height: 55,
    padding: EdgeInsets.only(top: 12, left: 17, right: 17),
    child: TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor:appColors.textFieldColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Icon(
            Icons.search,
            size: 30,
          ),
        ),
        hintText: "Search",
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(91, 91, 91, 1),
        ),
      ),
    ),
  );
}
