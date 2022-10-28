import 'package:flutter/material.dart';
import 'package:pro/ui/homePage/MyFloatingButton.dart';
import 'package:pro/ui/homePage/TextStyle.dart';
import 'package:pro/ui/group/createGroup.dart';
import 'package:pro/ui/homePage/search.dart';
import '../../color/colors.dart' as appColors;


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar(),
      body:SingleChildScrollView(
        child: Stack(
          children: [
            Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              search(context),
              Image.asset("assets/home.png",width: MediaQuery.of(context).size.width,),
              Image.asset("assets/arrow.png",),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text("Create a group"),
              ),
            ],
                  ),
          Positioned(
            right: 40,bottom: 0,
                child: FloatingActionButton(
                    elevation: 0.5,
                    foregroundColor: Colors.white,
                    child:Text("+",style: TextStyle(fontSize: 30),),
                    onPressed: (){
                      setState(() {
                        showAlertDialog(context);
                  });
                }
              ),
            ),
          ]
        ),
      ),
    );
  }

  appBar(){
    return AppBar(
      backgroundColor:appColors.primaryColor,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Lists",style: titleStyle(),),
          CircleAvatar(radius: 20,
        child: Icon(Icons.person,size: 40,),)
        ],
      ),
    );
    }
}