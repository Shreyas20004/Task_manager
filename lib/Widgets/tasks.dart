import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tms/Widgets/constatant.dart';
import 'package:tms/modals/Task_modal.dart';

class Tasks extends StatelessWidget {
  final tasklist = Task.generateTasks();
  Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) => tasklist[index].isLast
              ? buildAddTask()
              : buildTask(context, tasklist[index]),
          itemCount: tasklist.length),
    );
  }
}

Widget buildAddTask() {
  return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(10),
      color: Colors.grey.shade300,
      strokeWidth: 2,
      dashPattern: const [10, 10],
      child: Center(
          child: Icon(
        Icons.add,
        size: 30,
        color: Colors.grey.shade600,
      )));
}

Widget buildTask(
  BuildContext context,
  Task taskList,
) {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
        color: taskList.bgcolor, borderRadius: BorderRadius.circular(10)),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          taskList.icon,
          color: taskList.iconcolor,
          size: 30,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          taskList.title.toString(),
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Row(
          children: [
            buildTaskStatus(Colors.white54, taskList.btncolor, '${taskList.left} left'),
            SizedBox(
              width: 5,
            ),
            buildTaskStatus(kwhite, taskList.iconcolor, '${taskList.done} done'),
          ],
        ),
      ],
    ),
  );
}

Widget buildTaskStatus(Color bgcolor,Color txtColor, String txt){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      color: bgcolor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      txt,
      style: TextStyle(
        color: txtColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
