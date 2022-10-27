import 'package:flutter/material.dart';
import '../../color/colors.dart' as appColors;



showAlertDialog(BuildContext context) {
    double maxlines=2;

   // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    insetPadding: EdgeInsets.symmetric(horizontal: 0),
    contentPadding: EdgeInsets.all(0),
    shape:RoundedRectangleBorder(
  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
),
    alignment: Alignment.bottomCenter,
    title:Column(
      children: [
        Container(
          height: 3,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: appColors.iconColor,
          ),
        ),
        SizedBox(height: 20),
        Container(
          width:MediaQuery.of(context).size.width*0.9,
          height:25* maxlines,
          child: TextField(
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: "Group Names",
              hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
              filled: true,
              fillColor: appColors.textFieldColor,
              focusColor: appColors.textFieldColor,
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appColors.primaryColor),
             ),
             border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
             ),
            ),
            ),
          ),
          SizedBox(height: 30),
        Container(
          padding: EdgeInsets.only(),
          width:MediaQuery.of(context).size.width*0.9,
          height: 50,
          child: ElevatedButton(
            onPressed: (){}, 
          child: Text("Create group",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),
        ),
      ],
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}