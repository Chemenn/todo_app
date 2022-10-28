import 'package:flutter/material.dart';
import '../../color/colors.dart' as appColors;

search(BuildContext context) {
  int max = 5;
  return Container(
    height: max * 15,
    padding: EdgeInsets.only(top: 20, bottom: 5, left: 17, right: 17),
    child: TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(246, 246, 246, 1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 20, right: 29),
          child: Icon(
            Icons.search,
            size: 35,
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
