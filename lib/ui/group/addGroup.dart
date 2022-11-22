
import 'package:flutter/material.dart';
import 'package:pro/models/listModel.dart';
import '../../color/colors.dart' as appColors;


class AddGroup extends StatefulWidget {
  List<Groups>? groupName;
  AddGroup({super.key,
  this.groupName,
  });

  @override
  State<AddGroup> createState() => _AddGroupState();
}

class _AddGroupState extends State<AddGroup> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
          mainAxisSpacing: 20,
          childAspectRatio: 2), 
          itemCount: 4,//widget.groupName!.length,
        itemBuilder: (context,index){
          return singleGroup(index);
        }
    );
  }
singleGroup(int index){
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    //child: Text(widget.groupName![index].name.toString()),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("work",style: TextStyle(fontSize: 14),),
        Text("12 task - 4 completed",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: appColors.textColor),),
        LinearProgressIndicator(
          value: 0.4,
          backgroundColor: Colors.white,
          color: Colors.blue,
          minHeight: 8,
          ),
      ],
    ),
  );
}

}