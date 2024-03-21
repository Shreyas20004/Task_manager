import 'package:flutter/material.dart';
import 'package:tms/Widgets/constant.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  num? done;
  bool isLast;

  Task(
      {this.icon,
      this.title,
      this.bgcolor,
      this.iconcolor,
      this.btncolor,
      this.left,
      this.done,
      this.isLast = false});
  static List<Task> generateTasks() {
    return [
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
        icon: Icons.favorite_rounded,
        title: 'Health',
        bgcolor: kRedLight,
        iconcolor: kRedDark,
        btncolor: kRed,
        left: 2,
        done: 6,
        isLast: false,
      ),
      Task(
        icon: Icons.work,
        title: 'Work',
        bgcolor: kYellowLight,
        iconcolor: kYellowDark,
        btncolor: kYellow,
        left: 1,
        done: 4,
        isLast: true,
      ),
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: true,
      ),
    ];
  }
}
