import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function onPressed;
  const MyButton({super.key,
  required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0.5,
      foregroundColor: Colors.white,
      onPressed: onPressed(),
      child: Text("-",style: TextStyle(
      ),),);
  }
}