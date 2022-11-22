import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.8,
      child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //search(context),
                  Image.asset("assets/home.png",width: MediaQuery.of(context).size.width,),
                  Image.asset("assets/arrow.png",),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text("Create a group"),
                  ),
                ],
               ),
              ]
            ),
          ),
    );
  }
}