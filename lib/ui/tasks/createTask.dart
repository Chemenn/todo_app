import 'package:flutter/material.dart';
import 'package:pro/ui/home/homePage.dart';
import '../../color/colors.dart' as appColors;

showAlertDialogTask(BuildContext context) {
  double maxlines = 2;
  TextEditingController _taskName=TextEditingController();
  TextEditingController _discription=TextEditingController();
  TextEditingController _priority=TextEditingController();
  

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    insetPadding: EdgeInsets.symmetric(horizontal: 0),
    contentPadding: EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
    ),
    alignment: Alignment.bottomCenter,
    title: Column(
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
          width: MediaQuery.of(context).size.width * 0.9,
          height: 25 * maxlines,
          child: TextField(
            controller: _taskName,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: "Task Title",
              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              filled: true,
              fillColor: appColors.groupTextField,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
         Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 25 * maxlines,
          child: TextField(
            controller: _discription,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: "Discription",
              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              filled: true,
              fillColor: appColors.groupTextField,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
         Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 25 * maxlines,
          child: TextField(
            controller: _priority,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: "Priority",
              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              filled: true,
              fillColor: appColors.groupTextField,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Container(
          padding: EdgeInsets.only(),
          width: MediaQuery.of(context).size.width * 0.9,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                //PostList().createGroup(_groupName.text, context);
                //Navigator.push(context, MaterialPageRoute(builder: (context) => (HomePage())));
              },
              child: Text(
                "Add Task",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )),
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
