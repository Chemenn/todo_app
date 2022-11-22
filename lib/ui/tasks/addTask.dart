import 'package:flutter/material.dart';
import 'package:pro/ui/home/homePage.dart';
import 'package:pro/ui/tasks/createTask.dart';
import '../../color/colors.dart' as appColors;


class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBar(context,"work"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 0.5,
          foregroundColor: Colors.white,
          backgroundColor: appColors.floatingActionButton,
          child: Text(
            "+",
            style: TextStyle(fontSize: 30),
          ),
           onPressed: () {
            setState(() {
              showAlertDialogTask(context);
            });
          }),
      body: Container(
        height: MediaQuery.of(context).size.height*0.8,
        child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Text("work",style: TextStyle(fontSize: 14),),
                    Text("12 task - 4 completed",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: appColors.textColor),),
                    // search(context),
                    Image.asset("assets/home.png",width: MediaQuery.of(context).size.width,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text("What do you want to do?",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: appColors.tapColor),),
                    ),
                    Text("Tap + to add your tasks",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: appColors.tapColor),),
                  ],
                 ),
                ]
              ),
            ),
      ),
    );
  }
}