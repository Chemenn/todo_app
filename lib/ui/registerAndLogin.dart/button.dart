import 'package:flutter/material.dart';
import '../../color/colors.dart' as appColors;


class Button extends StatelessWidget {
  String? text;
  Button({super.key,
  this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20, left: 30, right: 30),
      height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: appColors.buttonColor,
      ),
      child: Text(
        text!,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }
  }
  
