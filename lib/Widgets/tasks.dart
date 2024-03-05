import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tms/modals/Task_modal.dart';


class Tasks extends StatelessWidget{
  final tasklist = Tasks.generateTasks();
  Tasks({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10, crossAxisSpacing: 10), itemBuilder:(context, index)=> )
    );
  }
}


Widget buildAddTask(){
  return DottedBorder(child: Center(child: Icon(Icons.add, size: 30, coColors.grey.shade600,)), borderType: BorderType.RRect, radius: Radius.circular(10), color: Colors.grey.shade300, strokeWidth: 2, dashPattern: [10, 10])
}

Widget buildTask(BuildContext context, Tasks taskList){
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(color: taskList.bgcolor, borderRadius: BorderRadius.circular(10)),
  );
}