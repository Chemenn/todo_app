import 'package:flutter/material.dart';
import 'package:pro/models/listModel.dart';
import 'package:pro/service/listGet.dart';
import 'package:pro/ui/group/addGroup.dart';
import 'package:pro/ui/home/TextStyle.dart';
import 'package:pro/ui/home/firstPage.dart';
import 'package:pro/ui/home/search.dart';
import '../../color/colors.dart' as appColors;
import '../group/createGroup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Groups>> gruop;
  @override
  void initState() {
    // TODO: implement initState
    gruop = ListGet().createGroup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,"Lists"),
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
              showAlertDialog(context);
            });
          }),
      body: FutureBuilder(
        future: ListGet().createGroup(),
        builder: (BuildContext context, AsyncSnapshot<List<Groups>> snapshot) {
          debugPrint(snapshot.toString());
          if (snapshot.hasData) {
            return snapshot.data!.length == 0
                ? FirstPage()
                : AddGroup(
                    groupName: snapshot.data,
                  );
          } else {
            return Center(child: Text("you do not have task yet"),
            // CircularProgressIndicator(
            //   color: appColors.floatingActionButton,
            //   strokeWidth: 8,
            // )
            );
          }
        },
      ),
    );
  }
}

  appBar(BuildContext context,String title) {
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.16,
      backgroundColor: appColors.primaryColor,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: titleStyle(),
              ),
              CircleAvatar(
                radius: 15,
                child: Icon(
                  Icons.person,
                  size: 30,
                ),
              )
            ],
          ),
          search(context),
        ],
      ),
    );
  }

