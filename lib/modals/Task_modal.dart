import 'package:flutter/material.dart';
import 'package:tms/Widgets/constatant.dart';

class Task{
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  num? done;
  bool isLast;


  Task({this.icon, this.title, this.bgcolor, this.iconcolor, this.btncolor, this.left, this.done, this.isLast = false});
  static List<Task> generateTasks(){
    return[
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: false,
      )
    ];
  }
}

